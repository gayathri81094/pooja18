package model;


	import javax.persistence.Column;

	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
	import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
	@Entity
	@Table(name="Product")
	public class Product {
	
		
            @Id
            @GeneratedValue(strategy=GenerationType.AUTO)
            private int productid;
            
            @NotEmpty
            @Size(min=2,max=15)
			private String productname;
            
            @NotNull 
           @Min(2)
			private int productprice;
            
            @NotEmpty
            private String categories;


            @NotNull
            private int quantity;
            
            public int getQuantity() {
				return quantity;
			}

			public void setQuantity(int quantity) {
				this.quantity = quantity;
			}

			public String getCategories() {
				return categories;
			}

			public void setCategories(String categories) {
				this.categories = categories;
			}

			public int getProductid() {
				return productid;
			}

			public void setProductid(int productid) {
				this.productid = productid;
			}

			public String getProductname() {
				return productname;
			}

			public void setProductname(String productname) {
				this.productname = productname;
			}

			public int getProductprice() {
				return productprice;
			}

			public void setProductprice(int productprice) {
				this.productprice = productprice;
			}

			
		}
