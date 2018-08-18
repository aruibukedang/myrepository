package service;

import java.util.List;


import entity.Class;

public interface Class_service {
	
	
	public List<Class> select();
	
    
    public void insert(Class s);
    
    
   
    public void update(Class s);
    
   
    public void delete(int id);
    
    
    public Class getById(int id);
	
	

}
