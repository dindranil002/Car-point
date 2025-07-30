package com.admin.servlet;
import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.CarDAOImpl;
import com.DB.DBConnect;
import com.entity.CarDtls;
@WebServlet("/add_cars")
@MultipartConfig
public class CarsAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String carName=req.getParameter("carMake");
			String model=req.getParameter("model");
			String specification=req.getParameter("specification");
			String price=req.getParameter("price");
			String status=req.getParameter("carstatus");
			Part part=req.getPart("carImage");
			String fileName=part.getSubmittedFileName();
			
			CarDtls c = new CarDtls(carName,model,specification,price,status,fileName,"admin");
			
			CarDAOImpl dao= new CarDAOImpl(DBConnect.getConn());
			String path = getServletContext().getRealPath("") + "img";
			File file =new File(path);
			part.write(path + File.separator + fileName);	
			boolean f=dao.addCars(c);
			HttpSession session=req.getSession();
			if (f) {			
				session.setAttribute("succMsg", "Car added successfully");
				resp.sendRedirect("add_cars.jsp");
				
			} else {
				session.setAttribute("failedMsg", "something wrong on server");
				resp.sendRedirect("add_cars.jsp");

			}
		
		} catch(Exception e) {
			e.printStackTrace();
	    }
	}
}
