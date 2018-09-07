package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ptype_dao;
import entity.product;
import entity.ptype;
import service.ptype_service;
import util.SearchInfo;

@Service
public class ptype_serviceImpl implements ptype_service {
    
	@Autowired
	ptype_dao dao;

	public List<ptype> select(SearchInfo s) {
		
		return dao.select(s);
	}

	public List<ptype> selectAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	public void insert(ptype t) {
		dao.insert(t);
		
	}

	public void delete(int id) {
		dao.delete(id);
		
	}

	public void update(ptype t) {
		
		dao.update(t);
	}

	public ptype getById(int id) {
		
		return dao.getById(id);
	}
	
	

}
