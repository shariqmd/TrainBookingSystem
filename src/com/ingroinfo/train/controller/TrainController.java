package com.ingroinfo.train.controller;

import java.util.List;
import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ingroinfo.train.entity.AddTrain;
import com.ingroinfo.train.entity.Adminlogin;
import com.ingroinfo.train.entity.BookTrain;
import com.ingroinfo.train.entity.UserRegister;
import com.ingroinfo.train.service.TrainService;

@Controller

public class TrainController {
	@Autowired
	private TrainService trainService;
	
	
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder){
	StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
	 dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	/*
	 * @RequestMapping("/test") public String Test() {
	 * System.out.println("In Test Controller"); return "view/home"; }
	 */
	
	@RequestMapping("/logintest")
	public String LoginTest() {
		
		return "masterpage/afterlogindispaly";
	}
	
	@RequestMapping("/mainabout")
	public String Mainabout() {
	
		return "view/aboutus";
	}
	@RequestMapping("/maincontact")
	public String Maincontact() {
		
		return "view/contact";
	}
	
	@RequestMapping("/afterlogin")
	public String AfterLoginDisplay() {
	
		return "masterpage/afterlogindispaly";
	}

	// Admin Controller
	
	@RequestMapping("/test")
	public String Adminlogout() {
		return "view/home";

	}

	@RequestMapping("/adminhome")
	public String AdminHome() {
		
		return "admin/adminhome";
	}

	@RequestMapping("/addtrainbtn")
	public String AddTrainBtn(Model model) {
	

		AddTrain theAddTrain = new AddTrain();

		model.addAttribute("addtrain", theAddTrain);
		return "admin/addtrain";
	}

	@RequestMapping("/showtrainbtn")
	public String UpdateTrain(Model model) {
		AddTrain newShow = new AddTrain();
		List<AddTrain> updateTrain = trainService.getTrain();
		model.addAttribute("showTrain", updateTrain);
		return "admin/showtrain";
	}

	@RequestMapping("/displaybtn")
	public String DisplayTrain(Model theModel) {
		BookTrain bktrain = new BookTrain();
		List<BookTrain> bookTkt = trainService.disPlayTrain();
		theModel.addAttribute("displayTicketAdmin", bookTkt);
		return "admin/displaytrain";
	}

	@RequestMapping("/adminbtnlogin")
	public String AdminLogin(Model model) {
		
		Adminlogin adminLogin = new Adminlogin();
		model.addAttribute("modelAttri", adminLogin);
		return "admin/adminloginform";
	}

	/*
	 * @InitBinder public void InitBinder(WebDataBinder datBinder) {
	 * 
	 * StringTrimmerEditor stringTrim = new StringTrimmerEditor(true);
	 * datBinder.registerCustomEditor(String.class, stringTrim);
	 * 
	 * 
	 * }
	 */
	@RequestMapping("/loginadmin")
	@PostMapping
	public String AdminLogin(@Valid @ModelAttribute("modelAttri") Adminlogin theAdmin, BindingResult theBindingResult,
			Model model, HttpSession session) {

		Adminlogin adminobj = trainService.adminCheck(theAdmin);

		/*
		 * System.out.println("In Admin checked Controller 111"); if
		 * (theBindingResult.hasErrors()) { return "admin/adminloginform"; }
		 * System.out.println("In Admin checked Controller");
		 * System.out.println("Entered User Name is :" + theAdmin.getUname());
		 * System.out.println("This is prossess fo solving the error");
		 * System.out.println("Binding result : |"+ theBindingResult.getModel()); return
		 * "admin/adminhome";
		 */
		if (adminobj != null) {
			if ((theAdmin.getUname()).equals(adminobj.getUname()) && (theAdmin.getPwd()).equals(theAdmin.getPwd())) {
				
				 session.setAttribute("admlogin", "Admin Login Successfully..!");
				return "admin/adminhome";

			}
		}
		model.addAttribute("message", "User Name or Password wrong.. ");
		
		return "admin/adminloginform";

	}

	@RequestMapping("/addtrainsave")
	@PostMapping
	public String addTrainSave(@Valid @ModelAttribute("addtrain") AddTrain theAddTrain, BindingResult theBindingResult,
			Model model, HttpSession session) {

		if (theBindingResult.hasErrors()) {

			return "admin/addtrain";
		}

		AddTrain addTrainObj = trainService.AddTrainValue(theAddTrain);

		session.setAttribute("addtmsg", "Information Added Successully..!");

		return "redirect:/showtrainbtn";
	}

	@GetMapping("/trainUpdate")
	public String adminTrainUpate(@RequestParam("trainId") int theId, Model theModel) {
		AddTrain updateTrain = new AddTrain();
		AddTrain forUpdate = trainService.getForUpdate(theId);
		theModel.addAttribute("addtrain", forUpdate);
		return "admin/addtrain";
	}

	@RequestMapping("/trainDelete")
	public String adminTrainDelete(@RequestParam("trainId") int theId, Model theModel, HttpSession session) {
		trainService.deleteTrain(theId);
		session.setAttribute("trainDelMsg", "Train Information Deleted Successfully..!");

		return "redirect:/showtrainbtn";
	}

	@RequestMapping("/updateTicket")
	public String UpdateTicket(@RequestParam("bookTrainId") int theId, Model theModel) {
		BookTrain bkt = new BookTrain();
		BookTrain ticketUpdate = trainService.ticketUpdateAdmin(theId);
		theModel.addAttribute("adminUpdateTkt", ticketUpdate);

		return "admin/adminupdateticket";
	}

	@RequestMapping("/deleteTicket")
	public String DeleteTicket(@RequestParam("trainIdbook") int theId, Model theModel,HttpSession session) {
		trainService.deleteTicketAdmin(theId);
		session.setAttribute("delTktMsg", "Information Deleted Successfully..!");
		return "redirect:/displaybtn";
	}

	@RequestMapping("/admintktupdate") public String
	AdminUpdate(@ModelAttribute("adminUpdateTkt") BookTrain theTrain, Model themodel, HttpSession session) {
	
	
	 AddTrain userTkt = new AddTrain(); 
	 BookTrain adminbkt=trainService.adminTktUpdate(theTrain);
	 
		session.setAttribute("adminTktUpdate", "Record Update Successfully");
	 
		/* session.setAttribute("msg1","Train Book Successfully"); */
	  
	 return "redirect:/displaybtn"; 
	 
	}
	 
// User Controller
	
	
	/*
	 * @RequestMapping("/test") public String userLogout() { return "view/home"; }
	 */
	
	// add an initbinder ... to convert trim into String
	// remove leading and trailing whitespace
	// resolve issue for our validation

	
	
	
	@RequestMapping("/userhome")
	public String Home() {
		
		return "user/userhome";
}
	
	@RequestMapping("/mainreg")
	public String Userreg(Model model) {
		
		UserRegister ureg = new UserRegister();
		model.addAttribute("newReg", ureg);
		return "user/userreg";
	}
	
	
	@RequestMapping("/traindetailbtn")
	public String TrainDetail(Model theModel) {
		//AddTrain userinfo = new AddTrain();
		List<AddTrain> userinfo= trainService.showTraindetails();
		
		theModel.addAttribute("trainInformation", userinfo);
		return "user/traindetails";
}
	
	/*
	 * @RequestMapping("/trainBook") public String BookNow(@RequestParam("trainId")
	 * int theId, Model theModel) {
	 * 
	 * BookTrain theBook = new BookTrain(); theModel.addAttribute("theBookNow",
	 * theBook); return "user/booktrain"; }
	 */
	
	
	@RequestMapping("/booktrain")
	public String BookLogin( @RequestParam("trainId") int theId, Model theModel) {
  BookTrain btrain = new BookTrain();
  AddTrain getUserInfo= trainService.getTrainName(theId);
      String tname=getUserInfo.getTrainName();
   theModel.addAttribute("booktModel",btrain);
   theModel.addAttribute("tname",tname);
		return "user/booktrain";

	}
	
	@RequestMapping("/showticketbtn")
	public String CancelTrain(Model theModel) {
		List<BookTrain> bkt = trainService.showTicket();
		theModel.addAttribute("bookTktPage",bkt);
		return "user/showticket";
}
	

	@RequestMapping("/userlogin")
	@PostMapping
	public String Mainreg(@Valid @ModelAttribute("userModel") UserRegister userlogin, BindingResult theBindingResult, Model theModel, HttpSession session  ) {
		
		 Boolean loginuseRegister = trainService.newUserLogin(userlogin);
		 
		 if(loginuseRegister == true) {
			 session.setAttribute("userlogin", "User Login Successfully..!");
			 return "user/userhome";
		 }else {
			 theModel.addAttribute("msg","Sorry ! Login Credential is Wrong");
			 
			 return "user/userlogin";
		 }
		
		/*
		 * if(theBindingResult.hasErrors()) {
		 * System.out.println("User login Controller with the Binding Result"); return
		 * "user/userlogin"; }
		 */
	
	}


	@RequestMapping("/userbtnlogin")
	public String UserLogin(Model themodel) {
		
		UserRegister uregister = new UserRegister();
		themodel.addAttribute("userModel", uregister) ;
		return "user/userlogin";	
	}
	
	
	@RequestMapping("/newuserregistration")
	@PostMapping
	public String newUesrReg(@Valid @ModelAttribute("newReg") UserRegister theRegister, BindingResult theBindingResult, Model theModel, HttpSession session) {
	
		if(theBindingResult.hasErrors()) {
		
		return "user/userreg";
		}
		UserRegister newUser = trainService.newUserRegiter(theRegister);
		session.setAttribute("usermsg","New User Register Successfully.. !");
	return "masterpage/afterlogindispaly";
	}
	
	@RequestMapping("/booktkt")
	public String UserBookTkt(@Valid @ModelAttribute("booktModel") BookTrain theTrain, BindingResult theBindingresult, Model themodel, HttpSession session) {
		
		
		/* AddTrain userTkt = new AddTrain(); */
		if(theBindingresult.hasErrors()) {
			
			return "user/booktrain";
			
		}
		
		
		BookTrain bkt=trainService.userBookTkt(theTrain);
		
		session.setAttribute("msg1", "Ticket Book Successfully");
		/*
		 * session.setAttribute("msg1","Train Book Successfully");
		 */
		return "redirect:/traindetailbtn";
	}
	
	@RequestMapping("/cancelTkt")
	public String UserCancelTkt(@RequestParam("ticketId") int theId, Model theModel, HttpSession session) {
	
		trainService.CancelTicket(theId);
		session.setAttribute("msgclc", "Your Ticket Cancel Successfully !");
		return "redirect:/showticketbtn";
		
		
	}
	
	
	
	
}