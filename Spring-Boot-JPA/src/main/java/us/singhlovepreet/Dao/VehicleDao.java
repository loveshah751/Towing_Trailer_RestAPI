package us.singhlovepreet.Dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import us.singhlovepreet.model.Vehicle;

@Repository
public interface VehicleDao extends CrudRepository<Vehicle, Integer>
{

	Vehicle findByModel(String name);
}
