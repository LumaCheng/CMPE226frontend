package com.cmpe226.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ModelAttribute;
 
import com.cmpe226.Model.User;
import com.cmpe226.Model.Login;

@Controller
public class WebController {
	
	 //  ======================
	 //        login
	 //  ======================
	
	  @RequestMapping(value = "/login", method = RequestMethod.GET)
	  public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("login");
	    mav.addObject("login", new User());
	    return mav;
	  }	  

	  @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
	  @ModelAttribute("login") Login login) {
	    ModelAndView mav = null;	    	  
	    
//	     User user = userService.validateUser(login);

//	    if (null != user) {
	    if(login.getUsername().equals("luma")) {
		    mav = new ModelAndView("welcome");
		    mav.addObject("username", login.getUsername());
	    } else {
		    mav = new ModelAndView("login");
		    mav.addObject("message", "Username or Password is wrong!!");
	    }
	    return mav;
	  }
	  
	 //  ======================
	 //         sign up
	 //  ======================
	  
	  @RequestMapping(value = "/signup", method = RequestMethod.GET)
	  public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("register");
	    mav.addObject("user", new User());
	    return mav;
	  }
	  
	  @RequestMapping(value = "/signupProcess", method = RequestMethod.POST)
	  public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
	  @ModelAttribute("user") User user) {
	//	  userService.register(user);
		  return new ModelAndView("welcome", "username", user.getUsername());
	  }
	  
	  
	 //  ======================
	 //        search
	 //  ======================
	  
	  @RequestMapping(value = "/courses", method = RequestMethod.GET)
	  public ModelAndView search(HttpServletRequest request, HttpServletResponse response) {
	//	  userService.register(user);
		  return new ModelAndView("single_course");
	  }
	  
	  
	 //  ======================
	 //        courses
	 //  ======================
	  
	  @RequestMapping(value = "/courses", method = RequestMethod.POST)
	  public ModelAndView courses(HttpServletRequest request, HttpServletResponse response) {
	//	  userService.register(user);
		  return new ModelAndView("search_result");
	  }
}