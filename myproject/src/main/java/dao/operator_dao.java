package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.operator;

@Repository
public interface operator_dao {
	@Select("select * from operator")
	public List<operator> select();
	
	 @Insert("insert into operator(nike,name,sex,tel,power,status,comments) values(#{nike},#{name},#{sex},#{tel},#{power},#{status},#{comments})")
     public void insert(operator o);
     
     
	 @Update("update operator set nike=#{nike},name=#{name},sex=#{sex},tel=#{tel},power=#{power},status=#{status},comments=#{comments} where id=#{id}")
     public void update(operator o);
     
     @Delete("delete from operator where id=#{id} ")
     public void delete(int id);
     
//     public void deleteall();
//     
     @Select("select * from operator  where id=#{id} ")
     public operator getById(int id);
//     
     
     @Select("select * from operator where nike=#{username} ")
     public operator getByName(String username);
  
     

}