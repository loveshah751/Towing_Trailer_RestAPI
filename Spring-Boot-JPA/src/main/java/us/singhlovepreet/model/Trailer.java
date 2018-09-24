package us.singhlovepreet.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.ForeignKey;

@Entity
@Table(name="trailer")
public class Trailer 
{
	@Id
	private int id;
	
	
	private String model;
	
	private int payload;
	
	private int max_towing;
	
//	// Relationship
//	@OneToMany(mappedBy="trailer")
//	private List<Vehicle> vehicle;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public int getPayload() {
		return payload;
	}

	public void setPayload(int payload) {
		this.payload = payload;
	}

	public int getMax_towing() {
		return max_towing;
	}

	public void setMax_towing(int max_towing) {
		this.max_towing = max_towing;
	}

	

	
	
	

}
