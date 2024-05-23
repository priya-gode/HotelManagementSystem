package com.klef.jfsd.springboot.controller;

import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.DuplexRoom;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.PentHouse;
import com.klef.jfsd.springboot.model.StandardRoom;
import com.klef.jfsd.springboot.model.Suite;
import com.klef.jfsd.springboot.model.VillaRoom;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.CustomerService;
import com.klef.jfsd.springboot.service.EmailService;
import com.klef.jfsd.springboot.service.EmployeeService;
import com.klef.jfsd.springboot.service.StandardService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired 
	private EmailService emailService;

	
	
	@Autowired
	private StandardService standardService;
	
	@GetMapping("/")
	public String main() {
		return "index";
	}
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {     //URI & method name can be different
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	  public ModelAndView checkadminlogin(HttpServletRequest request)
	  {
	    ModelAndView mv = new ModelAndView(); 
	    
	    
	    String uname = request.getParameter("uname");
	    
	     String pwd = request.getParameter("pwd");
	     
	    Admin admin = adminService.checkadminlogin(uname, pwd);
	    
	    if(admin!=null) {
	    	mv.setViewName("adminhome");
	    }else {
	    	mv.setViewName("adminlogin");
		      mv.addObject("message", "Login Failed");
	    }
	    return mv;
	  }
	@GetMapping("viewemployee")
	public ModelAndView viewemployee() {     //URI & method name can be different
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewemployee");
		return mv;
	}
	@GetMapping("adminhome")
	public ModelAndView home() {     //URI & method name can be different
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	
	@GetMapping("viewallemps")
	public ModelAndView viewemps(){
		List<Employee> emplist=adminService.viewallemps();
		
		ModelAndView mv=new ModelAndView("viewallemps");
		mv.addObject("empdata",emplist);
		return mv;
	}
	@GetMapping("viewallcustomers")
	public ModelAndView viewallcustomers(){
		List<Customer> customerlist=adminService.viewallcustomers();
		
		ModelAndView mv=new ModelAndView("viewallcustomers");
		mv.addObject("customerdata",customerlist);
		return mv;
	}
	
	  @GetMapping("counts")
	  public ModelAndView counts()
	  {
		  long ecount=adminService.empcount();
		  long ccount=adminService.customercount();
		  
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("counts");
	    mv.addObject("ecount",ecount);
	    mv.addObject("ccount",ccount);
	    return mv;
	  }
	  
	  
	  
	  
	  
	
	
	
	
	
	  
	  
	  @GetMapping("customerhome")
		public ModelAndView home1() {     //URI & method name can be different
			ModelAndView mv=new ModelAndView();
			mv.setViewName("customerhome");
			return mv;
		}
	
	@GetMapping("empreg")
	  public ModelAndView empregistration()
	  {
	    ModelAndView mv=new ModelAndView();
	    mv.setViewName("employeeregistration");
	    return mv;
	  }
	  
	  @PostMapping("insertemp")
	  public ModelAndView insertaction(HttpServletRequest request)
	  {
		  
	    String msg=null;
	    ModelAndView mv=new ModelAndView();
	    try
	    {
	      String name = request.getParameter("name");
	        String gender = request.getParameter("gender");
	        String dob = request.getParameter("dob");
	        String role = request.getParameter("role");
	        String sal = request.getParameter("salary");
	        double salary = Double.parseDouble(sal);
	        String email = request.getParameter("email");
	        String pwd = request.getParameter("pwd");
	        String location = request.getParameter("location");
	        String contact = request.getParameter("contact");
	        
	        
	        Employee emp=new Employee();
	          emp.setName(name);
	          emp.setGender(gender);
	          emp.setDateofbirth(dob);
	          emp.setRole(role);
	          emp.setSalary(salary);
	          emp.setEmail(email);
	          emp.setPassword(pwd);
	          emp.setLocation(location);
	          emp.setContact(contact);
	          emp.setActive(false);
	          
	          msg=employeeService.addemployee(emp);
	          
	          mv.setViewName("employeeregistration");
	        mv.addObject("message","Employee Registered Successfully");
	    }
	    catch(Exception e)
	    {
	      msg=e.getMessage();
	      
	      mv.setViewName("employeeregistration");
	      mv.addObject("message","Couldn't Register");
	    }
	    
	    return mv;
	  }
	  @GetMapping("emplogin")
	  public ModelAndView emplogin()
	  {
	    ModelAndView mv=new ModelAndView();
	    mv.setViewName("employeelogin");
	    return mv;
	  }
	  @PostMapping("checkemplogin")
	  public ModelAndView checkemplogin(HttpServletRequest request)
	  {
	    ModelAndView mv=new ModelAndView();
	    String email=request.getParameter("email");
	    String pwd=request.getParameter("pwd");
	    
	    Employee emp=employeeService.checkemplogin(email, pwd);
	    if(emp!=null)
	    {
	      //session
	      
	      HttpSession session=request.getSession();
	      session.setAttribute("eid", emp.getId());  //eid is a session variable
	      session.setAttribute("ename", emp.getName());  //ename is a session variable
	      
	      //session
	      mv.setViewName("employeehome");
	    }
	    else
	    {
	      mv.setViewName("employeelogin");
	      mv.addObject("message", "Login Failed");
	    }
	    return mv;
	  }
	  
	  @GetMapping("booking")
	  public String booking()
	  {
	    return "booking";
	  }
	  @GetMapping("room")
	  public String room()
	  {
	    return "room";
	  }
	  @GetMapping("rooms")
	  public String rooms()
	  {
	    return "rooms";
	  }
	 

	  @GetMapping("standardrooms")
	  public String standardrooms()
	  {
		  
	    return "standardroom";
	  }
	  @GetMapping("penthouses")
	  public String penthouses()
	  {
	    return "penthouse";
	  }
	  @GetMapping("suites")
	  public String suites()
	  {
	    return "suite";
	  }
	  @GetMapping("duplexrooms")
	  public String dulexrooms()
	  {
	    return "duplexroom";
	  }
	  @GetMapping("villarooms")
	  public String villarooms()
	  {
	    return "villaroom";
	  }
	  
	  @GetMapping("chatbot")
	    public String chatbot()
	    {
	      return "chatbot";
	    }


	  @GetMapping("viewallstandard")
	  public ModelAndView viewallstandard()
	  {
	    List<StandardRoom> standlist=employeeService.viewallstandard();
	    ModelAndView mv=new ModelAndView("viewallstandard");
	    mv.addObject("standdata",standlist);
	    
	    return mv;
	  }
	  @GetMapping("viewallduplex")
	  public ModelAndView viewallduplex()
	  {
	    List<DuplexRoom> dupllist=employeeService.viewallduplex();
	    ModelAndView mv=new ModelAndView("viewallduplex");
	    mv.addObject("duplexdata",dupllist);
	    
	    return mv;
	  }
	  @GetMapping("viewallvilla")
	  public ModelAndView viewallvilla()
	  {
	    List<VillaRoom> villalist=employeeService.viewallvilla();
	    ModelAndView mv=new ModelAndView("viewallvilla");
	    mv.addObject("villadata",villalist);
	    
	    return mv;
	  }
	  @GetMapping("viewallsuite")
	  public ModelAndView viewallsuite()
	  {
	    List<Suite> suitelist=employeeService.viewallsuite();
	    ModelAndView mv=new ModelAndView("viewallsuite");
	    mv.addObject("suitedata",suitelist);
	    
	    return mv;
	  }
	  @GetMapping("viewallpenthouse")
	  public ModelAndView viewallpenthouse()
	  {
	    List<PentHouse> pentlist=employeeService.viewallpenthouse();
	    ModelAndView mv=new ModelAndView("viewallpenthouse");
	    mv.addObject("housedata",pentlist);
	    
	    return mv;
	  }

	  @GetMapping("history")
	    public ModelAndView updatehistory(HttpServletRequest request)
	    {
		  ModelAndView mv = new ModelAndView();
	      mv.setViewName("history");
	      HttpSession session=request.getSession();
	        mv.addObject("eid", session.getAttribute("eid"));
	        mv.addObject("ename", session.getAttribute("ename"));
	        mv.addObject("eemail",session.getAttribute("eemail"));
	        String eemail=(String)session.getAttribute("eemail");
	      List<Object> emplist = standardService.getAllDataById(eemail);
	      mv.addObject("history", emplist);
	      return mv;
	     }

	 
	  
	  
	  @Autowired
	  private CustomerService customerService;
	  
	  
	  
	  @GetMapping("customerlogin") // URI (Uniform Resource identifier) & Method Name
	  public ModelAndView customerlogin() {
	    ModelAndView mv= new ModelAndView();
	    mv.setViewName("customerlogin");
	    return mv;
	  }
	  
	  @PostMapping("checkcustomerlogin")
	  public ModelAndView checkcustomerlogin(HttpServletRequest request) {
	    
	    ModelAndView mv = new ModelAndView();
	    
	    String email = request.getParameter("email");
	       String pwd = request.getParameter("password");
	       
	      Customer  cus =  customerService.checkcustomerlogin(email, pwd);
	      
	      //very imp
	      if(cus!=null)
	      {
	        
	        // session
	    	  HttpSession session= request.getSession();
	          
	          session.setAttribute("eid", cus.getId()); // eid is a session variable 
	          session.setAttribute("ename", cus.getName()); // ename is a session variable 
	          session.setAttribute("eemail", cus.getEmail());
	         
	       
	          mv.addObject("eid", session.getAttribute("eid"));
	          mv.addObject("ename", session.getAttribute("ename"));
	          mv.addObject("eemail",session.getAttribute("eemail"));
	          String eemail=(String)session.getAttribute("eemail");
	    
	      
	          System.out.println(eemail);
	          mv.setViewName("customerhome");
	      }
	      else
	      {
	        mv.setViewName("customerlogin");
	        mv.addObject("message", "Login Failed");
	      }
	      return mv;                                                                                                               
	  }
	  
	  @GetMapping("customerreg")
	  public ModelAndView customerregistration() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("customerregistration");
	    return mv;
	  }
	  @PostMapping("insertcustomer")
	  public ModelAndView insertcustomer(HttpServletRequest request) {
	    
	    String msg="null";
	    ModelAndView mv = new ModelAndView();
	    
	    
	    try {
	      String name = request.getParameter("name");
	      String contact = request.getParameter("phonenumber");
	        String email = request.getParameter("email");
	        String pwd = request.getParameter("password");
	       
	        
	        
	       Customer c=new Customer();
	       c.setName(name);
	        
	        c.setEmail(email);
	        c.setPassword(pwd);
	        c.setPhonenumber(contact);
	        msg=customerService.addcustomer(c);
            emailService.sendEmail(c.getEmail(), "Registration mail", "Thank You!!!!!!"
                + "You have successfully registred "
                + "hope you will enjoy the stay:)");

	        mv.setViewName("customerlogin");
	    }
	    catch(Exception e){
	      
	      msg=e.getMessage();
	      
	        mv.setViewName("displayerror");
	      mv.addObject("message", msg);
	    }
	    
	    return mv;
	  }
	  
	  @GetMapping("contactadmin")
		public ModelAndView contact() {     //URI & method name can be different
			ModelAndView mv=new ModelAndView();
			mv.setViewName("contactadmin");
			return mv;
		}
	  
	  @GetMapping("services")
	    public String services()
	    {
	      return "Services";
	    }


	  @GetMapping("standardroom")
	  public ModelAndView standardbooking(HttpServletRequest request)
	  {
		  ModelAndView mv=new ModelAndView();
	      HttpSession session=request.getSession();

	        mv.addObject("eid", session.getAttribute("eid"));
	        mv.addObject("ename", session.getAttribute("ename"));
	        mv.addObject("eemail",session.getAttribute("eemail"));
	    mv.setViewName("standardroom");
	    return mv;
	  }
	  @PostMapping("insertstandard")
	  public ModelAndView insertstandard(HttpServletRequest request)
	  {
		  ModelAndView mv=new ModelAndView();
	      HttpSession session=request.getSession();

	        mv.addObject("eid", session.getAttribute("eid"));
	        mv.addObject("ename", session.getAttribute("ename"));
	        mv.addObject("eemail",session.getAttribute("eemail"));
	    String msg=null;
	    try
	    {
	      String name = request.getParameter("name");
	        
	        String email = request.getParameter("email");
	        String arrival=request.getParameter("arrive");
	        String depatures=request.getParameter("depature");
	        String contact = request.getParameter("contact");
	        String numroom=request.getParameter("numrooms");
	        int numrooms=Integer.parseInt(numroom);
	        String numadult=request.getParameter("numadults");
	        int numadults=Integer.parseInt(numadult);
	        String numchild=request.getParameter("numchilds");
	        int numchilds=Integer.parseInt(numchild);
	        String beds=request.getParameter("bed");
	          
	        
	        StandardRoom s=new StandardRoom();
	        s.setName(name);
	        s.setContact(contact);
	        s.setEmail(email);
	        s.setArrive(arrival);
	        s.setDepature(depatures);
	        
	        s.setNumrooms(numrooms);
	        s.setNumadults(numadults);
	        s.setNumchilds(numchilds);
	        s.setBed(beds);
	         s.setActive(false); 
	         s.setRoomtype("Standard");
	          msg=standardService.bookroom(s);
	            emailService.sendEmail(s.getEmail(), "Booking mail", "Successfully booked Standard Room"
	                + "Thank you for booking "
	                + "hope you will enjoy the stay:)");

	          mv.setViewName("standardroom");
	        mv.addObject("message","Booked standard room Successfully");
	    }
	    catch(Exception e)
	    {
	      msg=e.getMessage();
	      
	      mv.setViewName("displayerror");
	      mv.addObject("message",msg);
	    }
	    
	    return mv;
	  }
	  @GetMapping("duplexroom")
	  public ModelAndView duplexbooking(HttpServletRequest request)
	  {
		  ModelAndView mv=new ModelAndView();
	      HttpSession session=request.getSession();

	        mv.addObject("eid", session.getAttribute("eid"));
	        mv.addObject("ename", session.getAttribute("ename"));
	        mv.addObject("eemail",session.getAttribute("eemail"));
	    mv.setViewName("duplexroom");
	    return mv;
	  }
	  @PostMapping("insertduplex")
	  public ModelAndView insertduplex(HttpServletRequest request)
	  {
		  ModelAndView mv=new ModelAndView();
	      HttpSession session=request.getSession();

	        mv.addObject("eid", session.getAttribute("eid"));
	        mv.addObject("ename", session.getAttribute("ename"));
	        mv.addObject("eemail",session.getAttribute("eemail"));
	    String msg=null;
	    try
	    {
	      String name = request.getParameter("name");
	        
	        String email = request.getParameter("email");
	        String arrival=request.getParameter("arrive");
	        String depatures=request.getParameter("depature");
	        String contact = request.getParameter("contact");
	        String numroom=request.getParameter("numrooms");
	        int numrooms=Integer.parseInt(numroom);
	        String numadult=request.getParameter("numadults");
	        int numadults=Integer.parseInt(numadult);
	        String numchild=request.getParameter("numchilds");
	        int numchilds=Integer.parseInt(numchild);
	        String beds=request.getParameter("bed");
	            
	        
	       DuplexRoom s=new DuplexRoom();
	        s.setName(name);
	        s.setContact(contact);
	        s.setEmail(email);
	        s.setArrive(arrival);
	        s.setDepature(depatures);
	        s.setNumrooms(numrooms);
	        s.setNumadults(numadults);
	        s.setNumchilds(numchilds);
	        s.setBed(beds);
	        s.setActive(false);
	        s.setRoomtype("Duplex");
	          msg=standardService.bookroomduplex(s);
	            emailService.sendEmail(s.getEmail(), "Booking mail", "Successfully booked Delux Room"
	                + "Thank you for booking "
	                + "hope you will enjoy the stay:)");
	          mv.setViewName("duplexroom");
	        mv.addObject("message","Booked Delux room Successfully");
	    }
	    catch(Exception e)
	    {
	      msg=e.getMessage();
	      
	      mv.setViewName("displayerror");
	      mv.addObject("message",msg);
	    }
	    
	    return mv;
	  }
	  @GetMapping("villaroom")
	  public ModelAndView villabooking(HttpServletRequest request)
	  {
		  ModelAndView mv=new ModelAndView();
	      HttpSession session=request.getSession();

	        mv.addObject("eid", session.getAttribute("eid"));
	        mv.addObject("ename", session.getAttribute("ename"));
	        mv.addObject("eemail",session.getAttribute("eemail"));
	    mv.setViewName("villaroom");
	    return mv;
	  }
	  @PostMapping("insertvilla")
	  public ModelAndView insertvilla(HttpServletRequest request)
	  {
		  ModelAndView mv=new ModelAndView();
	      HttpSession session=request.getSession();

	        mv.addObject("eid", session.getAttribute("eid"));
	        mv.addObject("ename", session.getAttribute("ename"));
	        mv.addObject("eemail",session.getAttribute("eemail"));
	    String msg=null;
	    try
	    {
	      String name = request.getParameter("name");
	        
	        String email = request.getParameter("email");
	        String arrival=request.getParameter("arrive");
	        String depatures=request.getParameter("depature");
	        String contact = request.getParameter("contact");
	        String numroom=request.getParameter("numrooms");
	        int numrooms=Integer.parseInt(numroom);
	        String numadult=request.getParameter("numadults");
	        int numadults=Integer.parseInt(numadult);
	        String numchild=request.getParameter("numchilds");
	        int numchilds=Integer.parseInt(numchild);
	        String beds=request.getParameter("bed");
	            
	        
	       VillaRoom s=new VillaRoom();
	        s.setName(name);
	        s.setContact(contact);
	        s.setEmail(email);
	        s.setArrive(arrival);
	        s.setDepature(depatures);
	        s.setNumrooms(numrooms);
	        s.setNumadults(numadults);
	        s.setNumchilds(numchilds);
	        s.setBed(beds);
	         s.setActive(false); 
	         s.setRoomtype("Villa");
	         
	          msg=standardService.bookroomvilla(s);
	            emailService.sendEmail(s.getEmail(), "Booking mail", "Successfully booked villa"
	                + "Thank you for booking "
	                + "hope you will enjoy the stay:)");
	          mv.setViewName("villaroom");
	        mv.addObject("message","Booked Villa Successfully");
	    }
	    catch(Exception e)
	    {
	      msg=e.getMessage();
	      
	      mv.setViewName("displayerror");
	      mv.addObject("message",msg);
	    }
	    
	    return mv;
	  }
	  
	  
	  @GetMapping("penthouse")
	  public ModelAndView pentbooking(HttpServletRequest request)
	  {
		  ModelAndView mv=new ModelAndView();
	      HttpSession session=request.getSession();

	        mv.addObject("eid", session.getAttribute("eid"));
	        mv.addObject("ename", session.getAttribute("ename"));
	        mv.addObject("eemail",session.getAttribute("eemail"));
	    mv.setViewName("penthouse");
	    return mv;
	  }
	  @PostMapping("insertpenthouse")
	  public ModelAndView insertpenthouse(HttpServletRequest request)
	  {
		  ModelAndView mv=new ModelAndView();
	      HttpSession session=request.getSession();

	        mv.addObject("eid", session.getAttribute("eid"));
	        mv.addObject("ename", session.getAttribute("ename"));
	        mv.addObject("eemail",session.getAttribute("eemail"));
	    String msg=null;
	    try
	    {
	      String name = request.getParameter("name");
	        
	        String email = request.getParameter("email");
	        String arrival=request.getParameter("arrive");
	        String depatures=request.getParameter("depature");
	        String contact = request.getParameter("contact");
	        String numroom=request.getParameter("numrooms");
	        int numrooms=Integer.parseInt(numroom);
	        String numadult=request.getParameter("numadults");
	        int numadults=Integer.parseInt(numadult);
	        String numchild=request.getParameter("numchilds");
	        int numchilds=Integer.parseInt(numchild);
	        String beds=request.getParameter("bed");
	            
	        
	      PentHouse s=new PentHouse();
	        s.setName(name);
	        s.setContact(contact);
	        s.setEmail(email);
	        s.setArrive(arrival);
	        s.setDepature(depatures);
	        s.setNumrooms(numrooms);
	        s.setNumadults(numadults);
	        s.setNumchilds(numchilds);
	        s.setBed(beds);
	          s.setActive(false);
	          s.setRoomtype("Pent House");   
	       
	          msg=standardService.bookroompenthouse(s);

	            emailService.sendEmail(s.getEmail(), "Booking mail", "Successfully booked Pent House"
	                + "Thank you for booking "
	                + "hope you will enjoy the stay:)");
	          
	          mv.setViewName("penthouse");
	        mv.addObject("message","Booked PentHouse Successfully");
	    }
	    catch(Exception e)
	    {
	      msg=e.getMessage();
	      
	      mv.setViewName("displayerror");
	      mv.addObject("message",msg);
	    }
	    
	    return mv;
	  }
	  @GetMapping("suite")
	  public ModelAndView suitebooking(HttpServletRequest request)
	  {
		  ModelAndView mv=new ModelAndView();
	      HttpSession session=request.getSession();

	        mv.addObject("eid", session.getAttribute("eid"));
	        mv.addObject("ename", session.getAttribute("ename"));
	        mv.addObject("eemail",session.getAttribute("eemail"));
	    mv.setViewName("suite");
	    return mv;
	  }
	  @PostMapping("insertsuite")
	  public ModelAndView insertsuite(HttpServletRequest request)
	  {
		  ModelAndView mv=new ModelAndView();
	      HttpSession session=request.getSession();

	        mv.addObject("eid", session.getAttribute("eid"));
	        mv.addObject("ename", session.getAttribute("ename"));
	        mv.addObject("eemail",session.getAttribute("eemail"));
	    String msg=null;
	    try
	    {
	      String name = request.getParameter("name");
	        
	        String email = request.getParameter("email");
	        String arrival=request.getParameter("arrive");
	        String depatures=request.getParameter("depature");
	        String contact = request.getParameter("contact");
	        String numroom=request.getParameter("numrooms");
	        int numrooms=Integer.parseInt(numroom);
	        String numadult=request.getParameter("numadults");
	        int numadults=Integer.parseInt(numadult);
	        String numchild=request.getParameter("numchilds");
	        int numchilds=Integer.parseInt(numchild);
	        String beds=request.getParameter("bed");
	        Suite s=new Suite();
	        s.setName(name);
	        s.setContact(contact);
	        s.setEmail(email);
	        s.setArrive(arrival);
	        s.setDepature(depatures);
	        s.setNumrooms(numrooms);
	        s.setNumadults(numadults);
	        s.setNumchilds(numchilds);
	        s.setBed(beds);
	         s.setActive(false);
	         s.setRoomtype("Suite");
	          msg=standardService.booksuite(s);

	            emailService.sendEmail(s.getEmail(), "Booking mail", "Successfully booked Suite Room"
	                + "Thank you for booking "
	                + "hope you will enjoy the stay:)");
	          mv.setViewName("suite");
	    }
	    catch(Exception e)
	    {
	      msg=e.getMessage();
	      
	      mv.setViewName("displayerror");
	      mv.addObject("message","Booked Suite Successfully");
	    }
	    
	    return mv;
	  }
	  @GetMapping("setstatusstandard")
	  public ModelAndView setstatusstandard(@RequestParam("id") int eid,@RequestParam("status") boolean status)
	  {
	    int n = employeeService.updatestatusstandard(status, eid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewallstandard");
	    List<StandardRoom> stdlist =  employeeService.viewallstandard();
	    mv.addObject("standdata", stdlist);
	      
	   
	    if(n>0)
	    {
	      mv.addObject("message", "Status Updated Successfully");
	    }
	    else
	    {
	      mv.addObject("message", "Failed to Update Status");
	    }
	    
	    return mv;
	  }
	  @GetMapping("setstatussuite")
	  public ModelAndView setstatussuite(@RequestParam("id") int eid,@RequestParam("status") boolean status)
	  {
	    int n = employeeService.updatestatussuite(status, eid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewallsuite");
	    List<Suite> stdlist =  employeeService.viewallsuite();
	    mv.addObject("suitedata", stdlist);
	      
	   
	    if(n>0)
	    {
	      mv.addObject("message", "Status Updated Successfully");
	    }
	    else
	    {
	      mv.addObject("message", "Failed to Update Status");
	    }
	    
	    return mv;
	  }
	  @GetMapping("setstatusvilla")
	  public ModelAndView setstatusvilla(@RequestParam("id") int eid,@RequestParam("status") boolean status)
	  {
	    int n = employeeService.updatestatusvilla(status, eid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewallvilla");
	    List<VillaRoom> stdlist =  employeeService.viewallvilla();
	    mv.addObject("villadata", stdlist);
	      
	   
	    if(n>0)
	    {
	      mv.addObject("message", "Status Updated Successfully");
	    }
	    else
	    {
	      mv.addObject("message", "Failed to Update Status");
	    }
	    
	    return mv;
	  }
	  @GetMapping("setstatuspent")
	  public ModelAndView setstatuspent(@RequestParam("id") int eid,@RequestParam("status") boolean status)
	  {
	    int n = employeeService.updatestatuspent(status, eid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewallpenthouse");
	    List<PentHouse> stdlist =  employeeService.viewallpenthouse();
	    mv.addObject("housedata", stdlist);
	      
	   
	    if(n>0)
	    {
	      mv.addObject("message", "Status Updated Successfully");
	    }
	    else
	    {
	      mv.addObject("message", "Failed to Update Status");
	    }
	    
	    return mv;
	  }
	  @GetMapping("setstatusduplex")
	  public ModelAndView setstatusduplex(@RequestParam("id") int eid,@RequestParam("status") boolean status)
	  {
	    int n = employeeService.updatestatusdelux(status, eid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewallduplex");
	    List<DuplexRoom> stdlist =  employeeService.viewallduplex();
	    mv.addObject("duplexdata", stdlist);
	      
	   
	    if(n>0)
	    {
	      mv.addObject("message", "Status Updated Successfully");
	    }
	    else
	    {
	      mv.addObject("message", "Failed to Update Status");
	    }
	    
	    return mv;
	  }
	  //@GetMapping("history")
		//public ModelAndView history(@RequestParam("email") String email)
//		{
//			List<Object> emplist=standardService.getAllDataById(email);
//			ModelAndView mv=new ModelAndView("history");
//			mv.addObject("history",emplist);
//			
//			return mv;
//		}

	  @GetMapping("updateprofile")
	  public ModelAndView updateemp(HttpServletRequest request)
	  {
	    ModelAndView mv = new ModelAndView();
	    
	    HttpSession session = request.getSession();
	    
	    mv.setViewName("employeeprofile");
	    
	    mv.addObject("eid", session.getAttribute("eid"));
	    mv.addObject("ename", session.getAttribute("ename"));
	    
	    int id = (int) session.getAttribute("eid");
	    
	    Employee emp = employeeService.viewemployeebyid(id);
	    
	    mv.addObject("emp", emp);
	    
	    return mv;
	  }
	  @PostMapping("update")
	  public ModelAndView updateaction(HttpServletRequest request)
	  {
	    String msg = null;
	    
	    ModelAndView mv = new ModelAndView();
	    
	      HttpSession session = request.getSession();
	    
	    mv.addObject("eid", session.getAttribute("eid"));
	    mv.addObject("ename", session.getAttribute("ename"));
	    
	    int id = (int) session.getAttribute("eid");
	    
	   try
	   {
	     String name = request.getParameter("name");
	     String dob = request.getParameter("dob");
	     String role = request.getParameter("role");
	     String sal = request.getParameter("salary");
	     double salary = Double.parseDouble(sal);
	     String email = request.getParameter("email");
	     String pwd = request.getParameter("pwd");
	     String location = request.getParameter("location");
	     String contact = request.getParameter("contact");

	     Employee emp = new Employee();
	      emp.setId(id);
	      emp.setName(name);
	      emp.setDateofbirth(dob);
	      emp.setRole(role);
	      emp.setSalary(salary);
	      emp.setEmail(email);
	      emp.setPassword(pwd);
	      emp.setLocation(location);
	      emp.setContact(contact);
	      
	      
	      msg = employeeService.updateemployee(emp);
	      
	      mv.setViewName("employeelogin");
	      mv.addObject("message",msg);
	     
	   }
	   catch(Exception e)
	   {
	     msg = e.getMessage();
	     
	     mv.setViewName("updateerror");
	      mv.addObject("message",msg);
	   }
	    
	   
	    return mv;

	  }
}
