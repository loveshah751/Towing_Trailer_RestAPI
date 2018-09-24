package us.singhlovepreet.Dao;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import us.singhlovepreet.model.Login;

@Repository
public interface LoginDao extends JpaRepository<Login, Integer>
{

	 List<Login> findByName(String name);
}
