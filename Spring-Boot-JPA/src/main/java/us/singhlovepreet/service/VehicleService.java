package us.singhlovepreet.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import us.singhlovepreet.Dao.VehicleDao;
import us.singhlovepreet.model.Vehicle;

@Service
@Transactional
public class VehicleService 
{
	@Autowired
	VehicleDao dao;
	
	
	public VehicleService(VehicleDao dao)
	{
		this.dao=dao;
		
	}
	
	
	
	public Vehicle getvehcilebyname(String name) 
	{
		
	return	dao.findByModel(name);
		
	}
	
	public Vehicle getvehicle(Integer id)
	{
		
		return dao.findById(id).get();
		
	}
	
	
	public List<Vehicle> getallVehicle()
	{
		List<Vehicle> result=new ArrayList<Vehicle>();
		
		for(Vehicle vehicle:dao.findAll())
		{
			result.add(vehicle);
		}
		
		return result;
	}
	
	public void saveVehicle(Vehicle v)
	{
		dao.save(v);
		
	}
	
	
	public void deletevehicle(int id)
	{
	
		dao.deleteById(id);
	}
	
	
	
	
}
