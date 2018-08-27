package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.orders;

@Repository("order_dao")
public interface order_dao {
	
	@Select(value = "select * from orders where code like CONCAT(CONCAT('%', #{txt}),'%')")
	public List<orders> def(String txt);

	@Insert("insert into orders(date,code,amount,nowamount,address_id,user_id,status,comments) values(#{date},#{code},#{amount},#{nowamount},#{address_id},#{user_id},#{status},#{comments})")
	public void insert(orders r);

	@Delete("delete from orders where id=#{id}")
	public void deleteall(int id);
	
	@Delete("delete from orders where id=#{id}")
	public void delete(int id);
	
	@Update("update orders set status=#{status} where id=#{id}")
	public void update(orders r);
	
	
	
	
}
