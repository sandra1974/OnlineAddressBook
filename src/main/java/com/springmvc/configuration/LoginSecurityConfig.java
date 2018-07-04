/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 *
 * @author sandra
 */
@Configuration
@EnableWebSecurity
public class LoginSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder authenticationMgr) throws Exception {
		authenticationMgr.inMemoryAuthentication()
			
                .withUser("visitor").password("v").authorities("ROLE_USER")
                     .and()
                .withUser("admin").password("a").authorities("ROLE_USER");   
                        
                
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
			.antMatchers("/home").access("hasRole('ROLE_USER')")
			.and()
				.formLogin().loginPage("/loginPage")
                        
				.defaultSuccessUrl("/home")
				.failureUrl("/loginPage?error")
				.usernameParameter("username").passwordParameter("password")				
			.and()
				.logout().logoutSuccessUrl("/loginPage?logout"); 
		
	}
}