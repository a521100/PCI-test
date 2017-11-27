package com.csr.dao;

import java.util.List;

public interface BaseDao {

	
	
	public Object queryData(String sqlID);
	public Object queryData(String sqlID,Object argsObj);
	
	public List<Object> queryListData(String sqlID);
	public List<Object> queryListData(String sqlID,Object argsObj);
	public int addData(String sqlID,Object argsObj);
	public int updateData(String sqlID,Object argsObj);
	public int delData(String sqlID,Object argsObj);

	public List<Object> querypage(String sqlID,Object argsObj);
	public List<Object> querysearch(String sqlID,Object argsObj);
	
	
	public void creat(String sqlID);
	public void insert(String sqlID);
	public void drop(String sqlID);
	public void update(String sqlID);
	
	public Object creat(String sqlID,Object argsObj);
	
	

}
