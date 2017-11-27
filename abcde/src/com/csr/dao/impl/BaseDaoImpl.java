package com.csr.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.csr.dao.BaseDao;

@Repository("baseDao")
public class BaseDaoImpl implements BaseDao {

	@Autowired
	@Qualifier("sqlSession")
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public Object queryData(String sqlID) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(sqlID);
	}

	@Override
	public Object queryData(String sqlID, Object argsObj) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(sqlID, argsObj);
	
	}
	
	@Override
	public List<Object> querysearch(String sqlID, Object argsObj) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(sqlID, argsObj);
	
	}

	@Override
	public List<Object> queryListData(String sqlID) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(sqlID);
	}

	@Override
	public List<Object> queryListData(String sqlID, Object argsObj) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(sqlID,argsObj);
	}
	
	

	@Override
	public int addData(String sqlID, Object argsObj) {
		// TODO Auto-generated method stub
		return sqlSession.insert(sqlID,argsObj);
	}

	@Override
	public int updateData(String sqlID, Object argsObj) {
		// TODO Auto-generated method stub
		return sqlSession.update(sqlID,argsObj);
	}

	@Override
	public int delData(String sqlID, Object argsObj) {
		// TODO Auto-generated method stub
		return sqlSession.delete(sqlID,argsObj);
	}
	

	@Override
	public List<Object> querypage(String sqlID, Object argsObj) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(sqlID, argsObj);
	}
	
	@Override
	public void creat(String sqlID) {
		// TODO Auto-generated method stub
		sqlSession.update(sqlID);
	}
	
	@Override
	public void insert(String sqlID) {
		// TODO Auto-generated method stub
		sqlSession.insert(sqlID);
	}
	
	@Override
	public void drop(String sqlID) {
		// TODO Auto-generated method stub
		sqlSession.update(sqlID);
	}
	
	@Override
	public void update(String sqlID) {
		// TODO Auto-generated method stub
		sqlSession.update(sqlID);
	}
	
	@Override
	public Object creat(String sqlID, Object argsObj) {
		// TODO Auto-generated method stub
		return sqlSession.update(sqlID, argsObj);
	}
	
}
