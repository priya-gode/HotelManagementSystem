package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Employee;

import jakarta.transaction.Transactional;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
  @Query("select e from Employee e where email=?1 and password=?2 ")
  public Employee checkemplogin(String email,String pwd);
  

	@Query("update StandardRoom set active=?1 where id=?2")
	@Modifying
	@Transactional
	public int updatestatusstandard(boolean active,int eid);
	@Query("update Suite set active=?1 where id=?2")
	@Modifying
	@Transactional
	public int updatestatussuite(boolean active,int eid);
	@Query("update VillaRoom set active=?1 where id=?2")
	@Modifying
	@Transactional
	public int updatestatusvilla(boolean active,int eid);
	@Query("update PentHouse set active=?1 where id=?2")
	@Modifying
	@Transactional
	public int updatestatuspent(boolean active,int eid);
	@Query("update DuplexRoom set active=?1 where id=?2")
	@Modifying
	@Transactional
	public int updatestatusdelux(boolean active,int eid);
}
