package us.singhlovepreet.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import us.singhlovepreet.model.Trailer;

@Repository
public interface TrailerDao extends JpaRepository<Trailer, Integer>
{

	Trailer findByModel(String name);
}
