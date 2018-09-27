package us.singhlovepreet.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import us.singhlovepreet.Dao.TrailerDao;
import us.singhlovepreet.model.Trailer;

@Service
@Transactional
public class TrailerService
{

	
	@Autowired
	TrailerDao tdao;
	
	public  TrailerService(TrailerDao tdao) 
	{
		this.tdao=tdao;
	}
	
	
	public Trailer getTrailerByName(String name)
	{
		return	tdao.findByModel(name);
	}
	
	public Trailer getbyid(int id)
	{
		return tdao.findById(id).get();
		
		
	}
	
	
	public List<Trailer> getall()
	{
		return tdao.findAll();
		
		
	}
	
	public void save(Trailer tr)
	{
		tdao.save(tr);
	}
	

}
