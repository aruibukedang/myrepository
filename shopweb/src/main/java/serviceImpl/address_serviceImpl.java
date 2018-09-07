package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.address_dao;
import entity.address;
import service.address_service;

@Service
public class address_serviceImpl implements address_service {
	
	@Autowired
	address_dao dao;

	public List<address> select(int user_id) {
	   
		return dao.select(user_id);
	}

	public void Insert(address ad) {
		dao.Insert(ad);
		
	}

	public void update(address ad) {
		dao.update(ad);
		
	}

	public void delete(int id) {
		dao.delete(id);
		
	}

	public void deleteall(int user_id) {
		dao.deleteall(user_id);
		
	}

	public address getById(int user_id) {
		// TODO Auto-generated method stub
		return  dao.getById(user_id);
	}

}
