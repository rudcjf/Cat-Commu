package com.multicampus.cat.controller;

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
			resultList = (List<Object>) service.getList(paramMap);
			
		}else if("Login".equalsIgnoreCase(action)) {
			viewName = "home" + "Main";
			resultList = (List<Object>) service.getList(paramMap);
			
		} else if ("BoardRead".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultMap =  (Map<String, Object>) service.getObject(paramMap);
			
		} else if ("BoardEdit".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultMap =  (Map<String, Object>) service.getObject(paramMap);
			
		}else if ("BoardDelete".equalsIgnoreCase(action)) {
			viewName = viewName + "BoardList";
			resultList =   (List<Object>) service.deleteObject(paramMap);
			
		} else if ("BoardInsert".equalsIgnoreCase(action)) {
			viewName = viewName + "BoardList";
			service.createObject(paramMap);
			resultList = (List<Object>) service.getList(paramMap);
			
		}else if ("BoardUpdate".equalsIgnoreCase(action)) {
			viewName = viewName + "BoardRead";
			service.updateObject(paramMap);
			resultMap =  (Map<String, Object>) service.getObject(paramMap);
			
		}
		
		/*else if ("merge".equalsIgnoreCase(action)) {
			viewName = viewName + "BoardList";
			resultMap = (Map<String, Object>) service.saveObject(paramMap);
		}*/
		
		modelandView.setViewName(viewName);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);
		return modelandView;
		
	}
}