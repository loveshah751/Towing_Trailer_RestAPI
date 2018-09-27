package us.singhlovepreet.RestController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import us.singhlovepreet.model.Login;
import us.singhlovepreet.service.LoginService;

@RestController
@RequestMapping("/api/login")
public class LoginController
{
	
	@Autowired
	private LoginService lgser;
	
	@GetMapping("/{id}")
	public Login getbyid(@PathVariable("id") int myid)
	{
	return	lgser.getbyid(myid);
		
	}

	@GetMapping("/username/{name}")
	public Login getbyname(@PathVariable("name") String name)
	{
		return lgser.getbyusername(name);
	}
}
