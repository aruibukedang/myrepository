package service;

import java.util.List;

import entity.orders;

public interface order_service {
	
	
	public List<orders> def(String txt);

	public void insert(orders r);

	public void delete(int id);

	public void deleteall(int id);
	
	public void update(orders r);

	public Object getId(int id);

	
}
