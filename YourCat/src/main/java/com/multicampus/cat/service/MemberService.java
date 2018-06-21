package com.multicampus.cat.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multicampus.cat.dao.MemberDao;

@Service
public class MemberService {

	@Autowired
	private MemberDao dao;
	
	public Object getList(Object dataMap) {
		String sqlMapId = "board.list";
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}

	public Object getObject(Object dataMap) {
		String sqlMapId = "board.read";
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		
		return resultObject;
	}

	public Object deleteObject(Object dataMap) {
		String sqlMapId = "board.delete";
		Integer resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);
		sqlMapId = "board.list";
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object createObject(Object dataMap) {
		String sqlMapId = "board.insert";
		Object resultObject =  dao.createObject(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object updateObject(Object dataMap) {
		String sqlMapId = "board.update";
		Object resultObject = dao.updateObject(sqlMapId, dataMap);
		
		return resultObject;
		
		
	}
}
