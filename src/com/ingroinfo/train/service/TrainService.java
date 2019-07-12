package com.ingroinfo.train.service;



import java.util.List;

import com.ingroinfo.train.entity.AddTrain;
import com.ingroinfo.train.entity.Adminlogin;
import com.ingroinfo.train.entity.BookTrain;
import com.ingroinfo.train.entity.UserRegister;

public interface TrainService {

	Adminlogin adminCheck(Adminlogin theAdmin);

	AddTrain AddTrainValue( AddTrain theAddTrain);

	UserRegister newUserRegiter(UserRegister theRegister);

	Boolean newUserLogin(UserRegister userlogin);

	List<AddTrain> getTrain();

	AddTrain getForUpdate(int theId);

	void deleteTrain(int theId);

	List<AddTrain> showTraindetails();


	AddTrain getTrainName(int theId);

	BookTrain userBookTkt(BookTrain theTrain);

	List<BookTrain> showTicket();

	void CancelTicket(int theId);

	List<BookTrain> disPlayTrain();

	BookTrain ticketUpdateAdmin(int theId);

	void deleteTicketAdmin(int theId);

	BookTrain adminTktUpdate(BookTrain theTrain);

}
