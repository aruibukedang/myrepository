package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Class;

@Repository
public interface Class_dao {
	@Select("select * from class")
	public List<Class> select();
	
     @Insert("insert into student (name) values(#{name})")
     public void insert(Class s);
     
     
     @Update("update class set name=#{name} where id=#{id}")
     public void update(Class s);
     
     @Delete("delete from class where id=#{id} ")
     public void delete(int id);
     
     public void deleteall();
     
     @Select("select * from class  where id=#{id} ")
     public Class getById(int id);
     
  
     

}