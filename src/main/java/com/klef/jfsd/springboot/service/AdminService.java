package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Employee;

public interface AdminService {
	public Admin checkadminlogin(String auname,String apwd);
	public List<Employee> viewallemps();
	public List<Customer> viewallcustomers();
	public long empcount();   
	public long customercount();
}
