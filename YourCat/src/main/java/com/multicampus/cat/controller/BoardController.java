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

import com.multicampus.cat.service.BoardService;

//import com.multicampus.cat.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired
	private BoardService service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/board/{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actonMethod(@RequestParam Map<String, Object> paramMap, 
			@PathVariable String action, ModelAndView modelandView) {
		
		String viewName = "/board/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		if("BoardList".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultList = (List<Object>) service.getList(paramMap);
		} else if ("BoardRead".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultMap =  (Map<String, Object>) service.getObject(paramMap);
		} else if ("BoardEdit".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			resultMap =  (Map<String, Object>) service.getObject(paramMap);
		}else if ("BoardUpdate".equalsIgnoreCase(action)) {
			viewName = viewName + action;
			//resultMap =  (Map<String, Object>) service.getEditObject(paramMap);
		}
		
		
		modelandView.setViewName(viewName);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);
		return modelandView;
		
	}
	
}
