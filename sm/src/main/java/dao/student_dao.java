package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.student;
import util.SearchInfo;

@Repository
public interface student_dao {
	 @Select("select student.*,c.name cname from student inner join class c on student.classid=c.id ${where} ${limit}  ")
	 public List<student> select(SearchInfo info);
	
     @Insert("insert into student (name,age,status,classid) values(#{name},#{age},#{status},#{classid})")
     public void insert(student s);
     
     
     @Update("update student set name=#{name},age=#{age},status=#{status},classid=#{classid} where id=#{id}")
     public void update(student s);
     
     @Delete("delete from student where id=#{id} ")
     public void delete(int id);
     
     @Select("select * from student  where id=#{id} ")
     public student getById(int id);
     
  
     

}
