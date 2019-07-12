package com.ingroinfo.train.dao;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ingroinfo.train.entity.*;
import com.ingroinfo.train.service.TrainService;

@Repository
public class TrainDAOImpl implements TrainDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Adminlogin adminCheck(Adminlogin theAdmin) {
		Session session=sessionFactory.getCurrentSession();
		
			Query<Adminlogin> adminQry =session.createQuery("from Adminlogin where user_name=:user and password=:pass");
		adminQry.setParameter("user", theAdmin.getUname());
		adminQry.setParameter("pass", theAdmin.getPwd());
		Adminlogin logAdmin=(Adminlogin) adminQry.uniqueResult();
		return logAdmin;
	}

	@Override
	public AddTrain AddTrainValue(AddTrain theAddTrain) {
		
	
		Session session =sessionFactory.getCurrentSession();
		session.saveOrUpdate(theAddTrain);

//session.save(theAddTrain);

return theAddTrain;
	
	}

	@Override
	public UserRegister newUserRegister( UserRegister theRegister) {
	
		Session session = sessionFactory.getCurrentSession();
		
		session.save(theRegister);
		
		return theRegister;
	}



	@Override
	public Boolean newUserLogin(UserRegister userlogin) {
		
		Session session = sessionFactory.getCurrentSession();
		Query<UserRegister> theQuery=session.createQuery("from UserRegister where user_email=:uid and user_pwd=:pass");
		
		theQuery.setParameter("uid",userlogin.getEmail());
		theQuery.setParameter("pass", userlogin.getPwd());
		
		if((UserRegister) theQuery.uniqueResult()!=null) {
			return true;
		}else {
		return false;
		}
		


		
		
	}

	@Override
	public List<AddTrain> getTrain() {
		Session session=sessionFactory.getCurrentSession();
		
		Query<AddTrain> qry= session.createQuery("from AddTrain", AddTrain.class);
		
		List<AddTrain>  getAllTrain = qry.getResultList();
		
		return getAllTrain;
	}

	@Override
	public AddTrain getForUpdate(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
AddTrain theUpdate=currentSession.get(AddTrain.class, theId);

		return theUpdate;
	}

	@Override
	public void deleteTrain(int theId) {
		
		Session currentSession =sessionFactory.getCurrentSession();	
		
		Query qry= currentSession.createQuery("delete from AddTrain where id=:delId ");
		qry.setParameter("delId", theId);
		qry.executeUpdate();
		
	}

	@Override
	public List<AddTrain> showTraindetails() {
		Session currentSession =sessionFactory.getCurrentSession();
		
		Query<AddTrain> qry= currentSession.createQuery("from AddTrain", AddTrain.class);
		
		List<AddTrain> showAllTrain=qry.getResultList();
		
		return showAllTrain;
	}


	@Override
	public AddTrain getTrainName(int theId) {
				Session currentSession = sessionFactory.getCurrentSession();
		
       AddTrain theUpdate=currentSession.get(AddTrain.class, theId);

		return theUpdate;
	}

	@Override
	public BookTrain getUserName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BookTrain userBookTkt(BookTrain theTrain) {
		Session currentSession=sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theTrain);
		return null;
	}

	@Override
	public List<BookTrain> showTicket() {
		
		Session currentSession =sessionFactory.getCurrentSession();
		Query<BookTrain> qry =currentSession.createQuery("from BookTrain", BookTrain.class);
		List<BookTrain> allTicket =qry.getResultList();
		return allTicket;
	}

	@Override
	public void CancelTicket(int theId) {
		
	Session currentSession= sessionFactory.getCurrentSession();
	
	Query qry = currentSession.createQuery("delete from BookTrain where id=:bkId ");
	qry.setParameter("bkId", theId);
	qry.executeUpdate();
		
	}

	@Override
	public List<BookTrain> disPlayTrain() {
		Session currentSession =sessionFactory.getCurrentSession();
		Query<BookTrain> qry= currentSession.createQuery("from BookTrain order by trainName", BookTrain.class);
		List<BookTrain> displayTrain=qry.getResultList();
		return displayTrain;
	}

	@Override
	public BookTrain ticketUpdateAdmin(int theId) {
		Session curentSession= sessionFactory.getCurrentSession();
	BookTrain adminUpdateTkt=curentSession.get(BookTrain.class, theId);
		return adminUpdateTkt;
	}

	@Override
	public void deleteTicketAdmin(int theId) {
		Session curreSession= sessionFactory.getCurrentSession();
		Query qry=curreSession.createQuery(" delete from BookTrain where id=:bookid");
		qry.setParameter("bookid", theId);
		qry.executeUpdate();
	}

	@Override
	public BookTrain adminTktUpdate(BookTrain theTrain) {
		Session currentSession=sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theTrain);
		return null;
	}



	
	

	
	

}
