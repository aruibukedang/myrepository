package service;

import java.util.List;

import entity.user;


public interface user_service {
	
	public List<user> select();

	public void insert(user u);

	public void update(user u);

	public void delete(int id);

	public void deleteall(int id);

	public user getById(int id);
	
	public user getByEmail(String email);
	
}
