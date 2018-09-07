package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.address;





@Repository
public interface address_dao {
	
	@Select("select * from address where user_id=#{user_id}")
	public List<address> select(int user_id);
	
	 @Insert("insert into address(user_id,zone,addr,name,tel) values(#{user_id},#{zone},#{addr},#{name},#{tel})")
	 public void Insert(address ad);
     
     
	 @Update("update product set user_id=#{user_id},zone=#{zone},addr=#{addr},name=#{name},tel=#{tel} where id=#{id}")
     public void update(address ad);
     
     @Delete("delete from address where id=#{id} ")
     public void delete(int id);
     
 	@Delete("delete from address where user_id=#{user_id}")
 	public void deleteall(int user_id);
     
    
     
     @Select("select * from address  where user_id=#{user_id} ")
     public address getById(int user_id);
   
  
     

}