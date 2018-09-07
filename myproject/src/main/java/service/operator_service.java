package service;

import java.util.List;



import entity.operator;
import util.SearchInfo;

public interface operator_service {
	
	
	public List<operator> select(SearchInfo info);
	
    
    public void insert(operator o);
    
    
   
    public void update(operator o);
    
   
    public void delete(int id);
    
    
    public operator getById(int id);
    
    public operator getByName(String username);
	
	

}
