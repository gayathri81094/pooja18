package com.spring.mvc;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Dao.ProductDao;
import model.Product;
import model.User;
@Controller
public class HomeController {

	
		private ProductDao pd;
		public ProductDao getPd()
		{
			return pd;
		}



		public void setPd(ProductDao pd) {
			this.pd = pd;
		}



		public HomeController()
		{
			@SuppressWarnings("resource")
			AnnotationConfigApplicationContext appobj =new AnnotationConfigApplicationContext();
			appobj.scan("configration");
		      appobj.refresh();
		     pd=(ProductDao)appobj.getBean("pdao");
		}
		
		
	    
	    @RequestMapping(value="/addproduct",method=RequestMethod.GET)
	    public String products(Model model){
	    	Product product=new Product();
	    	model.addAttribute("productformobj",product);
	    	return "productform";
	    }
	    
	    
	    @RequestMapping(value = "/addproducts", method = RequestMethod.POST)
	    public String products1(@ModelAttribute(value="productformobj")Product product,ModelMap model)
	  {
	    	
	    	System.out.println("gyjhg");
	    	pd.save(product);
	    	return "redirect:/Listpage";
	      
	    }
	    @RequestMapping(value="/Listpage")
	    public ModelAndView listallproduct()
	    {
	    	List<Product> prod=pd.list1();
	    	
			return new ModelAndView("Listpage","lobj",prod);
	    }
	    /*@RequestMapping("/getproductbyid/{productid}")
	    public ModelAndView list(@PathVariable(value="productid")int productid){
	    	Product ob1=pd.getproductbyid(productid);
	    	return new ModelAndView("productpage","showobj",ob1);
	    	
	    }*/
	    
	    @RequestMapping("/admin/product/update/{productid}")
	    public ModelAndView editproductform(@PathVariable(value="productid")int productid)
	    { 
	    	Product prod=this.pd.getproductbyid(productid);
	    	return new ModelAndView("editproductform","editProdObj",prod);
	    }
	    @RequestMapping(value="/admin/product/update",method = RequestMethod.POST)
	    public String edit(@ModelAttribute(value="editProdObj")Product productid)
	    {
	    	pd.update(productid);
	    	return "redirect:/Listpage";
	    
	    }
	    @RequestMapping("/admin/product/delete/{productid}")
	    public String deleteproductbyid(@PathVariable(value="productid")int productid){
	    pd.delete(productid);
			return "redirect:/Listpage";
	    }
	    
	    

		@RequestMapping("/Catog")
		
		 public ModelAndView viewlist(HttpServletRequest req) {
			List<Product> pt=pd.prod(req.getParameter("cat"));
			ModelAndView pro=new ModelAndView("Catog");
			pro.addObject("prot",pt);
			return pro;
			
		   }
		
}
		
		
		

