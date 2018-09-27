package us.singhlovepreet.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import us.singhlovepreet.Dao.LoginDao;
import us.singhlovepreet.Dao.VehicleDao;
import us.singhlovepreet.model.Login;

@Service
@Transactional
public class LoginService
{
	@Autowired
	LoginDao lgdao;

	
	public LoginService(LoginDao lgdao)
	{
		this.lgdao=lgdao;
	}
	
	public List<Login> getall()
	{
		return  (List<Login>) lgdao.findAll();
	}
	
	
	public Login getbyid(Integer id)
	{
		return  lgdao.findById(id).get();
	}
	
	
	public Login getbyusername(String name)
	{
		return lgdao.findByName(name);
	}
}


