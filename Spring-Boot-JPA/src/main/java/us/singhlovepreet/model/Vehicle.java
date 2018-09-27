package us.singhlovepreet.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="vehicle")
public class Vehicle
{
	@Id
	private int v_id;
	
	private  String model;
	
	@Column(name="GVM")
	private int gvm;
	
	@Column(name="GCM")
	private int gcm;

	private int kerb_weight;
	
	private int max_towing;

	@Column(name="max_payload")
	private int v_payload;
//	@ManyToOne
//	private Trailer trailer;
	

	
	
	
	

	public int getV_id() {
		return v_id;
	}


	public Vehicle() {
		
	}


	public Vehicle(int v_id, String model, int gvm, int gcm, int kerb_weight, int max_towing, int v_payload) {
	super();
	this.v_id = v_id;
	this.model = model;
	this.gvm = gvm;
	this.gcm = gcm;
	this.kerb_weight = kerb_weight;
	this.max_towing = max_towing;
	this.v_payload = v_payload;
}


	public void setV_id(int v_id) {
		this.v_id = v_id;
	}


	public String getModel() {
		return model;
	}


	public void setModel(String model) {
		this.model = model;
	}


	public int getGvm() {
		return gvm;
	}


	public void setGvm(int gvm) {
		this.gvm = gvm;
	}


	public int getGcm() {
		return gcm;
	}


	public void setGcm(int gcm) {
		this.gcm = gcm;
	}


	public int getKerb_weight() {
		return kerb_weight;
	}


	public void setKerb_weight(int kerb_weight) {
		this.kerb_weight = kerb_weight;
	}


	public int getMax_towing() {
		return max_towing;
	}


	public void setMax_towing(int max_towing) {
		this.max_towing = max_towing;
	}


	public int getV_payload() {
		return v_payload;
	}


	public void setV_payload(int v_payload) {
		this.v_payload = v_payload;
	}


	
	
	
	
}

