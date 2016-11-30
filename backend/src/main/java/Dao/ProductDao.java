package Dao;

import java.util.List;

import model.Product;

public interface ProductDao 

{
	
	void save(Product p);
	
	
	void update(Product p);
	void delete(int productid);
	public List<Product> list1();
	public List<Product> prod(String categories);
	public Product getproductbyid(int productid);


	


	

}
