package springwork.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import springwork.model.User;

@Controller
@RequestMapping("/")
@SessionAttributes("userkey")
public class IndexController {
	
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("Index");
		return mav;
	}
	
	@ModelAttribute("userkey")
	public User setUpUserForm() {
		return new User();
	}
	
	
	@RequestMapping(value="/userInfo", method = RequestMethod.POST)
	public ModelAndView user_info(@RequestParam("username") String username,
			@RequestParam("password") String password,
			@RequestParam("email") String email) {
		ModelAndView mav = new ModelAndView("UserPage");
		mav.addObject("username", username);
		mav.addObject("password", password);
		mav.addObject("email", email);
		return mav;
	}
	
	@RequestMapping(value="/userInfo_confirm", method = RequestMethod.POST)
	public ModelAndView user_info_confirm(@ModelAttribute("userkey") User u) {
		ModelAndView mav = new ModelAndView("UserAccountPage");
		return mav;
	}
	
	@RequestMapping(value="/modify", method = RequestMethod.GET)
	public ModelAndView user_info_modify() {
		ModelAndView mav = new ModelAndView("UserAccountModify");
		return mav;
	}
		
	@RequestMapping(value="/submit_changes", method = RequestMethod.POST)
	public String user_info_changes(@ModelAttribute User u, 
			@SessionAttribute("userkey") User ukey) {
		if(u.getPassword().equals(ukey.getPassword()))
			return "redirect:modify";
		
		ukey.setPassword(u.getPassword());
		return "UserAccountPage";
	}
}
