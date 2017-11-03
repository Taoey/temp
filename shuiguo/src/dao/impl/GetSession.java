package dao.impl;

import javax.persistence.Entity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

@Entity public class GetSession {
	public static Session getSession()
	{
	  Session session=null;
	  Configuration configuration=new Configuration().configure();  //��ȡ�����ļ�
	  
	  SessionFactory factory=configuration.buildSessionFactory();   //����Session����
	  
	  session=factory.openSession();  // ��Session
	  return session;
	}

}
