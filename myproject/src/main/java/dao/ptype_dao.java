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
	@Select("select type.*, t.name parent_name from type left join type t on type.parentid=t.id ${where} ${limit}")
	public List<ptype> select(SearchInfo s);//t  父表
//LEFT JOIN 关键字会从左表 (table_name1) 那里返回所有的行，即使在右表 (table_name2) 中没有匹配的行。
	
	@Select("select * from type ")
	public List<ptype> selectAll();
	
	@Insert("insert into type (name,parentid) values(#{name},#{parentid})")
	public void insert(ptype t);//新增的时候能显示状态传软参数

	@Delete("delete from type where id=#{id}")
	public void delete(int id);//基本类型自动植入参数

	@Update("update type set parentid=#{parentid},name=#{name}  where id=#{id}")
	public void update(ptype t);


	//查询一条记录
	@Select("select * from type  where id=#{id}")
	public ptype  getById(int id);
}
