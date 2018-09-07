package service;

import java.util.List;

import entity.orders;
import entity.orders_details;

public interface order_service {
	
	
	public List<orders> select(int user_id);

	
	
	public void insert(orders r);

	public void delete(int id);

	public void deleteall(int id);
	
	public void update(orders r);
	
	public void update1(orders r);

	public orders getByUid(int user_id);
	
	

	
}
