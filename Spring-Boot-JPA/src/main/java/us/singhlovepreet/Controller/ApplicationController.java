package us.singhlovepreet.Controller;


import java.util.List;



import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import us.singhlovepreet.model.Login;
import us.singhlovepreet.model.Trailer;
import us.singhlovepreet.model.Vehicle;
import us.singhlovepreet.service.LoginService;
import us.singhlovepreet.service.TrailerService;
import us.singhlovepreet.service.VehicleService;


@Controller
public class ApplicationController 
{
	@Autowired
	TrailerService trailerservice;
	
	@Autowired
	VehicleService vehicleservice;
	
	@Autowired
	LoginService lgservice;
	
	Integer Payload_entered;
	
	String vehicle_name;
	
	Boolean authenicate=false;
	
	@GetMapping("/home")
	public String gethome(Model model)
	{
		return "Home";
	}
	
	
	
	@GetMapping("/adminhome")
	public String getHome(HttpServletRequest request)
	{
		if(authenicate.booleanValue()==true)
		{
			request.setAttribute("mode", "Authorised");
			return "AdminHome";
		}
		else
		{
//			List<Trailer> list=trailerservice.getall();	
//			List<Vehicle> vlist=vehicleservice.getallVehicle();
//			
//			model.addAttribute("trailers", list);
//			model.addAttribute("vehicles", vlist);
			return "Home";
		}
	}
	
	
	@GetMapping("/compatible")
	public String getallData(Model model)
	{
		List<Trailer> list=trailerservice.getall();	
		List<Vehicle> vlist=vehicleservice.getallVehicle();
		
		model.addAttribute("trailers", list);
		model.addAttribute("vehicles", vlist);
		return "Compatibility";
	}
	
	@PostMapping("/home")
	public String getvalues(@RequestParam("trailer") String mytrailer,
			@RequestParam("vehicle") String myvehicle,
			@RequestParam("capacity") String cap, 
			@RequestParam("payload") int payload,Model model)
	{
		
		Payload_entered=payload;
		
		vehicle_name=myvehicle;
		int myid = 0;
		
		Vehicle return_vehicle=vehicleservice.getvehcilebyname(myvehicle);
//		Trailer return_trailer=trailerservice.getTrailerByName(mytrailer);	
		
		
	
		List<Trailer> demo=trailerservice.getall();
		
		for(int i=0;i<demo.size();i++)
		{
			
			if(demo.get(i).getModel().trim().equals(mytrailer.trim()))
			{
				//System.out.println("My trailers equals is "+demo.get(i).getModel());
				myid=demo.get(i).getId();
			}
			
		}
		
		
		
		
	//	System.out.println(" my Trailer is "+ myid);
		
		
		Trailer return_trailer=trailerservice.getbyid(myid);
		
		model.addAttribute("kerbweight", return_vehicle.getKerb_weight());
		model.addAttribute("v_payload", return_vehicle.getV_payload());
		model.addAttribute("t_payload", return_trailer.getPayload());
		model.addAttribute("towing", return_trailer.getMax_towing());

		
		return "Page2";
	}
	
	
	@PostMapping("/Page2")
	public String getvaluesPage2(@RequestParam("kerbweight") int kerb,
			@RequestParam("v_payload") int v_pay,
			@RequestParam("T_payload") int t_pay,
			@RequestParam("t_mass") int t_mass,
			@RequestParam("towing") int t_towing,Model model)
	{
		Integer Aggregated_trailer_Mass=t_pay+t_towing;
		
		Integer Tow_ball=(Aggregated_trailer_Mass*10)/100;
		
		Integer vehicle_payload_remaining=v_pay - Payload_entered -Tow_ball;
			
		model.addAttribute("kerb", kerb);
			model.addAttribute("payload_enter", Payload_entered);
			model.addAttribute("atm", Aggregated_trailer_Mass);
			model.addAttribute("tbd", Tow_ball);
			model.addAttribute("v_rem", vehicle_payload_remaining);
			
			
		return "Page3";
	}
	
	
	@PostMapping("/Page3")
	public String getpage3(@RequestParam("v_kerb") int final_kerb,
			@RequestParam("TBD") int tbd,@RequestParam("ATM") int atm,
			Model model)
	{

		
		Vehicle vehicle=vehicleservice.getvehcilebyname(vehicle_name);
		
		Integer GVM=vehicle.getGvm();
		
		Integer gvm_remaining=GVM - final_kerb - Payload_entered -tbd;
		Integer gcm=vehicle.getGcm();
	
		model.addAttribute("gvm_rem", gvm_remaining);
		model.addAttribute("gtm", atm-tbd);
		model.addAttribute("gcm", gcm);
		
		
		return "Page4";
	}
	
	
	@PostMapping(value="/login",consumes = org.springframework.http.MediaType.ALL_VALUE)
	public String login(@RequestParam("username") String username,@RequestParam("password") String password,
			HttpServletRequest request,Model model)
	{
		
			Login login=lgservice.getbyusername(username);
			if(login==null)
			{	
				
				request.setAttribute("mode", "Unauthorised");
				
				return "Admin";
			}
			if(login.getPassword().equals(password))
			{
				authenicate=true;
				request.setAttribute("mode", "Authorised");
				model.addAttribute("name", username.toUpperCase());
				return "AdminHome";
			}
			else
			{
				request.setAttribute("mode", "Unauthorised");
				return "Admin";
			}
		
		
	}
	
	@GetMapping("/login")
	public String getlogin(HttpServletRequest request,Model model)
	{
		if(authenicate.TRUE)
		{
			request.setAttribute("mode", "Authorised");
			return "AdminHome";
		}
		else
		{
//			List<Trailer> list=trailerservice.getall();	
//			List<Vehicle> vlist=vehicleservice.getallVehicle();
//			
//			model.addAttribute("trailers", list);
//			model.addAttribute("vehicles", vlist);
			return "Home";
		}
		
	}
	
	
	@PostMapping("/logout")
	public String logout(Model model)
	{
		authenicate=Boolean.FALSE;
		
//		List<Trailer> list=trailerservice.getall();	
//		List<Vehicle> vlist=vehicleservice.getallVehicle();
//		
//		model.addAttribute("trailers", list);
//		model.addAttribute("vehicles", vlist);
		return "Home";
	}
	
	
	
	@GetMapping("/logout")
	public String logoutGet(Model model)
	{
//		List<Trailer> list=trailerservice.getall();	
//		List<Vehicle> vlist=vehicleservice.getallVehicle();
//		
//		model.addAttribute("trailers", list);
//		model.addAttribute("vehicles", vlist);
		return "Home";

		
	}
	
	
	@GetMapping("/admin")
	public String getadmin(HttpServletRequest request,Model model)
	{
		if(authenicate.booleanValue()==true)
		{
			request.setAttribute("mode", "Authorised");
			return "Admin";
		}
		else
		{
			List<Trailer> list=trailerservice.getall();	
			List<Vehicle> vlist=vehicleservice.getallVehicle();
			
			model.addAttribute("trailers", list);
			model.addAttribute("vehicles", vlist);
			return "Home";
			
		}
			
	}

	@PostMapping(value="/admin")
	public String getadminEntry(HttpServletRequest request)
	{
		authenicate=true;
		request.setAttribute("mode", "Authorised");
		
		return "Admin";
	}
	
	
	@PostMapping(value="/Add")
	public String addVehicle(@RequestParam("model") String model,
			@RequestParam("GVM") Integer gvm,
			@RequestParam("GCM") Integer gcm,
			@RequestParam("kerb") Integer kerb,
			@RequestParam("payload") Integer payload,
			@RequestParam("towing") Integer towing,HttpServletRequest request,Model mode)
	{
		
		if(authenicate.booleanValue()==true)
		{
			int size=vehicleservice.getallVehicle().size();
			
			if(model!=null && gvm!=null && gcm!=null && kerb!=null && payload!=null
					&& towing!=null)
			{
				Vehicle createvehicle=new Vehicle(size+1,model,gvm,gcm,kerb,payload,towing);
				vehicleservice.saveVehicle(createvehicle);
				request.setAttribute("mode","Message");
				request.setAttribute("mode","Authorised");
				return "Admin";
			}
			else {
				request.setAttribute("mode", "error");
				return "Admin";
			}
		}
		
		else 
			
		{
			List<Trailer> list=trailerservice.getall();	
			List<Vehicle> vlist=vehicleservice.getallVehicle();
			
			mode.addAttribute("trailers", list);
			mode.addAttribute("vehicles", vlist);
			return "Home";
			
		}

		
	}
	
	
	@PostMapping("/trailerload")
	public String addTrailer(HttpServletRequest request,
			@RequestParam("model") String trailermodel,
			@RequestParam("payload") Integer payload,
			@RequestParam("towing")Integer towing,Model model)
	{
		
		if(authenicate.booleanValue()==true)
		{
			
		
		int size=trailerservice.getall().size();
		if(size!=0)
		{
			Trailer trailer=new Trailer(size+1,trailermodel,payload,towing);
			trailerservice.save(trailer);
			request.setAttribute("mode","Authorised");
			return "Admin";
		}
		
		else {
			Trailer trailer=new Trailer(1,trailermodel,payload,towing);
			trailerservice.save(trailer);
			request.setAttribute("mode","Authorised");
			return "Admin";
		}
		
		
		}
		
		else
		{
			List<Trailer> list=trailerservice.getall();	
			List<Vehicle> vlist=vehicleservice.getallVehicle();
			
			model.addAttribute("trailers", list);
			model.addAttribute("vehicles", vlist);
			return "Home";
			
		}

	}
	
	
	@PostMapping("/viewtables")
	public String displaytables(Model model, HttpServletRequest request)
	{
		List<Vehicle> myvehicle=vehicleservice.getallVehicle();
		List<Trailer> mytrailer=trailerservice.getall();
		model.addAttribute("vehicles", myvehicle);
		model.addAttribute("trailers", mytrailer);
		request.setAttribute("mode","Authorised");
		return "AdminTable";
	}
	


}
