package com.multicampus.cat.controller;

import java.text.DateFormat;
import java.util.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.multicampus.cat.service.SignUpService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SignUpController {
	
	private static final Logger logger = LoggerFactory.getLogger(SignUpController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired
	private SignUpService service;
	
	@RequestMapping(value = "/member/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actonMethod(@RequestParam Map<String, Object> paramMap, 
			@PathVariable String action, ModelAndView modelandView) {
		
		String viewName = "/member/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		if("SignUp".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			
		} else if ("SignUpStatus".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultMap = (Map<String, Object>)service.getObject(paramMap);
		} else if ("SignUpList".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultList = service.getList(viewName, paramMap);
			
		}
		
		
		modelandView.setViewName(viewName);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);
		return modelandView;
		
	}
	
}
