package Dao;

import java.util.List;

import javax.management.Query;
import javax.transaction.Transactional;


import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.User;


@Repository("udao")
public class UserDaoImple implements UserDao {
	
	
	

	    @Autowired
	    private SessionFactory sessionFactory;
	 
	   
	    
	 
	    public SessionFactory getSessionFactory() {
			return sessionFactory;
		}




		public void setSessionFactory(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}




		@Transactional
		
	    public void save(User u) {
			
	        Session session=sessionFactory.openSession();
	        u.setRoleid("USER_ROLE");
	        u.setEnable(true);
	        session.save(u);
	        session.flush();
	        session.close();
	    }
		@SuppressWarnings("unchecked")
		@Transactional
		public List<User> list1(String username,String password) {
	
			Session session=sessionFactory.openSession();
			System.out.println("inside usernmae  "+username);
			System.out.println("inside password  "+password);
			Criteria c=session.createCriteria(User.class);
			c.add(Restrictions.and(Restrictions.eq("username",username),Restrictions.eq("password",password)));
			//System.out.println("inside list1  "+list1);
			List<User>list1=c.list();
			return list1;
		}
		   
		
		
		
		
		
		
		
		
		
		
		
		
		
		@Transactional
	    public void update(User u) {
	        Session session=sessionFactory.openSession();
	        session.update(u);
	        session.flush();
	        session.close();
	    }
		@Transactional
	    public void delete(User u) {
	        Session session=sessionFactory.openSession();
	        session.delete(u);
	        session.flush();
	        session.close();
	    }




		









}

