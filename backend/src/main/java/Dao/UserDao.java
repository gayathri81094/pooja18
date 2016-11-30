package Dao;
import java.util.List;

import model.User;


 
	
	public interface UserDao {
	   
	     
	  
	    void save(User u);
	    void update(User u);
	    void delete(User u);

		List<User> list1(String username,String password);

	
	}
