package com.multicampus.cat.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.multicampus.cat.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	public String index(Principal principal) {
        System.out.println(principal.getName());
        return "index";
    }
	

	@RequestMapping(value = "/member/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actonMethod(@RequestParam Map<String, Object> paramMap, 
			@PathVariable String action, ModelAndView modelandView, Principal principal) {
		
		String viewName = "/member/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		
		if("SignUp".equalsIgnoreCase(action)) {
			viewName = "/member/"+"Login";
			service.createObject(paramMap);
			
		} else if ("MyInfo".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultMap =  (Map<String, Object>) service.getObject(principal.getName());

		} else if ("MyInfoSave".equalsIgnoreCase(action)) {
			viewName = viewName + "MyInfo";
			paramMap.put("memberId", principal.getName());
			service.updateObject(paramMap);
			resultMap =  (Map<String, Object>) service.getObject(principal.getName());
			
			
		}else if ("goSignUp".equalsIgnoreCase(action)) {
			viewName = viewName + "SignUp";
			//resultList = (List<Object>) service.getList(paramMap);
			
		}else if ("goSignUp".equalsIgnoreCase(action)) {
			viewName = viewName + "SignUp";
			//resultList = (List<Object>) service.getList(paramMap);
			
		}
		
		modelandView.setViewName(viewName);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);
		return modelandView;
		
	}
}
