package com.sridhar.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sridhar.example.model.Company;
import com.sridhar.example.repo.CompanyRepository;

@Service
public class CompanyService {

  @Autowired
  private CompanyRepository companyRepository;
  
  
  public Company findCompanyByName(String companyName) {
    return companyRepository.findByName(companyName);
  }
  
  public List<Company> findAllCompanies() {
   return companyRepository.findAll();
  }
  
  public void createCompany(Company company) {
    companyRepository.save(company);
  }
}
