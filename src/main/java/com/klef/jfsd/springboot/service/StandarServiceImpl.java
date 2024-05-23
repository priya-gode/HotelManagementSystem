package com.klef.jfsd.springboot.service;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.DuplexRoom;
import com.klef.jfsd.springboot.model.PentHouse;
import com.klef.jfsd.springboot.model.StandardRoom;
import com.klef.jfsd.springboot.model.Suite;
import com.klef.jfsd.springboot.model.VillaRoom;
import com.klef.jfsd.springboot.repository.DuplexRepository;
import com.klef.jfsd.springboot.repository.PentHouseRepository;
import com.klef.jfsd.springboot.repository.StandardRepository;
import com.klef.jfsd.springboot.repository.SuiteRepository;
import com.klef.jfsd.springboot.repository.VillaRepository;

@Service
public class StandarServiceImpl implements StandardService{
  
  @Autowired
  private StandardRepository repository;
  @Autowired
  private DuplexRepository duplexRepository;
  @Autowired
  private VillaRepository villaRepository;
  @Autowired
  private PentHouseRepository pentHouseRepository;
  @Autowired
  private SuiteRepository suiteRepository;

  @Override
  public String bookroom(StandardRoom sta) {
    repository.save(sta);
    return "Standard Booked Successfully";
  }

  @Override
  public String bookroomduplex(DuplexRoom d) {
    duplexRepository.save(d);
    return "Duplex Room Booked Successfully";
  }

  @Override
  public String bookroomvilla(VillaRoom v) {
    villaRepository.save(v);
    return "Villa Booked Successfully";
  }

  @Override
  public String bookroompenthouse(PentHouse p) {
    pentHouseRepository.save(p);
    return "Penthouse Booked Successfully....:)";
  }

  @Override
  public String booksuite(Suite s) {
    suiteRepository.save(s);
    return "Suite Booked Successfully";
  }

@Override
public List<Object> getAllDataById(String email) {
    List<Object> dataList = new ArrayList<>();

    List<StandardRoom> table1Data =  repository.findbyid(email);
    List<DuplexRoom> table2Data = duplexRepository.findbyid(email);
    List<VillaRoom> table3Data = villaRepository.findbyid(email);
    List<Suite> table4Data = suiteRepository.findbyid(email);
    List<PentHouse> table5Data = pentHouseRepository.findbyid(email);
    
    
    if (table1Data != null && !table1Data.isEmpty()) {
        dataList.addAll(table1Data);
    }

    if (table2Data != null && !table2Data.isEmpty()) {
        dataList.addAll(table2Data);
    }

    if (table3Data != null && !table3Data.isEmpty()) {
        dataList.addAll(table3Data);
    }

    if (table4Data != null && !table4Data.isEmpty()) {
        dataList.addAll(table4Data);
    }

    if (table5Data != null && !table5Data.isEmpty()) {
        dataList.addAll(table5Data);
    }


    return dataList;
}


}