package serviceImpl;

import java.util.List;

import org.apache.catalina.Service;
import org.springframework.beans.factory.annotation.Autowired;

import dao.student_dao;
import entity.student;
import service.student_service;

public class student_serviceImpl implements student_service {

	@Autowired
	student_dao dao;
	
	public List<student> select() {
		// TODO Auto-generated method stub
		return dao.select();
	}

	public void insert(student s) {
		// TODO Auto-generated method stub
		dao.insert(s);
	}

	public void update(student s) {
		// TODO Auto-generated method stub
		dao.update(s);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	public student getById(int id) {
		// TODO Auto-generated method stub
		return dao.getById(id);
	}
	
	

}
