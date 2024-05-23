package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.model.StandardRoom;

@Repository
public interface StandardRepository extends JpaRepository<StandardRoom, Integer> {
	@Query("select s from StandardRoom s where s.email=?1")
	public List<StandardRoom> findbyid(@RequestParam("email") String email);
}
