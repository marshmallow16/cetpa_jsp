
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import com.opensymphony.xwork2.ActionSupport;


public class MyTest extends ActionSupport{
	
	public int id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	ArrayList<MyTest> list=new ArrayList<MyTest>();
	public ArrayList<MyTest> getList() {
		return list;
	}

	public void setList(ArrayList<MyTest> list) {
		this.list = list;
	}

	private String name;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	private String password=null;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	
	public String insert()//method of struts
	{   
		String status="false";
		if(name==""||password=="")
		{return status;}
		else{
	
		
		SessionFactory fact= HibernateUtil.getSessionFactory();
		Session session= fact.openSession();
		org.hibernate.Transaction transaction=null;
		try {
			transaction= session.beginTransaction();
		    MyTest e1= new MyTest();
		    e1.setName(name);
		    e1.setPassword(password);
		    session.save(e1);
		    transaction.commit();
		    status=display();
		    
		}catch(HibernateException e){
			e.printStackTrace();
		}}
		return status;
	
	}
	public String update()
	{   String status="false";
	SessionFactory fact= HibernateUtil.getSessionFactory();
	Session session= fact.openSession();
	org.hibernate.Transaction transaction=null;
	
		try {
			transaction= session.beginTransaction();
		    
			MyTest e1=(MyTest)session.get(MyTest.class, id);
			e1.setName(name);
			e1.setPassword(password);
			session.update(e1);
			transaction.commit();
			status=display();
		    
		   
	    
	}catch(HibernateException e){
		e.printStackTrace();
	}
	return status;

}
		
	
	public String delete()//method of struts
	{   
		String status="false";
		    SessionFactory fact= HibernateUtil.getSessionFactory();
			Session session= fact.openSession();
			org.hibernate.Transaction transaction=null;
			try {
				transaction= session.beginTransaction();
			    
				MyTest e1=(MyTest)session.get(MyTest.class, id);
				session.delete(e1);
				transaction.commit();
				status=display();	    
			   
			}catch(HibernateException e){
				e.printStackTrace();
			}
	
	return status;
		}
	public String edit()
	{   
		String status="false";
		String s1=null;
		SessionFactory fact= HibernateUtil.getSessionFactory();
		Session s= fact.openSession();
		org.hibernate.Transaction transaction=null;
			try {
				transaction= s.beginTransaction();
				Criteria crit=s.createCriteria(MyTest.class);
				 Criterion cn=Restrictions.eq("id", id);
				 crit.add(cn);
				 list=(ArrayList<MyTest>) crit.list();
			   transaction.commit();
			status="edit";
		    
		   
		}catch(HibernateException e){
			e.printStackTrace();
		}
	
	return status;
		}
	
	
			public String display(){
				String s1=null;
					SessionFactory fact= HibernateUtil.getSessionFactory();
					Session s= fact.openSession();
					org.hibernate.Transaction transaction=null;
						try {
							transaction= s.beginTransaction();
						    Criteria crit=s.createCriteria(MyTest.class);
						     list=(ArrayList<MyTest>) crit.list();
						    s1="display";
						    }
				
			catch (HibernateException ex) {  
				ex.printStackTrace();  
				transaction.rollback();  
				}  
				
				return s1;
			}
}
	