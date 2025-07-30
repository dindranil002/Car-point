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
import com.entity.CarDtls;

@WebServlet("/edit_cars")

public class EditCarsServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String carName=req.getParameter("carMake");
			String model=req.getParameter("model");
			String specification=req.getParameter("specification");
			String price=req.getParameter("price");
			String status=req.getParameter("carstatus");
			CarDtls c=new CarDtls();
			c.setCarId(id);
			c.setCarName(carName);
			c.setModel(model);
			c.setSpecification(specification);
			c.setPrice(price);
			c.setStatus(status);
			
			CarDAOImpl dao= new CarDAOImpl(DBConnect.getConn());
			boolean f=dao.updateEditCars(c);
			HttpSession session=req.getSession();
			if(f)
			{
				session.setAttribute("succMsg", "Car Update Successfully..");
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
