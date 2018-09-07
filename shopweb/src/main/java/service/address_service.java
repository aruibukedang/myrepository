package service;

import java.util.List;



import entity.address;


public interface address_service {

	

	public List<address> select(int user_id);


	 public void Insert(address ad);
     
     

     public void update(address ad);
     

     public void delete(int id);

 	public void deleteall(int user_id);
     
    
     

     public address getById(int user_id);
   
}
