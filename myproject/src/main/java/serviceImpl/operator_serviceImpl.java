package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.operator_dao;
import entity.operator;
import service.operator_service;
import util.SearchInfo;

@Service
public class operator_serviceImpl implements operator_service {

	@Autowired
	operator_dao dao;
	
	
	public List<operator> select(SearchInfo info) {
		
		
		return dao.select(info);
	}

	public void insert(operator o) {
		dao.insert(o);
		
	}

	public void update(operator o) {
		dao.update(o);
		
	}

	public void delete(int id) {
		dao.delete(id);
		
	}

	public operator getById(int id) {
		
		return dao.getById(id);
	}

	public operator getByName(String username) {
		
		return dao.getByName(username);
	}

}
