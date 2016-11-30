package model;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity//create table automatically
@Table(name = "USER1")
public class User {
	
        private String name;
		private int contact;
		@Id
		private String username;
		private String password;
		
		//@GeneratedValue(strategy= GenerationType.AUTO)
		private String email;
		private String address;
		private String city;
		private boolean Enable;
		private String Roleid;
		public boolean isEnable() {
			return Enable;
		}

		public void setEnable(boolean enable) {
			Enable = enable;
		}

		public String getRoleid() {
			return Roleid;
		}

		public void setRoleid(String roleid) {
			Roleid = roleid;
		}

		public String getAddress() {
			return address;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		
		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		public int getContact() {
			return contact;
		}

		public void setContact(int contact) {
			this.contact = contact;
		}

	

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		

		

	}


