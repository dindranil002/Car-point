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
import com.entity.booking;
@WebServlet("/booking")
public class carsbook extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String userName=req.getParameter("userName");
			String userEmail=req.getParameter("userEmail");
			String userMobile=req.getParameter("userMobile");
			String userAddress=req.getParameter("userAddress");
			String userStartDate=req.getParameter("userStartDate");
			String userReturnDate=req.getParameter("userReturnDate");
			String userAmount=req.getParameter("userAmount");
			String carModel=req.getParameter("carModel");
			/*Part part=req.getPart("carImage");
			String fileName=part.getSubmittedFileName();*/
			
			booking d = new booking(userName,userEmail,userMobile,userAddress,userStartDate,userReturnDate,userAmount,carModel);
			
			CarDAOImpl dao= new CarDAOImpl(DBConnect.getConn());
			boolean f=dao.bookcar(d);
			HttpSession session=req.getSession();
			if (f) {			
				session.setAttribute("succMsg", "Car added successfully");
				resp.sendRedirect("index.jsp");
				
			} else {
				session.setAttribute("failedMsg", "something wrong on server");
				resp.sendRedirect("booking.jsp");

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
