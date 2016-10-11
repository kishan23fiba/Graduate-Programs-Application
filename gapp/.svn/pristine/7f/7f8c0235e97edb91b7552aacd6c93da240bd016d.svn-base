package springmvc.web.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.Student;
import springmvc.model.Users;
import springmvc.model.dao.StudentDao;
import springmvc.model.dao.UserDao;
import springmvc.model.dao.UsersDao;


@Controller
public class UsersController {
	
	@Autowired
    private UsersDao usersDao;

	@Autowired
	private StudentDao studentDao;
	
	//user-registration
    @RequestMapping(value = "/register.html", method=RequestMethod.GET)
    public String getUsers()
    {      
        return "register";
    }
    
    @RequestMapping("/registrationsuccess.html")
    public String getRegSuccess()
    {
    	return "registrationsuccess";
    }
    
    
    @RequestMapping(value = "/register.html", method=RequestMethod.POST)
    public String postUsers(@RequestParam String fname,@RequestParam String lname,
    						@RequestParam String email,@RequestParam String password)
    {      
    	List<Users> users1=usersDao.getUsers();
    	for(Users user:users1)
    	{
    		if(user.getEmail().equalsIgnoreCase(email)==true)
    		{
    			return "redirect:register.html";
    		}
    	}
    	Users users=new Users();
    	users.setFname(fname);
    	users.setLname(lname);
    	users.setEmail(email);
    	users.setPassword(password);
    	users.setRole("student");
    	users=usersDao.saveUser(users);    	
        return "redirect:registrationsuccess.html";
    }
    
    //user-login
    @RequestMapping(value= "/login.html", method=RequestMethod.GET)
    public String getLogin()
    {    	
    	return "login";
    }
    
    @RequestMapping(value= "/gapphomestaff.html", method=RequestMethod.GET)
    public String getStaffhome()
    {
    	return "gapphomestaff";
    }
    
    @RequestMapping(value= "/gapphomestudent.html", method=RequestMethod.GET)
    public String getStudenthome(@RequestParam Integer uid, ModelMap models)
    {
    	models.put("userid", uid);
    	return "gapphomestudent";
    }
    
    @RequestMapping(value= "/login.html", method=RequestMethod.POST)
    public String postLogin(@RequestParam String email, 
    						@RequestParam String password, ModelMap models)
    {
    	List<Users> users=usersDao.getUsers();
    	for(Users user:users)
    	{
    		if(user.getEmail().equalsIgnoreCase(email) && user.getPassword().equals(password))
    		{
    			if(user.getRole().equalsIgnoreCase("administrator"))
    			{
    				System.out.println("here - record found");
    				models.put("user", user.getFname());
    				return "gapphome";
    			}
    			if(user.getRole().equalsIgnoreCase("staff"))
    			{
    				return "redirect:gapphomestaff.html";
    			}
    			if(user.getRole().equalsIgnoreCase("student"))
    			{
    				System.out.println("here - userid="+user.getId());
    				//	models.put("userid", user.getId());
    				return "redirect:gapphomestudent.html?uid="+user.getId();
    			}
    			
    		}
    	}
    	models.put("error", "Invalid Username or password");
    	return "login";
    }
    
    @RequestMapping("/logout.html")
    public String Logout(HttpSession session)
    {
    	session.invalidate();
    	return "redirect:login.html";
    }
    
    @RequestMapping(value= "/gapphome.html")
    public String getHome()
    {    	
    	return "gapphome";
    }   
}
