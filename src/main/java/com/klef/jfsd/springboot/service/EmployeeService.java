package com.klef.jfsd.springboot.service;


import java.util.List;

import com.klef.jfsd.springboot.model.DuplexRoom;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.PentHouse;
import com.klef.jfsd.springboot.model.StandardRoom;
import com.klef.jfsd.springboot.model.Suite;
import com.klef.jfsd.springboot.model.VillaRoom;

public interface EmployeeService {
  
  public String addemployee(Employee emp);
  public String updateemployee(Employee emp);
  public Employee viewemployeebyid(int eid);
  
  public Employee checkemplogin(String email,String pwd);
  
  public List<StandardRoom> viewallstandard();
  public List<DuplexRoom> viewallduplex();
  public List<Suite> viewallsuite();
  public List<VillaRoom> viewallvilla();
  public List<PentHouse> viewallpenthouse();
  public int updatestatusstandard(boolean active,int eid);
  public int updatestatussuite(boolean active,int eid);
  public int updatestatuspent(boolean active,int eid);
  public int updatestatusvilla(boolean active,int eid);
  public int updatestatusdelux(boolean active,int eid);
  

}
