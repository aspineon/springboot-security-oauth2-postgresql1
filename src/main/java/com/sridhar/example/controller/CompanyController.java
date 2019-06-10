package com.sridhar.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.sridhar.example.model.Company;
import com.sridhar.example.service.CompanyService;

@RestController
public class CompanyController {

  @Autowired
  private CompanyService companyService;
  
  @GetMapping("/showCompany/{companyName}")
  public Company showCompanyByName(@PathVariable(name = "companyName") final String companyName) {
    return companyService.findCompanyByName(companyName);
  }
  
  @GetMapping("/showCompany/All")
  public List<Company> showAllCompanies() {
    return companyService.findAllCompanies();
  }
  
  @PostMapping("/addCompany")
  public ResponseEntity<?> createNewCompany(@RequestBody Company company ) {
    companyService.createCompany(company);
    return new ResponseEntity<>(HttpStatus.CREATED);
  }
}
