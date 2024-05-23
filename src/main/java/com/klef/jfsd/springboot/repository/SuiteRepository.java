package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.model.Suite;

@Repository
public interface SuiteRepository extends JpaRepository<Suite, Integer> {
	@Query("select s from Suite s where s.email=?1")
	public List<Suite> findbyid(@RequestParam("email") String email);
}
