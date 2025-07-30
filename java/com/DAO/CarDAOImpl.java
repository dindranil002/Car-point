package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;

import com.entity.CarDtls;
import com.entity.booking;

public class CarDAOImpl implements CarDAO{
	
	private Connection conn;
	

	public CarDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}


	@Override
	public boolean addCars(CarDtls c) {
		boolean f=false;
		try {
			String sql="insert into car_dtls(carName,model,specification,price,status,photo,user_email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, c.getCarName());
			ps.setString(2, c.getModel());
			ps.setString(3, c.getSpecification());
			ps.setString(4, c.getPrice());
			ps.setString(5, c.getStatus());
			ps.setString(6, c.getPhotoName());
			ps.setString(7, c.getUser_email());
			
			int i= ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		    
		}
		return f;
	}


	@Override
	public List<CarDtls> getAllCars() {
		
		List<CarDtls> list =new ArrayList<CarDtls>();
		CarDtls c=null;
		
		try {
			String sql="select * from car_dtls";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				c=new CarDtls();
				c.setCarId(rs.getInt(1));
				c.setCarName(rs.getString(2));
				c.setModel(rs.getString(3));
				c.setSpecification(rs.getString(4));
				c.setPrice(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setUser_email(rs.getString(8));
				list.add(c);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}


	public CarDtls getBookById(int id) {
		CarDtls c=null;
		
		try {
			String sql =("select * from car_dtls where carId=?");
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				c=new CarDtls();
				c.setCarId(rs.getInt(1));
				c.setCarName(rs.getString(2));
				c.setModel(rs.getString(3));
				c.setSpecification(rs.getString(4));
				c.setPrice(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setUser_email(rs.getString(8));
				
			}
			
			
		} catch (Exception e) {
			
		}
		
		return c;
	}


	
	public boolean updateEditCars(CarDtls c) {
		
		boolean f=false;
		
		try {
			String sql="update car_dtls set carName=?,model=?,specification=?,price=?,status=? where carId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, c.getCarName());
			ps.setString(2, c.getModel());
			ps.setString(3, c.getSpecification());
			ps.setString(4, c.getPrice());
			ps.setString(5, c.getStatus());
			ps.setInt(6, c.getCarId());
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}


	@Override
	public boolean deleteCars(int id) {
		boolean f=false;
				try {
					String sql ="delete from car_dtls where carId=?";
					PreparedStatement ps=conn.prepareStatement(sql);
					ps.setInt(1, id);
					int i=ps.executeUpdate();
					if(i==1)
					{
						f=true;
					}
							
					
				} catch (Exception e) {
					 e.printStackTrace();
				}
				
			return f;
	}


	@Override
	public List<CarDtls> getporscheCar() {
		List<CarDtls> list=new ArrayList<CarDtls>();
		CarDtls c=null;
        try {
        	String sql="select * from car_dtls  where carName=? and status=?";
        	PreparedStatement ps=conn.prepareStatement(sql);
        	ps.setString(1, "porsche");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			while (rs.next())
			{
				c= new CarDtls();
				c.setCarId(rs.getInt(1));
				c.setCarName(rs.getString(2));
				c.setModel(rs.getString(3));
				c.setSpecification(rs.getString(4));
				c.setPrice(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setUser_email(rs.getString(8));
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}


	@Override
	public List<CarDtls> getaudiCar() {
		List<CarDtls> list=new ArrayList<CarDtls>();
		CarDtls c=null;
        try {
        	String sql="select * from car_dtls where carName=? and status=?";
        	PreparedStatement ps=conn.prepareStatement(sql);
        	ps.setString(1, "Audi");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			while (rs.next())
			{
				c= new CarDtls();
				c.setCarId(rs.getInt(1));
				c.setCarName(rs.getString(2));
				c.setModel(rs.getString(3));
				c.setSpecification(rs.getString(4));
				c.setPrice(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setUser_email(rs.getString(8));
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
				return list;
	}


	@Override
	public List<CarDtls> getmahindraCar() {
		
		List<CarDtls> list=new ArrayList<CarDtls>();
		CarDtls c=null;
        try {
        	String sql="select * from car_dtls where carName=? and status=?";
        	PreparedStatement ps=conn.prepareStatement(sql);
        	ps.setString(1, "Mahindra");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			while (rs.next())
			{
				c= new CarDtls();
				c.setCarId(rs.getInt(1));
				c.setCarName(rs.getString(2));
				c.setModel(rs.getString(3));
				c.setSpecification(rs.getString(4));
				c.setPrice(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setUser_email(rs.getString(8));
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public List<CarDtls> getbmwCar() {
		List<CarDtls> list=new ArrayList<CarDtls>();
		CarDtls c=null;
        try {
        	String sql="select * from car_dtls where carName=? and status=?";
        	PreparedStatement ps=conn.prepareStatement(sql);
        	ps.setString(1, "BMW");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			while (rs.next())
			{
				c= new CarDtls();
				c.setCarId(rs.getInt(1));
				c.setCarName(rs.getString(2));
				c.setModel(rs.getString(3));
				c.setSpecification(rs.getString(4));
				c.setPrice(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setUser_email(rs.getString(8));
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
				return list;
	}


	@Override
	public List<CarDtls> getmgCar() {
		List<CarDtls> list=new ArrayList<CarDtls>();
		CarDtls c=null;
        try {
        	String sql="select * from car_dtls where carName=? and status=?";
        	PreparedStatement ps=conn.prepareStatement(sql);
        	ps.setString(1, "MG");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			while (rs.next())
			{
				c= new CarDtls();
				c.setCarId(rs.getInt(1));
				c.setCarName(rs.getString(2));
				c.setModel(rs.getString(3));
				c.setSpecification(rs.getString(4));
				c.setPrice(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setUser_email(rs.getString(8));
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		return list;
	}


	@Override
	public List<CarDtls> getjaguarCar() {
		List<CarDtls> list=new ArrayList<CarDtls>();
		CarDtls c=null;
        try {
        	String sql="select * from car_dtls where carName=? and status=?";
        	PreparedStatement ps=conn.prepareStatement(sql);
        	ps.setString(1, "Jaguar");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			while (rs.next())
			{
				c= new CarDtls();
				c.setCarId(rs.getInt(1));
				c.setCarName(rs.getString(2));
				c.setModel(rs.getString(3));
				c.setSpecification(rs.getString(4));
				c.setPrice(rs.getString(5));
				c.setStatus(rs.getString(6));
				c.setPhotoName(rs.getString(7));
				c.setUser_email(rs.getString(8));
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
			return list;
	}
	
	@Override
	public boolean bookcar(booking d) {
		boolean f=false;
		try {
			String sql="insert into user_booking(userId,userName,userEmail,userMobile,userAddress,userStartDate,userReturnDate,userAmount,carModel) values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, d.getuserId());
			ps.setString(2, d.getuserName());
			ps.setString(3, d.getuserEmail());
			ps.setString(4, d.getuserMobile());
			ps.setString(5, d.getuserAddress());
			ps.setString(6, d.getuserStartDate());
			ps.setString(7, d.getuserReturnDate());
			ps.setString(8, d.getuserAmount());
			ps.setString(9, d.getcarModel());
			
			int i= ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	@Override
	public List<booking> getAllorders() {
		
		List<booking> list =new ArrayList<booking>();
		booking d=null;
		
		try {
			String sql="select * from user_booking";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				d=new booking();
				d.setuserId(rs.getInt(1));
				d.setuserName(rs.getString(2));
				d.setuserEmail(rs.getString(3));
				d.setuserMobile(rs.getString(4));
				d.setuserAddress(rs.getString(5));
				d.setuserStartDate(rs.getString(6));
				d.setuserReturnDate(rs.getString(7));
				d.setuserAmount(rs.getString(8));
				d.setcarModel(rs.getString(9));
				list.add(d);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}


	
	@Override
	public CarDtls getCarsById(int id) {
		CarDtls c=null;
		try {
			String sql =("select * from car_dtls where carId=?");
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				c=new CarDtls();
				c.setCarId(rs.getInt(1));
				c.setModel(rs.getString(3));
				c.setPrice(rs.getString(4));
				
			}
			
			
		} catch (Exception e) {
			
		}
		
		return c;
	}
	
}
