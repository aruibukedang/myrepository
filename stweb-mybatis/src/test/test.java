package test;

import java.io.IOException;
import java.io.InputStream;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import entity.Class1;
import utils.searchInfo;




public class test {
	
	public static void main(String[] args) {
		try {
			InputStream is =Resources.getResourceAsStream("ae.xml");
			SqlSessionFactory f = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = f.openSession();
		List<Class1> user = session.selectList("select",new searchInfo("where name like '%1%'"));
		List<Class1> user1 = session.selectList("select",new searchInfo("where name like '%1%'"));
//		session.delete("del",48);
			
//			session.insert("add","Mi");
		    user.get(0).setA("aaa");
			session.update("update",user.get(0));
			session.commit();
			session.close();
			
			
			
			for (Class1 t : user) {
				System.out.print(t.getId());
			System.out.println(t.getName());			
		
			
			}
		
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
