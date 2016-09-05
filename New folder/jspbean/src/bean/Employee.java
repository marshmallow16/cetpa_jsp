package bean;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

public class Employee{
	private int id;
	public void setId(int id) {
		this.id = id;
	}

	public int getId() {
		return id;
	}

	private String name;
	private String address;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public boolean insert(){
		boolean status=false;
		try{
			Connection con=MyConnection.getConnection();
			String sql="insert into employee(name,address)values(?,?)";
			PreparedStatement ptmt=con.prepareStatement(sql);
			ptmt.setString(1, name);
			ptmt.setString(2, address);
			int i=ptmt.executeUpdate();
			if(i>0)
			{
				status=true;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return status;
	}
	
	public boolean delete(String id){
		boolean status=false;
		try{
			Connection con=MyConnection.getConnection();
			String sql="delete from employee where id=?";
			PreparedStatement ptmt=con.prepareStatement(sql);
			ptmt.setString(1, id);
			int i=ptmt.executeUpdate();
			if(i>0){
				status=true;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return status;
	}
	
	public boolean update(String id){
		boolean status=false;
		try{
			Connection con=MyConnection.getConnection();
			String sql="update employee set name=?,address=? where id=?";
			PreparedStatement ptmt=con.prepareStatement(sql);
			ptmt.setString(1, name);
			ptmt.setString(2, address);
			ptmt.setString(3, id);
			int i=ptmt.executeUpdate();
			if(i>0){
				status=true;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return status;
	}
	
	public ArrayList<Employee> show(){
		ArrayList<Employee> list=new ArrayList<Employee>();
		try{
			Connection con=MyConnection.getConnection();
			String sql="select * from employee";
			PreparedStatement ptmt=con.prepareStatement(sql);
			ResultSet rs=ptmt.executeQuery();
			while(rs.next())
			{
			Employee e=new Employee();
			e.setId(rs.getInt(1));
			e.setName(rs.getString(2));
			e.setAddress(rs.getString(3));
			list.add(e);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	return list;	
	}
	
	public ArrayList<Employee> edit(){
		ArrayList<Employee> list=new ArrayList<Employee>();
		try{
			Connection con=MyConnection.getConnection();
			String sql="select * from employee where id=?";
			PreparedStatement ptmt=con.prepareStatement(sql);
			ptmt.setInt(1,id);
			ResultSet rs=ptmt.executeQuery();
			while(rs.next())
			{
			Employee e=new Employee();
			e.setId(rs.getInt(1));
			e.setName(rs.getString(2));
			e.setAddress(rs.getString(3));
			list.add(e);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	return list;	
	}
}