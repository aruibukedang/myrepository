package dao;



import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import org.springframework.stereotype.Repository;

import entity.collect;


@Repository("collect_dao")
public interface collect_dao {
	
	@Select("select * from collect")
	public List<collect> select();

	@Insert("insert into collect(user_id,product_id,date) value(#{user_id},#{product_id},#{date} )")
	public void insert(collect c);

	@Delete("delete from collect where id=#{id}")
	public void deleteall(int id);
	
	@Delete("delete from collect where id=#{id}")
	public void delete(int id);
	
	
	
}
	
	

