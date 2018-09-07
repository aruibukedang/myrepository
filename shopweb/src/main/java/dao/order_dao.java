package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.ObjectProvider;
import org.springframework.stereotype.Repository;

import entity.orders;

@Repository("order_dao")
public interface order_dao {
	
	@Select("select * from orders where user_id=#{user_id} order by id desc")
	public List<orders> select(int user_id);

	@Insert("insert into orders(date,code,amount,nowamount,address_id,user_id) values(#{date},#{code},#{amount},#{nowamount},#{address_id},#{user_id})")
	public void insert(orders r);
	
	@Select("select * from orders where user_id=#{user_id} ORDER BY id desc limit 1" )
	public  orders getByUid(int user_id);

	@Delete("delete from orders where id=#{id}")
	public void deleteall(int id);
	
	@Delete("delete from orders where id=#{id}")
	public void delete(int id);
	
	@Update("update orders set status=#{status} where id=#{id}")
	public void update(orders r);
	
	@Update("update orders set comments=#{comments} where id=#{id}")
	public void update1(orders r);
	
	
	
	
}
