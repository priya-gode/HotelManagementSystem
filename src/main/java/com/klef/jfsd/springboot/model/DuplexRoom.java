package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "duplex_room")
public class DuplexRoom {
     @Id
     @GeneratedValue(strategy = GenerationType.IDENTITY)
     @Column(name="stand_id")
     private int id;
     @Column(name="name",nullable=false,length=25)
     private String name;
     @Column(name="contact",nullable=false,length=10,unique=true)
     private String contact;
     @Column(name="email",nullable=false,length=50)
     private String email;
     @Column(name="arrive",nullable=false,length=10)
     private String arrive;
     @Column(name="depature",nullable=false,length=10)
     private String depature;
     @Column(name="numrooms",nullable=false)
     private int numrooms;
     @Column(name="adults",nullable=false)
     private int numadults;
     @Column(name="childs",nullable=false)
     private int numchilds;
     @Column(name="bed",nullable=false)
     private String bed;
     @Column(name="active",nullable=false)
	  private boolean active;
     @Column(name="roomtype",nullable = false)
     private String roomtype;
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
  public String getContact() {
    return contact;
  }
  public void setContact(String contact) {
    this.contact = contact;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getArrive() {
    return arrive;
  }
  public void setArrive(String arrive) {
    this.arrive = arrive;
  }
  public String getDepature() {
    return depature;
  }
  public void setDepature(String depature) {
    this.depature = depature;
  }
  public int getNumrooms() {
    return numrooms;
  }
  public void setNumrooms(int numrooms) {
    this.numrooms = numrooms;
  }
  public int getNumadults() {
    return numadults;
  }
  public void setNumadults(int numadults) {
    this.numadults = numadults;
  }
  public int getNumchilds() {
    return numchilds;
  }
  public void setNumchilds(int numchilds) {
    this.numchilds = numchilds;
  }
  public String getBed() {
    return bed;
  }
  public void setBed(String bed) {
    this.bed = bed;
  }
  @Override
  public String toString() {
    return "StandardRoom [id=" + id + ", name=" + name + ", contact=" + contact + ", email=" + email + ", arrive="
        + arrive + ", depature=" + depature + ", numrooms=" + numrooms + ", numadults=" + numadults
        + ", numchilds=" + numchilds + ", bed=" + bed + "]";
  }
public boolean isActive() {
	return active;
}
public void setActive(boolean active) {
	this.active = active;
}
public String getRoomtype() {
	return roomtype;
}
public void setRoomtype(String roomtype) {
	this.roomtype = roomtype;
}

}
