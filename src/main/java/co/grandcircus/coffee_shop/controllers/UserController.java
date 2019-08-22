package co.grandcircus.coffee_shop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.coffee_shop.dao.EndUserRepository;
import co.grandcircus.coffee_shop.model.AdminStatus;
import co.grandcircus.coffee_shop.model.EndUser;

@Controller
public class UserController {

	private static final String ADMIN_PASSWORD = "admin1962";

	@Autowired
	private EndUserRepository userDAO;
	private EndUser currentUser;

	@RequestMapping("/register-selection")
	public ModelAndView registrationForm() {
		return new ModelAndView("register", "registration", "Register");
	}

	@RequestMapping("/say-hello")
	public ModelAndView hello(EndUser user, @RequestParam("admin_pass") String adminPass) {
		if (adminPass != null && adminPass.equals(ADMIN_PASSWORD)) {
			user.setAdminStatus(AdminStatus.ADMIN);
		} else {
			user.setAdminStatus(AdminStatus.NOT_ADMIN);
		}

		if (userDAO.existsByEmail(user.getEmail())) {
			return new ModelAndView("user-exists", "message",
					"Sorry, but the user with email \"" + user.getEmail() + "\" already exists");
		} else {
			userDAO.save(user);
		}
		currentUser = user;
		return new ModelAndView("hello", "userInfo", user);
	}

	@RequestMapping("/login-page")
	public ModelAndView loginPage() {
		return new ModelAndView("login");
	}

	@RequestMapping("/check-login")
	public ModelAndView validateLogin(@RequestParam("email") String email, @RequestParam("password") String password) {
		ModelAndView mv = new ModelAndView("login");
		if (userDAO.existsByEmail(email) && userDAO.existsByPassword(password)) {
			currentUser = userDAO.findByPassword(password);
			return new ModelAndView("redirect:/");
		} else {
			mv = new ModelAndView("login", "message", "Sorry, we couldn't find you in our records.");
		}
		return mv;
	}

	public EndUser getCurrentUser() {
		return currentUser;
	}
}
