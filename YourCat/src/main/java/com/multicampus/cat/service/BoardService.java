package com.multicampus.cat.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multicampus.cat.dao.BoardDao;

@Service
public class BoardService {

	@Autowired
	private BoardDao dao;
	
	public Object getList(Object dataMap) {
		String sqlMapId = "board.list";

		//Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return null;//resultObject;
	}
	
	
}
