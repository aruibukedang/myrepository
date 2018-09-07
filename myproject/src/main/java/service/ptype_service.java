package service;

import java.util.List;

import entity.ptype;
import util.SearchInfo;


public interface ptype_service {
	
	
	
	public List<ptype> select(SearchInfo s);

	
	
	public List<ptype> selectAll();
	

	public void insert(ptype t);

	
	public void delete(int id);


	public void update(ptype t);

	public ptype  getById(int id);
	
	
	

}
