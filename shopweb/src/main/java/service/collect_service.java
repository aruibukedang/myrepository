package service;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import entity.collect;


public interface collect_service {
	
	

	public List<collect> collect();


	public void insert(collect c);


	public void deleteall(int id);
	

	public void delete(int id);
	
	

	
}
