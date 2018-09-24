package us.singhlovepreet.Controller;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import us.singhlovepreet.Dao.CountryDao;
import us.singhlovepreet.model.PersonForm;
import us.singhlovepreet.model.Trailer;
import us.singhlovepreet.model.Vehicle;
import us.singhlovepreet.model.Vehicle_Trailer;
import us.singhlovepreet.service.TrailerService;
import us.singhlovepreet.service.VehicleService;


@Controller
public class ApplicationController 
{
	@Autowired
	TrailerService trailerservice;
	
	@Autowired
	VehicleService vehicleservice;
	
	@RequestMapping("/home")
	public String gethome(Model model)
	{
		List<Trailer> list=trailerservice.getall();	
		List<Vehicle> vlist=vehicleservice.getallVehicle();
		
		model.addAttribute("country", list);
		model.addAttribute("result", vlist);
		return "Home";
	}

	
	@RequestMapping("/admin")
	public String getadmin(@RequestParam("id") int id)
	{
		
		System.out.println("Value of attribute is "+id);
//		
//	model.addAttribute("value",request.getAttribute("country"));
		return "adminview";
	}

	
	
	
//	@GetMapping("/login")
//	public String authenticate(@RequestBody Login log)
//	{
//		
//	
//		
//		
////		String client_username=login.getU_name();
////		String client_password=login.getU_password();
////		
////		if(login.getU_name().equals(client_username)&& login.getU_password().equals(client_password))
////		{
////			return "adminview";
////		}
////		
////		else return "Home";
//		
//	}

}
