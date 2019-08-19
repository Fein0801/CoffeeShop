package co.grandcircus.coffee_shop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.coffee_shop.EndUser;

@Controller
public class CoffeeShopController {
	
	@RequestMapping("/")
	public ModelAndView home() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/register-selection") 
	public ModelAndView registrationForm() {
		return new ModelAndView("register", "registration", "Register");
	}
	
	@RequestMapping("/say-hello")
	public ModelAndView hello(EndUser user) {
		return new ModelAndView("hello", "userInfo", user);
	}

}
