package com.multicampus.cat.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Object getList(String sqlMapId, Object dataMap) {
		Object result = sqlSession.selectList(sqlMapId, dataMap);
		return result;
	}

	public Object getObject(String sqlMapId, Object dataMap) {
		Object result = sqlSession.selectOne(sqlMapId, dataMap);
		return result;
	}

	public Object deleteObject(String sqlMapId, Object dataMap) {
		Integer result = sqlSession.update(sqlMapId,dataMap);
		return result;
	}
	
	public Object createObject(String sqlMapId, Object dataMap) {
		Integer result = sqlSession.insert((String)sqlMapId, dataMap);
		return result;
	}
	
	public Object updateObject(String sqlMapId, Object dataMap) {
		Integer result = sqlSession.update(sqlMapId, dataMap);
		return result;
	}

}