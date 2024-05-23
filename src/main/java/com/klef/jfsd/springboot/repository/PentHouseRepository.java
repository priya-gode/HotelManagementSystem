package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.model.PentHouse;

@Repository
public interface PentHouseRepository extends JpaRepository<PentHouse, Integer>{
	@Query("select s from PentHouse s where s.email=?1")
	public List<PentHouse> findbyid(@RequestParam("email") String email);
}
