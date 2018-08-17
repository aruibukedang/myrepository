package service;

import java.util.List;


import entity.student;

public interface student_service {
	
	
	public List<student> select();
	
    
    public void insert(student s);
    
    
   
    public void update(student s);
    
   
    public void delete(int id);
    
    
    public student getById(int id);
	
	

}
