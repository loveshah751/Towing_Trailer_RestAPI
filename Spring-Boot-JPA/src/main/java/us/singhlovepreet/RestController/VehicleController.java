package us.singhlovepreet.RestController;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import us.singhlovepreet.model.Login;
import us.singhlovepreet.model.Response;
import us.singhlovepreet.model.Vehicle;
import us.singhlovepreet.service.LoginService;
import us.singhlovepreet.service.VehicleService;

@RestController
@RequestMapping("/api/vehicle")
public class VehicleController
{
	
	@Autowired
	private VehicleService ser;
	
	

	@GetMapping("/{id}")
	public Response getvehiclebyid(@PathVariable("id") Integer myid)
	{
	
		Response response=new Response("Done",ser.getvehicle(myid));
		
		return response;
		
	}
	
	@GetMapping("/all")
	public Response getall()
	{
		Response response=new Response("Done",ser.getallVehicle());
		
		return response;
	}
	
	@PostMapping("/load")
	public String saveVehicle(@RequestBody final Vehicle v)
	{
		
		ser.saveVehicle(v);
		return "Successfully Loaded";
	}
	
	@GetMapping("/delete/{id}")
	public String DeleteVehicle(@PathVariable("id") int myid)
	{
		ser.deletevehicle(myid);
		return "Deleted Successfully";
	}
	
	
	
	
	
//	@Autowired
//	private LoginService lgservice;
//	
//	@GetMapping("/login/{id}")
//	public Login getlogin(@PathVariable("id") int myid)
//	{
//		
//		return lgservice.getbyid(myid);
//		
//	}
//	
//	@GetMapping("/login/{name}")
//	public Login getloginbyusername(@PathVariable("name") int myname)
//	{
//		
//		return lgservice.getbyid(myname);
//		
//	}


}
