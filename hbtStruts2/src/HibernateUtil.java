package bean;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	
	private static  SessionFactory sessionFactory;
	
	static {
		
		try {
			
			sessionFactory= new Configuration().configure().buildSessionFactory();
		}catch(Throwable ex){
			ex.printStackTrace();
			throw new ExceptionInInitializerError(ex);
		}
	}
	public static SessionFactory getSessionFactory(){
		
		return sessionFactory;
	}
	
}