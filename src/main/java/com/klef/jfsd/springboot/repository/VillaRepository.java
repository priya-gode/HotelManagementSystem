package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.model.VillaRoom;

@Repository
public interface VillaRepository extends JpaRepository<VillaRoom, Integer>{
	@Query("select s from VillaRoom s where s.email=?1")
	public List<VillaRoom> findbyid(@RequestParam("email") String email);
}
