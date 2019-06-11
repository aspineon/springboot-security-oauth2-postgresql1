package com.sridhar.example.repo;

import org.springframework.data.repository.Repository;

import com.sridhar.example.security.User;

@org.springframework.stereotype.Repository
public interface UserRepository extends Repository<User, Long> {

  User findByUsername(String username);
  
}
