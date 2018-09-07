package service;

import java.util.List;




import entity.product;
import util.SearchInfo;

public interface product_service {
	
	
	public List<product> select(SearchInfo info);
	
	public List<product> productlist(SearchInfo info);
	
    public void insert(product p);
    
    
   
    public void update(product p);
    
   
    public void delete(int id);
    
    public void deleteall(String ids);
    
    
    public product getById(int id);


	public List<product> selectitem();
	
	

}
