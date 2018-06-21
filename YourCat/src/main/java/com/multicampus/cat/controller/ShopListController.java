package com.multicampus.cat.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.multicampus.cat.service.ShopService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ShopListController {
	
	private static final Logger logger = LoggerFactory.getLogger(ShopListController.class);
	
	@Autowired
	private ShopService service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/shop/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actonMethod(@RequestParam Map<String, Object> paramMap, 
			@PathVariable String action, ModelAndView modelandView) {
		
		String viewName = "/shop/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		if("ShopList".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultList = (List<Object>) service.getList(paramMap);
			
		} else if ("ShopRead".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultMap =  (Map<String, Object>) service.getObject(paramMap);
			
		} else if ("ShopBuy".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultMap =  (Map<String, Object>) service.getObject(paramMap);
			modelandView.addObject("paramMap", paramMap);
			
		} else if("insert".equalsIgnoreCase(action)) {
			viewName = viewName + "ShopList";
			service.createObject(paramMap);
			resultMap =  (Map<String, Object>) service.createObject(paramMap);
			
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
