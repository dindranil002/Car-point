package com.DAO;

import java.util.List;

import com.entity.CarDtls;
import com.entity.booking;

public interface CarDAO {
	public boolean addCars(CarDtls c);
	
	public List<CarDtls>  getAllCars();
	public CarDtls getBookById(int id);
	public boolean updateEditCars(CarDtls c);
	public boolean deleteCars(int id);
	
	public List<CarDtls> getporscheCar();
	
	public List<CarDtls> getaudiCar();
	
	public List<CarDtls> getmahindraCar();
	
	public List<CarDtls> getbmwCar();
	
	public List<CarDtls> getmgCar();
	
	public List<CarDtls> getjaguarCar();
	
    public boolean bookcar(booking d);
	
	public List<booking>  getAllorders();
	public CarDtls getCarsById(int id);
	
}
