package com.sridhar.example.repo;

import java.util.List;

import org.springframework.data.repository.Repository;

import com.sridhar.example.model.Company;

@org.springframework.stereotype.Repository
public interface CompanyRepository extends Repository<Company, Integer>{

  Company findByName(String companyname);
  
  List<Company> findAll();
  
  void save(Company company);
  
}
