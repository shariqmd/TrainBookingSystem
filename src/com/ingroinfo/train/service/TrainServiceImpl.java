package com.ingroinfo.train.service;

import java.util.List;

import javax.transaction.Transactional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ingroinfo.train.dao.TrainDAO;
import com.ingroinfo.train.entity.AddTrain;
import com.ingroinfo.train.entity.Adminlogin;
import com.ingroinfo.train.entity.BookTrain;
import com.ingroinfo.train.entity.UserRegister;

@Service
public class TrainServiceImpl implements TrainService {
	
	@Autowired
	private TrainDAO trainDao;

	@Override
	@Transactional
	public Adminlogin adminCheck(Adminlogin theAdmin) {
		
		return trainDao.adminCheck(theAdmin);
	}

	@Override
	@Transactional
	public AddTrain AddTrainValue( AddTrain theAddTrain) {
		
		return trainDao.AddTrainValue(theAddTrain);
	}

	@Override
	@Transactional
	public UserRegister newUserRegiter(UserRegister theRegister) {
		
		return trainDao.newUserRegister(theRegister);
	}

	@Override
	@Transactional
	public Boolean newUserLogin(UserRegister userlogin) {
		
		return trainDao.newUserLogin(userlogin);	}

	@Override
	@Transactional
	public List<AddTrain> getTrain() {
		// TODO Auto-generated method stub
		return trainDao.getTrain();
	}

	@Override
	@Transactional
	public AddTrain getForUpdate(int theId) {

		System.out.println("controller 4");
		return trainDao.getForUpdate(theId);
	}

	@Override
	@Transactional
	public void deleteTrain(int theId) {
		
		trainDao.deleteTrain(theId);
	}

	@Override
	@Transactional
	public List<AddTrain> showTraindetails() {
		// TODO Auto-generated method stub
		return trainDao.showTraindetails();
	}

	@Override
	@Transactional
	public AddTrain getTrainName(int theId) {
		// TODO Auto-generated method stub
		return trainDao.getTrainName(theId);
	}

	@Override
	@Transactional
	public BookTrain userBookTkt(BookTrain theTrain) {
		// TODO Auto-generated method stub
		return trainDao.userBookTkt(theTrain);
	}

	@Override
	@Transactional
	public List<BookTrain> showTicket() {
		// TODO Auto-generated method stub
		return trainDao.showTicket();
	}

	@Override
	@Transactional
	public void CancelTicket(int theId) {
		// TODO Auto-generated method stub
		trainDao.CancelTicket(theId);
	}

	@Override
	@Transactional
	public List<BookTrain> disPlayTrain() {
		// TODO Auto-generated method stub
		return trainDao.disPlayTrain();
	}

	@Override
	@Transactional
	public BookTrain ticketUpdateAdmin(int theId) {
		// TODO Auto-generated method stub
		return trainDao.ticketUpdateAdmin(theId);
	}

	@Override
	@Transactional
	public void deleteTicketAdmin(int theId) {
		trainDao.deleteTicketAdmin(theId);
		
	}

	@Override
	@Transactional
	public BookTrain adminTktUpdate(BookTrain theTrain) {
		// TODO Auto-generated method stub
		return trainDao.adminTktUpdate(theTrain);
	}

	

}
