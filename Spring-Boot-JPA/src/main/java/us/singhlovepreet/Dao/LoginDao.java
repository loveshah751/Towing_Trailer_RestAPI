package us.singhlovepreet.Dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import us.singhlovepreet.model.Login;

@Repository
public interface LoginDao extends JpaRepository<Login, Integer>
{

	 Login findByName(String name);
}
