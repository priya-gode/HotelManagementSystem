package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.DuplexRoom;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.PentHouse;
import com.klef.jfsd.springboot.model.StandardRoom;
import com.klef.jfsd.springboot.model.Suite;
import com.klef.jfsd.springboot.model.VillaRoom;
import com.klef.jfsd.springboot.repository.DuplexRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;
import com.klef.jfsd.springboot.repository.PentHouseRepository;
import com.klef.jfsd.springboot.repository.StandardRepository;
import com.klef.jfsd.springboot.repository.SuiteRepository;
import com.klef.jfsd.springboot.repository.VillaRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService {
  @Autowired
  private EmployeeRepository employeeRepository;
  @Autowired
  private StandardRepository standardRepository;
  @Autowired
  private DuplexRepository duplexRepository;
  @Autowired
  private SuiteRepository suiteRepository;
  @Autowired
  private VillaRepository  villaRepository;
  @Autowired
  private PentHouseRepository pentHouseRepository;

  
  @Override
  public String addemployee(Employee emp) {
    employeeRepository.save(emp);
    return "Registered Successfully";
  }

 

  @Override
  public Employee viewemployeebyid(int eid) {
	  Optional<Employee> obj = employeeRepository.findById(eid);    
	    
	    if(obj.isPresent())
	    {
	      Employee emp = obj.get();
	      return emp;
	    }
	    else
	    {
	      return null;
	    }
  }

  @Override
  public Employee checkemplogin(String email, String pwd) {
    return employeeRepository.checkemplogin(email, pwd);
  }

@Override
public List<StandardRoom> viewallstandard() {
	return standardRepository.findAll();
}

@Override
public List<DuplexRoom> viewallduplex() {
	return duplexRepository.findAll();
}

@Override
public List<Suite> viewallsuite() {
	return suiteRepository.findAll();
		
}

@Override
public List<VillaRoom> viewallvilla() {
	return villaRepository.findAll();
}

@Override
public List<PentHouse> viewallpenthouse() {
	 return pentHouseRepository.findAll();
}

@Override
public int updatestatusstandard(boolean active, int eid) {
	return employeeRepository.updatestatusstandard(active, eid);
}

@Override
public int updatestatussuite(boolean active, int eid) {
	return employeeRepository.updatestatussuite(active, eid);
}

@Override
public int updatestatuspent(boolean active, int eid) {
	return employeeRepository.updatestatuspent(active, eid);
}

@Override
public int updatestatusvilla(boolean active, int eid) {
	return employeeRepository.updatestatusvilla(active, eid);
}

@Override
public int updatestatusdelux(boolean active, int eid) {
	return employeeRepository.updatestatusdelux(active, eid);

}
@Override
public String updateemployee(Employee emp) {
	Employee e = employeeRepository.findById(emp.getId()).get();    
    
      e.setName(emp.getName());
      e.setDateofbirth(emp.getDateofbirth());
      e.setRole(emp.getRole());
      e.setSalary(emp.getSalary());
      e.setEmail(emp.getEmail());
      e.setPassword(emp.getPassword());
      e.setLocation(emp.getLocation());
      e.setContact(emp.getContact());
    
    employeeRepository.save(e);
    
    return "Employee Updated Successfully";
}

}
