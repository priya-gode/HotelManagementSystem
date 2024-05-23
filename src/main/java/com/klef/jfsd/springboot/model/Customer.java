package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="customer_table")
public class Customer {
  @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="customer_id")
    private int id;
    @Column(name="customer_name",nullable=false,length = 50)
    private String name;
    @Column(name="customer_email",nullable=false,unique = true,length = 30)
    private String email;
    @Column(name="customer_phonenumber",nullable=false,unique=true,length=10)
    private String phonenumber;
    @Column(name="customer_password",nullable=false,length = 30)
    private String password;
  public int getId() {
    return id;
  }
  public void setId(int id) {
    this.id = id;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getPhonenumber() {
    return phonenumber;
  }
  public void setPhonenumber(String phonenumber) {
    this.phonenumber = phonenumber;
  }
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
  @Override
  public String toString() {
    return "Customer [id=" + id + ", name=" + name + ", email=" + email + ", phonenumber=" + phonenumber
        + ", password=" + password + "]";
  }
  
}
