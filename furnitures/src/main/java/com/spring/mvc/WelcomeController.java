 package com.spring.mvc;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Dao.ProductDao;
import Dao.UserDao;
import model.Product;
import model.Register;
import model.User;

@Controller
public class WelcomeController 
{
	HttpSession session;
	private UserDao ud;
	//private Product pd;
	public WelcomeController()
	{
		AnnotationConfigApplicationContext appobj =new AnnotationConfigApplicationContext();
		appobj.scan("configration");
	      appobj.refresh();
	     ud=(UserDao)appobj.getBean("udao");
	}
	
	@RequestMapping("/")

	public	ModelAndView helloworld(){
		
	return new ModelAndView("main","greet","gayu");
	
	}
	
	@RequestMapping("/register")
	public ModelAndView gotoregister(){
	return new ModelAndView("register");
	
	}
    @RequestMapping("/webb")
    public ModelAndView gotowebb(){
    return new ModelAndView("webb");
    }
	@RequestMapping("/about")
	public ModelAndView gotoabout(){
	return new ModelAndView("about");
	
	}
	
	@RequestMapping("/User")
    public ModelAndView gotouser(){
    return new ModelAndView("User");
    }
	
	

	
    @RequestMapping("/main")
    public ModelAndView gotomain(){
    return new ModelAndView("main");
    }
    @RequestMapping("/Signin")
    public ModelAndView register(HttpServletRequest request)throws ServletException,IOException
    {
    	session=request.getSession(true);
		String s= request.getParameter("username");
		String s1=request.getParameter("password");
		List<User>list1=ud.list1(s,s1);
		System.out.println(s);
		System.out.println(s1);
		System.out.println(list1);
		ModelAndView a=new ModelAndView();
		if(!list1.isEmpty())
		{
		
		for(int i=0;i<list1.size();i++)
		{
			if(s.equals(list1.get(i).getUsername())&&(s1.equals(list1.get(i).getPassword())))
			{
			if(list1.get(i).getRoleid().equals("ADMIN_ROLE"))
				{
				System.out.println(list1.get(i).getUsername());
				session.setAttribute("name",list1.get(i).getUsername());
				
				a.setViewName("Admin");
				System.out.println("valid");
				}
			else
			{
				session.setAttribute("name",list1.get(i).getUsername());
				a.setViewName("main");
						
			}
			}
				}
		}
			else
			{
				a.setViewName("webb");
				System.out.println("invalid");
		}
				return a;
		}
   
				
			//{
				//a.setViewName("main");
				//System.out.println("username and password is correct");
		//}
	//}
		//}
		
		//else
		//{
	//a.setViewName("webb");
	  // System.out.println("username and password is incorrect");
	
		//}
	//return a;
    
    
		
    //}
    
    @ModelAttribute("productformobj")
    public Product getproduct(){
		return new Product();
    	
    }
   
    

	@RequestMapping(value="/addregister",method=RequestMethod.GET)
    public String getuserform(Model model){
    	User user=new User();
    	model.addAttribute("user",user);
    	return "register";
    }
    
    @ModelAttribute("user")
    public User createModel(){
    	return new User();
    }
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String addregisterform(@ModelAttribute(value="user")User user,ModelMap model)
  {
    	ud.save(user);
    	return "webb";
    	
       }
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String addloginform(@ModelAttribute(value="user")User user,ModelMap model)
  {
    	
    	return "main";
    	
       }
    @RequestMapping("/logout")
    public String log(HttpSession session)
    		
    {
    	session.invalidate();
    	return "redirect:/main";
    }
    
    
   
    
}