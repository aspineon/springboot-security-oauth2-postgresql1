package com.sridhar.example.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.sridhar.example.repo.UserRepository;
import com.sridhar.example.security.User;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

  private static final Logger LOG = LoggerFactory.getLogger(UserDetailsServiceImpl.class);
  
  @Autowired
  private UserRepository userRepository;
  
  @Override
  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    LOG.debug("in loadUserByUsername with username:"+username);
    User user = userRepository.findByUsername(username);
    
    if(user != null) {
      LOG.debug("username fetched is:"+user.getUsername());
      LOG.debug("password fetched is:"+user.getPassword());
      return user;
    }

    throw new UsernameNotFoundException(username);
  }

}
