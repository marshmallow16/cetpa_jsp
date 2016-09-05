import javax.transaction.Transaction;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class Main{
	
	
	public static void main(String[]args){
		
		SessionFactory fact= HibernateUtil.getSessionFactory();
		Session session= fact.openSession();
		org.hibernate.Transaction transaction=null;
		try {
			transaction= session.beginTransaction();
		    Employee e1= new Employee();
		    e1.setName("satish");
		    e1.setAddress("deoria");
		    session.save(e1);
		    transaction.commit();
		    System.out.println("successfully");
		}catch(HibernateException e){
			e.printStackTrace();
		}
		
	}
}