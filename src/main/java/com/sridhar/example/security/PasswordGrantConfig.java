package com.sridhar.example.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class PasswordGrantConfig extends WebSecurityConfigurerAdapter {

  private static final Logger LOG = LoggerFactory.getLogger(PasswordGrantConfig.class);
  
    @Autowired 
    private UserDetailsService userDetailsService;

    @Autowired
    private PasswordEncoder bcryptPasswordEncoder;

    @Bean
    @Override 
    public AuthenticationManager authenticationManagerBean() throws Exception { 
      LOG.debug("in authenticationManagerBean"); 
      return super.authenticationManagerBean(); 
    }
    
    @Override 
    protected void configure(AuthenticationManagerBuilder auth) throws Exception { 
      LOG.debug("in configure");
      auth.userDetailsService(userDetailsService).passwordEncoder(bcryptPasswordEncoder); 
    }

}
    
   

