package us.singhlovepreet.RestController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import us.singhlovepreet.model.Trailer;
import us.singhlovepreet.service.TrailerService;

@RestController
@RequestMapping("/api/trailer")
public class TrailerController 
{
	@Autowired
	TrailerService tser;
	
	@GetMapping("/{id}")
	public Trailer getbyid(@PathVariable("id") int myid)
	{
		return tser.getbyid(myid);
	}
	
	@GetMapping("/all")
	public List<Trailer> getall()
	{
		return tser.getall();
	}
	
	@PostMapping("/load")
	public String saveTrailer(@RequestBody final Trailer trailer)
	{
		tser.save(trailer);
		
		return "Saved Successfully";
		
	}
}
