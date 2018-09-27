package us.singhlovepreet.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import javax.persistence.Table;


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
	

	
	public Trailer() {

	}

	

	public Trailer(int id, String model, int payload, int max_towing) {
	super();
	this.id = id;
	this.model = model;
	this.payload = payload;
	this.max_towing = max_towing;
}
	
	
	

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
