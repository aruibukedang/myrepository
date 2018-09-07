package service;

import java.util.List;

import entity.orders;
import entity.shopcar;
import entity.user;

public interface shopcar_service {
	
	
	public List<shopcar> select(int user_id);

	public void insert(shopcar s);
	
	
	public List<shopcar> goshopcar(int user_id);
	
	
	public void delete(int id);
	/*
	public void deleteall(int id);
	
	public void update(orders r);

	public Object getId(int id);
	*/

	public void deletecar(int user_id);

	public void deleteall(int user_id);
	

	
}
