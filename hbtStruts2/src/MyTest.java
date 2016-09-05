import java.sql.*;
import java.util.ArrayList;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class MyTest{
	int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String name;
	private String address;
	ArrayList list = new ArrayList();
	public ArrayList getList() {
		return list;
	}
	public void setList(ArrayList list) {
		this.list = list;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String insert(){
		String s=null;
		//return "success";		//key
		try{
			SessionFactory fact= HibernateUtil.getSessionFactory();
			Session session= fact.openSession();
			org.hibernate.Transaction transaction=null;
			try {
				transaction= session.beginTransaction();
			    
				MyTest e=new MyTest();
				e.setName(e.getName());
				e.setAddress(e.getAddress());
			   int i=(int)session.save(e);
			   if(i>0){
				   s="insert";
			   }
			    transaction.commit();
			    System.out.println("successfully");
			}catch(HibernateException e){
				e.printStackTrace();
			}
			
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return s;
	}
	public String display(){
		String s=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "password");
			String sql = "select * from student1";
			PreparedStatement ptmt = con.prepareStatement(sql);
			ResultSet rs=ptmt.executeQuery();
			while(rs.next()){
				MyTest t = new MyTest();
				t.setId(rs.getInt(1));
				t.setName(rs.getString(2));
				t.setAddress(rs.getString(3));
				list.add(t);
				s="display";
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return s;
	}
	public String delete(){
		String s=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "password");
			String sql = "delete from student1 where id=?";
			PreparedStatement ptmt = con.prepareStatement(sql);
			ptmt.setInt(1, id);
			int i = ptmt.executeUpdate();
			if(i>0){
				s=display();
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return s;
	}
	public String edit(){
		String s=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "password");
			String sql = "select * from student1 where id=?";
			PreparedStatement ptmt = con.prepareStatement(sql);
			ptmt.setInt(1,id);
			ResultSet rs=ptmt.executeQuery();
			while(rs.next()){
				MyTest t = new MyTest();
				t.setId(rs.getInt(1));
				t.setName(rs.getString(2));
				t.setAddress(rs.getString(3));
				list.add(t);
				s="edit";
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return s;
	}
	public String update(){
		String s=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "password");
			String sql = "update student1 set name=?,address=? where id=?";
			PreparedStatement ptmt = con.prepareStatement(sql);
			ptmt.setString(1, name);
			ptmt.setString(2, address);
			ptmt.setInt(3, id);
			int x=ptmt.executeUpdate();
			if(x>0){
				s=display();
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return s;
	}
}