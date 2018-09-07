package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.product;
import util.SearchInfo;




@Repository
public interface product_dao {
	
	@Select("select product.*,t.id tid,t.name,t.parentid from product inner join type t on product.type_id=t.id ${where}  ")
	public List<product> select(SearchInfo info);
	
	@Select("select product.*,t.id tid,t.name,t.parentid from product inner join type t on product.type_id=t.id where status=1  ")
	public List<product> selectitem();
	
	@Select("select * from product ${where}")
	public List<product> productlist(SearchInfo info);
	
	
	
	
	
	
	 @Insert("insert into product(fullname,type_id,activity,tip,sale,info,price,nowprice,salecount,collectcount,priority,status,pics,comments) values(#{fullname},#{type_id},#{activity},#{tip},#{sale},#{info},#{price},#{nowprice},#{salecount},#{collectcount},#{priority},#{status},#{pics},#{comments})")
     public void insert(product p);
     
     
	 @Update("update product set fullname=#{fullname},type_id=#{type_id},activity=#{activity},tip=#{tip},sale=#{sale},info=#{info},price=#{price},nowprice=#{nowprice},salecount=#{salecount},collectcount=#{collectcount},priority=#{priority},status=#{status},pics=#{pics},comments=#{comments} where id=#{id}")
     public void update(product p);
     
     @Delete("delete from product where id=#{id} ")
     public void delete(int id);
     
 	@Delete("delete from user where id=#{ids}")
 	public void deleteall(String ids);
     
//     public void deleteall();
//     
     @Select("select * from product  where id=#{id} and status=1 ")
     public product getById(int id);
//     
  
     

}