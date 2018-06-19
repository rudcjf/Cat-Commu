package com.multicampus.cat.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.multicampus.cat.dao.SignUpDao;

@Service
public class SignUpService {

	@Autowired
	private SignUpDao dao;
	
	public Object getObject(Object dataMap) {
		
		Object resultObject = dao.getObject(dataMap);
		return resultObject;
	}
	
	public List<Object> getList(String sqlMapId, Object dataMap){
		
		
		List<Object> resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
		
	}
}
