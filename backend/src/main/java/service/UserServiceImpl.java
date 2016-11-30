package service;



import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import Dao.UserDaoImple;
import model.User;

@Transactional

public class UserServiceImpl implements UserService
{
	//@Autowired
	/*UserDaoImple users;
	
	
	
	public UserDaoImple getUsers() {
		return users;
	}



	public void setUsers(UserDaoImple users) {
		this.users = users;
	}

*/

	public void saveOrUpdate(User user1)

	
	{
		//users.saveOrUpdate(user1);
		
	}

}
