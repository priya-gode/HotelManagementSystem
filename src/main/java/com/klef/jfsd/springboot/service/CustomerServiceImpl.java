package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService{
  
  @Autowired
  private CustomerRepository customerRepository;

  @Override
  public Customer checkcustomerlogin(String email, String pwd) {
    return customerRepository.checkcustomerlogin(email, pwd);
  }

  @Override
  public String addcustomer(Customer cus) {
    customerRepository.save(cus);
    return "Registrartion Successfull";
  }



}
