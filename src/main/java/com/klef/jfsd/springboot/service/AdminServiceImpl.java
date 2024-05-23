package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminRepository adminRepository;
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	@Override
	public Admin checkadminlogin(String auname, String apwd) {
		
		return adminRepository.checkadminlogin(auname, apwd);
	}
	@Override
	public List<Employee> viewallemps() {
		return employeeRepository.findAll();	
	}
	@Override
	public long empcount() {
		return employeeRepository.count();
	}
	@Override
	public long customercount() {
		return customerRepository.count();
	}
	@Override
	public List<Customer> viewallcustomers() {
		return customerRepository.findAll();
	}

}
