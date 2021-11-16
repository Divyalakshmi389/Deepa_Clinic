package com.deepa.clinic;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClinicService {
	
	@Autowired
    private ClinicRepository repo;
	
	public List<clinic> listAll() {
        return repo.findAll();
    }
     
    public void save(clinic std) {
        repo.save(std);
    }
     
    public clinic get(Long id) {
        return repo.findById(id).get();
    }
     
    public void delete(Long id) {
        repo.deleteById(id);
    }
 
}