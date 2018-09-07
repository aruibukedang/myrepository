package serviceImpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.order_dao;
import entity.orders;
import service.order_service;
@Service
public class order_serviceImpl implements order_service{
	
	@Autowired
	order_dao rdao;

	public List<orders> def() {
		return rdao.def();
	}

	public void insert(orders r) {
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
		
	}
	
}
