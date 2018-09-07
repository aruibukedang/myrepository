package serviceImpl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.order_dao;
import entity.orders;
import entity.orders_details;
import service.order_service;
@Service
public class order_serviceImpl implements order_service{
	
	@Autowired
	order_dao rdao;

	
public List<orders> select(int user_id) {
	
	return rdao.select(user_id);
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

	public orders getByUid(int user_id) {
		// TODO Auto-generated method stub
		return rdao.getByUid(user_id);
	}

	public void update(orders r) {
		rdao.update(r);
		
	}

	public void update1(orders r) {
		rdao.update1(r);
		
	}

	

	
	
}
