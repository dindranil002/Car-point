package org.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class reg
 */
@WebServlet("/register")
public class reg extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String umobile = request.getParameter("contact");
		String upwd = request.getParameter("pass");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
	    Connection con = null;
	    try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cars","root","indra123");
	    	PreparedStatement pst = con.prepareStatement("insert into user (uname,uemail,umobile,upwd) values(?,?,?,?) ");
	    	pst.setString(1,  uname);
	    	pst.setString(2,  uemail);
	    	pst.setString(3,  umobile);
	    	pst.setString(4,  upwd);
	    	int rowCount =  pst.executeUpdate();
	    	dispatcher = request.getRequestDispatcher("index.jsp");
	    	if(rowCount > 0){
	    		request.setAttribute("status","success");
	    	}
	    	else {
	    		request.setAttribute("status","failed");
	    	}
	    	dispatcher.forward(request, response);
	    	
	    	
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }finally {
	    	try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    }
}
}


