/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.configuration.core;

import com.springmvc.configuration.LoginApplicationConfig;

import org.springframework.web.servlet.resource.ResourceUrlEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import javax.servlet.Filter;
/**
 *
 * @author sandra
 */
public class SpringWebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { LoginApplicationConfig.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return null;
	}
        
    
        

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}}