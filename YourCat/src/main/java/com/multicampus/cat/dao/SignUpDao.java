package com.multicampus.cat.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class SignUpDao {
	public Object getObject(Object dataMap) {
		Map<String, Object> resultObject = new HashMap<String, Object>();
		resultObject.put("emailid", "321652168468");
		resultObject.put("password", "name02");
		return resultObject;
	}
	
	public List<Object> getList(String sqlMapId, Object dataMap){
		List<Object> resultObject = new ArrayList<Object>();
		
		Map<String, Object> data01 = new HashMap<String, Object>();
		data01.put("emailid", "fshsleif");
		data01.put("password", "1234");
		data01.put("cpassword", "1234");
		data01.put("name", "jane");
		data01.put("contactnum", "0102224444");
		data01.put("residence", "seoul");
		data01.put("hobby", "music");
		resultObject.add(data01);
		
		Map<String, Object> data02 = new HashMap<String, Object>();
		data02.put("emailid", "fshsleif");
		data02.put("password", "1234");
		data02.put("cpassword", "1234");
		data02.put("name", "jane");
		data02.put("contactnum", "0102224444");
		data02.put("residence", "seoul");
		data02.put("hobby", "music");
		resultObject.add(data02);
		
		return resultObject;
		
	}
}
