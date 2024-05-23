package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.DuplexRoom;
import com.klef.jfsd.springboot.model.PentHouse;
import com.klef.jfsd.springboot.model.StandardRoom;
import com.klef.jfsd.springboot.model.Suite;
import com.klef.jfsd.springboot.model.VillaRoom;

public interface StandardService {
  public String bookroom(StandardRoom sta);

  public String bookroomduplex(DuplexRoom d);
  public String bookroomvilla(VillaRoom v);
  public String bookroompenthouse(PentHouse p);
  public String booksuite(Suite s);
  
  
  public List<Object> getAllDataById(String email) ;
  
}
