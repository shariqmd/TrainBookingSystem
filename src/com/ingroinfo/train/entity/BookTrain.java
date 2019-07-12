package com.ingroinfo.train.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name="book_train")
public class BookTrain {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="bid")
	private int id;
	
	@NotNull(message="Required")
	@Column(name="train_name")
	private String trainName;
	
	@NotNull(message="Required")
	@Column(name="passenger_name")
	private String psgName;
	
	@NotNull(message="Required")
	@Column(name="gender")
	private String gender;
	
	@NotNull(message="Required")
	@Column(name="contact_number")
	private Long  phone;
	
	@NotNull(message="Required")
	@Column(name="age")
	private Integer age;
	
	
	@NotNull(message="Required")
	@Column(name="address")
	private String address;
	
	@ManyToOne(cascade = {CascadeType.DETACH, CascadeType.PERSIST,
			CascadeType.PERSIST, CascadeType.REFRESH})
	@JoinColumn(name="forBid")
	private UserRegister comId;
	
	
	public BookTrain() {}


	public BookTrain(String trainName, String psgName, String gender, Long phone, Integer age, String address) {
		this.trainName = trainName;
		this.psgName = psgName;
		this.gender = gender;
		this.phone = phone;
		this.age = age;
		this.address = address;
	}


	public UserRegister getComId() {
		return comId;
	}


	public void setComId(UserRegister comId) {
		this.comId = comId;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTrainName() {
		return trainName;
	}


	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}


	public String getPsgName() {
		return psgName;
	}


	public void setPsgName(String psgName) {
		this.psgName = psgName;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public Long getPhone() {
		return phone;
	}


	public void setPhone(Long phone) {
		this.phone = phone;
	}


	public Integer getAge() {
		return age;
	}


	public void setAge(Integer age) {
		this.age = age;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	@Override
	public String toString() {
		return "BookTrain [id=" + id + ", trainName=" + trainName + ", psgName=" + psgName + ", gender=" + gender
				+ ", phone=" + phone + ", age=" + age + ", address=" + address + "]";
	}



	
	

}
