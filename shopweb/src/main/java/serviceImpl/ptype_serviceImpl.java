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
	
	
	public List<ptype> select() {
		List<ptype> pt = dao.select();
		return pt ;
	}

	public void insert(ptype p) {
		dao.insert(p);
		
	}

	public void update(ptype p) {
		dao.update(p);
		
	}

	public void delete(int id) {
		dao.delete(id);
		
	}

	public ptype getById(int id) {

     return dao.getById(id);
	}

	public List<ptype> select1(SearchInfo info) {
		
		return dao.select1(info);
	}

}
