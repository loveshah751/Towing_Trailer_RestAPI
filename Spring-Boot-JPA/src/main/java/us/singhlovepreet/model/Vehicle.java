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
	
	@Column(name="model")
	private  String name;
	
	@Column(name="GVM")
	private int gvm;
	
	@Column(name="GCM")
	private int gcm;

	private int kerb_weight;
	
	private int max_towing;

	
//	@ManyToOne
//	private Trailer trailer;
	
	
	public Vehicle()
	{
		
	}
	
	
	public Vehicle(int v_id, String name, int gvm, int gcm, int kerb_weight, int v_payload,
			int max_towing) {
		super();
		this.v_id = v_id;
		this.name = name;
		this.gvm = gvm;
		this.gcm = gcm;
		this.kerb_weight = kerb_weight;
//		this.trailer = trailer;
		this.v_payload = v_payload;
		this.max_towing = max_towing;
	}


	public int getV_id() {
		return v_id;
	}


	public void setV_id(int v_id) {
		this.v_id = v_id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
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


	@Column(name="max_payload")
	private int v_payload;
	
	
	
}

