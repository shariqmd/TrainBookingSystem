package com.ingroinfo.train.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;



@Entity
@Table(name="add_train")
public class AddTrain {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="tid")
	private int tid;
	
	@NotEmpty(message="required")
	@Column(name="train_name")
	private String trainName;
	
	
	@Column(name="total_seat")
	private Integer totalSheet;
	
	
	@Column(name="train_fare")
	private Integer trainFare;
	
	@NotNull(message="Required")
	@Column(name="from_place")
	private String fromPlace;
	
	@NotNull(message="Required")
	@Column(name="to_place")
	private String toPlace;
	
	
	@Column(name="duration")
	private Integer duration;
	
	public AddTrain() {
		
	}

	public AddTrain(String trainName, Integer totalSheet, Integer trainFare, String fromPlace, String toPlace,
			Integer duration) {
		this.trainName = trainName;
		this.totalSheet = totalSheet;
		this.trainFare = trainFare;
		this.fromPlace = fromPlace;
		this.toPlace = toPlace;
		this.duration = duration;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getTrainName() {
		return trainName;
	}

	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}

	public Integer getTotalSheet() {
		return totalSheet;
	}

	public void setTotalSheet(Integer totalSheet) {
		this.totalSheet = totalSheet;
	}

	public Integer getTrainFare() {
		return trainFare;
	}

	public void setTrainFare(Integer trainFare) {
		this.trainFare = trainFare;
	}

	public String getFromPlace() {
		return fromPlace;
	}

	public void setFromPlace(String fromPlace) {
		this.fromPlace = fromPlace;
	}

	public String getToPlace() {
		return toPlace;
	}

	public void setToPlace(String toPlace) {
		this.toPlace = toPlace;
	}

	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}

	@Override
	public String toString() {
		return "AddTrain [tid=" + tid + ", trainName=" + trainName + ", totalSheet=" + totalSheet + ", trainFare="
				+ trainFare + ", fromPlace=" + fromPlace + ", toPlace=" + toPlace + ", duration=" + duration + "]";
	}

	

}
