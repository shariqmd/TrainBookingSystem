package com.ingroinfo.train.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;




@Entity
@Table(name="admin_login")
public class Adminlogin {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	
	@NotEmpty(message="Required")
	@Column(name="user_name")
	private String uname;
	
	@NotEmpty(message="Required")
	@Column(name="password")
	private String pwd;
	
	
	public Adminlogin() {}

	public Adminlogin(String uname, String pwd) {
		this.uname = uname;
		this.pwd = pwd;
	}


	public Adminlogin(int id, String uname, String pwd) {
		this.id = id;
		this.uname = uname;
		this.pwd = pwd;
	}




	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUname() {
		return uname;
	}


	public void setUname(String uname) {
		this.uname = uname;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	@Override
	public String toString() {
		return "Adminlogin [id=" + id + ", uname=" + uname + ", pwd=" + pwd + "]";
	}
	
	

}
