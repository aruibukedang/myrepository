package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;


import entity.ptype;
import util.SearchInfo;

@Repository
public interface ptype_dao {
	@Select("select * from type ")
	public List<ptype> select1();
	
	@Select("select type.*,t.name parent_name from type left join type t on type.parent.id=t.id ${where} ")
	public List<ptype> select(SearchInfo info);
	
     @Insert("insert into type (name,parentid) values(#{name})")
     public void insert(ptype p);
     
     
     @Update("update type set name=#{name},parentid=#{parentid} where id=#{id}")
     public void update(ptype p);
     
     @Delete("delete from type where id=#{id} ")
     public void delete(int id);
     
 
     @Select("select * from type  where id=#{id} ")
     public ptype getById(int id);
     
  
     

}