package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.model.DuplexRoom;

@Repository
public interface DuplexRepository extends JpaRepository<DuplexRoom, Integer> {
	@Query("select s from DuplexRoom s where s.email=?1")
	public List<DuplexRoom> findbyid(@RequestParam("email") String email);
}
