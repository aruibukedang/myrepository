package dao;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import org.springframework.stereotype.Repository;

import entity.shopcar;
import entity.user;

@Repository("shopcar_dao")
public interface shopcar_dao {
	
	@Select("select * from shopcar where user_id=#{user_id}")
	public List<shopcar> select(int user_id);
	
	
   @Select("SELECT shopcar.*,p.fullname,p.sale,p.price,p.nowprice,p.comments,p.pics FROM shopcar LEFT JOIN product p on shopcar.product_id=p.id where shopcar.user_id=#{user_id}")
   public List<shopcar> goshopcar(int user_id);
	

	@Insert("insert into shopcar(user_id,product_id,count) values(#{user_id},#{product_id},#{count})")
	public void insert(shopcar s);
	/*
	@Delete("delete from orders where id=#{id}")
	public void deleteall(int id);
	
	@Delete("delete from orders where id=#{id}")
	public void delete(int id);*/


	 @Delete("delete from shopcar where id=#{id}")
     public void delete(int id);
	 
	 @Delete("delete from shopcar where user_id=#{user_id}")
	 public void deletecar(int user_id);
	 
	 @Delete("delete from shopcar where user_id=#{user_id}")
     public void deleteall(int user_id);
	
	
	
	
}
