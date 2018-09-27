package us.singhlovepreet.RestController;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import us.singhlovepreet.model.Vehicle;
import us.singhlovepreet.service.VehicleService;

@RestController
@RequestMapping("/api/vehicle")
public class VehicleController
{
	
	@Autowired
	private VehicleService ser;
	
	

	@GetMapping("/{id}")
	public Vehicle getvehiclebyid(@PathVariable("id") Integer myid)
	{
	
		return ser.getvehicle(myid);
	}
	
	@GetMapping("/all")
	public List<Vehicle> getall()
	{
		return ser.getallVehicle();
	
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
	
	



}
