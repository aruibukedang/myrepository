package service;

import java.util.List;

import entity.product;
import entity.ptype;
import util.SearchInfo;


public interface ptype_service {
	
	
	public List<ptype> select1(SearchInfo info);
	
  public List<ptype> select();
	


    
    public void insert(ptype p);
    
    
   
    public void update(ptype p);
    
   
    public void delete(int id);
    
    
    public ptype getById(int id);
	

}
