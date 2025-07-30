package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CarDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete")

public class CarsDeleteServlet extends HttpServlet {

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			
			CarDAOImpl dao=new CarDAOImpl(DBConnect.getConn());
			boolean f=dao.deleteCars(id);
			HttpSession session=req.getSession();
			if(f)
			{
				session.setAttribute("succMsg", "Car Deleted Successfully..");
				resp.sendRedirect("all_cars.jsp");
			}
			else {
				session.setAttribute("failedMsg", "Something went wrong on server...");
				resp.sendRedirect("all_cars.jsp");
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
