package serviceImpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.Class_dao;

import entity.Class;

import service.Class_service;


 @Service
public class Class_serviceImpl implements Class_service {

	@Autowired
	Class_dao dao;
	
	public List<Class> select() {
		return dao.select();
		// TODO Auto-generated method stub
		
	}

	public void insert(Class c) {
		// TODO Auto-generated method stub
		dao.insert(c);
	}

	public void update(Class c) {
		// TODO Auto-generated method stub
		dao.update(c);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	public Class getById(int id) {
		// TODO Auto-generated method stub
		return dao.getById(id);
	}

	
	


	

}
