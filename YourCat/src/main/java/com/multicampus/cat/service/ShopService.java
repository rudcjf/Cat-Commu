package com.multicampus.cat.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multicampus.cat.dao.ShopDao;

@Service
public class ShopService {

	@Autowired
	private ShopDao dao;
	
	public Object getList(Object dataMap) {
		String sqlMapId = "shop.list";

		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object getObject(Object dataMap) {
		String sqlMapId = "shop.read";
		
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object createObject(Object dataMap) {
		String sqlMapId = "shop.insert";
		Object resultObject =  dao.createObject(sqlMapId, dataMap);
		
		return resultObject;
	}
	
}
