package com.ingroinfo.train.entity;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import javax.validation.constraints.Email;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;





@Entity
@Table(name="user_reg")
public class UserRegister {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="bid")
 private int id;
	
	@NotNull(message="Required")
	@Column(name="user_fname")
 private String firstName;
 
	@NotNull(message="Required")
	@Column(name="user_lname")
 private String lastName;
 
	@NotNull(message="Required")
	@Email(message="valid Email")
	@Column(name="user_email")
 private String email;
 
	
	@NotNull(message="Reqired")
	@Size(min=5, message="min 5 ")
	@Size(max=15, message="max 15")
	@Column(name="user_pwd")
	private String pwd;
 
	@NotNull(message="Required")
	
	@Column(name="phone")
	private Long phone;
	
	@NotNull(message="Required")
	@Column(name="address")
	private String address;
	
	@OneToMany(mappedBy = "comId",
			cascade = {CascadeType.DETACH, CascadeType.MERGE
					, CascadeType.PERSIST, CascadeType.REFRESH}
			)
	private List<BookTrain> bookInfo;
	 
public UserRegister() {}

public UserRegister(String firstName, String lastName, String email, String pwd, Long phone, String address) {
	this.firstName = firstName;
	this.lastName = lastName;
	this.email = email;
	this.pwd = pwd;
	this.phone = phone;
	this.address = address;
}

public List<BookTrain> getBookInfo() {
	return bookInfo;
}

public void setBookInfo(List<BookTrain> bookInfo) {
	this.bookInfo = bookInfo;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getFirstName() {
	return firstName;
}

public void setFirstName(String firstName) {
	this.firstName = firstName;
}

public String getLastName() {
	return lastName;
}

public void setLastName(String lastName) {
	this.lastName = lastName;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPwd() {
	return pwd;
}

public void setPwd(String pwd) {
	this.pwd = pwd;
}

public Long getPhone() {
	return phone;
}

public void setPhone(Long phone) {
	this.phone = phone;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

@Override
public String toString() {
	return "UserRegister [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
			+ ", pwd=" + pwd + ", phone=" + phone + ", address=" + address + "]";
}


// add convenience methods for bi directional relationship 

	/*
	 * public void add(BookTrain tempBooking) { if(bookInfo == null) { bookInfo =
	 * new ArrayList<BookTrain>(); } bookInfo.add(tempBooking);
	 * 
	 * tempBooking.setComId(this); }
	 */
	
}
