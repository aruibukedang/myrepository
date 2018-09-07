package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.collect_dao;
import entity.collect;
import service.collect_service;

@Service
public class collect_serviceImpl implements collect_service {

	@Autowired 
	collect_dao dao;
	
	public List<collect> collect() {
		
		return dao.select();
	}

	public void insert(collect c) {
		dao.insert(c);
		
	}

	public void deleteall(int id) {
		dao.deleteall(id);
		
		
		
	}

	public void delete(int id) {
		dao.delete(id);
		
	}

	

}
