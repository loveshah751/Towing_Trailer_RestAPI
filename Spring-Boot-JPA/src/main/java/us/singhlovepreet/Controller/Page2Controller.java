package us.singhlovepreet.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
public class Page2Controller 
{
	
	@GetMapping("/page2")
	public String getview()
	{
		
		
		return "adminview";
		
	}

}
