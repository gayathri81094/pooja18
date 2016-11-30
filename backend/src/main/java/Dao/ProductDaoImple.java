package Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Product;


@Repository("pdao")

public class ProductDaoImple implements ProductDao {
	@Autowired
    private SessionFactory sessionFactory;
 
   
    
 
    public SessionFactory getSessionFactory() {
		return sessionFactory;
	}




	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}




	@Transactional
    public void save(Product p) {
        Session session=sessionFactory.openSession();
        session.save(p);
        session.flush();
        session.close();
    }
	@Transactional
    public void update(Product p) {
        Session session=sessionFactory.openSession();
        
        session.update(p);
        session.flush();
        session.close();
    }
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Product> list1()
	{
	Session session=sessionFactory.openSession();

	List<Product> list1=session.createQuery("from Product").list();
	return list1;
	}




	public Product getproductbyid(int productid) {
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class,productid);
		session.close();
		return product;
		
		
		// TODO Auto-generated method stub
		
	}




	
			@SuppressWarnings("unused")
			@Transactional
		    public void delete(int productid)
			{
		        Session session=sessionFactory.openSession();
		        Product product=(Product)session.get(Product.class,productid);
		        session.delete(product);
		        session.flush();
		        session.close();
		    }
		// TODO Auto-generated method stub




			public List<Product> prod(String categories) {
				Session session=sessionFactory.openSession();
				Criteria c=session.createCriteria(Product.class);
				c.add(Restrictions.eq("categories", categories));
				
				List<Product> lis=c.list();
						System.out.println(lis);
				// TODO Auto-generated method stub
				return lis;
			}




			



			
		
	}




