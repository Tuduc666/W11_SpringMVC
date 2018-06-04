package com.springmvc.homecontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.models.User;

@Controller
@RequestMapping("/")
// @SessionAttributes("userkey")     
public class HomeController {
	
//	@ModelAttribute("userkey")                   // need to define the model attribute
//	 public User setUpUserForm() {
//	  return new User();
//	 }
	
	@RequestMapping(value="/")
	public ModelAndView displayHomePage() {
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}

	@RequestMapping(value="/form")
	public ModelAndView displayForm() {
		ModelAndView mav = new ModelAndView("form");
		return mav;
	}
	
	@RequestMapping(value="/process-form", method = RequestMethod.POST)
	public ModelAndView processForm(@ModelAttribute("userkey") User u) {    // date needs to be mm/dd/yyyy
		ModelAndView mav = new ModelAndView("submission-details");
		return mav;
	}
//	@RequestMapping(value="/process-form", method = RequestMethod.POST)
//	public ModelAndView processForm(@SessionAttribute("userkey") User u) {  // works but there is no value passing in
//		ModelAndView mav = new ModelAndView("submission-details");
//		return mav;
//	}
}
