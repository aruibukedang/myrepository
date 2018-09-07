package serviceImpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.shopcar_dao;
import entity.shopcar;
import entity.user;
import service.shopcar_service;


@Service
public class shopcar_serviceImpl implements shopcar_service{
	
	@Autowired
	shopcar_dao dao;

	public List<shopcar> select(int user_id) {
		// TODO Auto-generated method stub
		return dao.select(user_id);
	}

	public void insert(shopcar s) {
		
		dao.insert(s);
	}

	public List<shopcar> goshopcar(int user_id) {
		// TODO Auto-generated method stub
		return dao.goshopcar(user_id);
	}

	public void delete(int id) {
		dao.delete(id);
		
	}

	public void deleteall(int user_id) {
		dao.deleteall(user_id);
		
	}

	public void deletecar(int user_id) {
		dao.deletecar(user_id);
		
	}

	




	

	
/*	public void insert(orders r) {
		rdao.insert(r);
	}

	public void delete(int id) {
		rdao.delete(id);
	}

	public void deleteall(int id) {
		rdao.deleteall(id);
	}

	public Object getId(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void update(orders r) {
		rdao.update(r);
		
	}*/
	
}
