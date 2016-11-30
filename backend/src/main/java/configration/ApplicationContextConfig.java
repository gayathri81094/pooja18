package configration;

import java.util.Properties;


import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import org.springframework.orm.hibernate4.HibernateTransactionManager;

import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import Dao.ProductDao;
import Dao.ProductDaoImple;
import Dao.UserDao;
import Dao.UserDaoImple;
import model.Product;
import model.User;
import service.UserService;
import service.UserServiceImpl;

@Configuration
@ComponentScan("model")
@EnableTransactionManagement


public class ApplicationContextConfig {
	@Bean(name = "dataSource")
	public DataSource getDataSource() {
	    BasicDataSource dataSource = new BasicDataSource();
	    System.out.println("before");
	    dataSource.setDriverClassName("org.h2.Driver");

	    dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
	    System.out.println("before1");
	    dataSource.setUsername("sa");
	    dataSource.setPassword("sa");
	 
	    return dataSource;
	}
	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
	 
	    LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
	    sessionBuilder.addProperties(getHibernateProperties());
	    
	 
	    sessionBuilder.addAnnotatedClasses(User.class);
	    sessionBuilder.addAnnotatedClasses(Product.class);
	    
	    System.out.println("after");
	    
	 
	    return sessionBuilder.buildSessionFactory();
	   
	}
	private Properties getHibernateProperties() {
	    Properties properties = new Properties();
	    System.out.println("before2");
	    properties.put("hibernate.show_sql", "true");
	    properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
	    System.out.println("after2");
	    properties.put("hibernate.hbm2ddl.auto","update");
	    return properties;
	}
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
	    HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
	 
	    return transactionManager;
	}
	
	@Bean(name="udao")
	public UserDao getUserDao()
	{
		return new UserDaoImple();
	}
	@Bean(name="pdao")
	public ProductDao getProductDao()
	{
		return new ProductDaoImple();
	}
	
	
	
}
	
	
	
 

	  