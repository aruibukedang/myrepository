package serviceImpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.orders_details_dao;
import entity.orders_details;
import service.orders_details_service;
@Service
public class orders_details_serviceImpl implements orders_details_service{
	
	@Autowired
	orders_details_dao ddao;

	public List<orders_details> def(int orders_id) {
		return ddao.def(orders_id);
	}

	public void insert(orders_details d) {
		ddao.insert(d);
	}
	
	public void update(orders_details d) {
		ddao.update(d);
	}

	public void delete(int id) {
		ddao.delete(id);
	}

	public void deleteall(int id) {
		ddao.deleteall(id);
	}

	public List<orders_details> getId(int id) {
		return ddao.getId(id);
	}

	public List<orders_details> getByoid(int orders_id) {
		// TODO Auto-generated method stub
		return ddao.getByoid(orders_id);
	}

	public List<orders_details> select() {
		// TODO Auto-generated method stub
		return ddao.select();
	}

	
	
}
