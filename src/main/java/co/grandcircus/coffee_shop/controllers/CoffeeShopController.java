package co.grandcircus.coffee_shop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.coffee_shop.dao.EndUserRepository;
import co.grandcircus.coffee_shop.dao.ItemRepository;
import co.grandcircus.coffee_shop.model.AdminStatus;
import co.grandcircus.coffee_shop.model.EndUser;
import co.grandcircus.coffee_shop.model.Item;
import co.grandcircus.coffee_shop.model.LoginStatus;

@Controller
public class CoffeeShopController {

	private static final String ADMIN_PASSWORD = "admin1962";
	private static EndUser currentUser;
	public LoginStatus loggedIn = LoginStatus.LOGGED_OUT;
	
	@Autowired
	private ItemRepository itemDAO;
	@Autowired
	private EndUserRepository userDAO;

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
		
		loggedIn = LoginStatus.LOGGED_IN;
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
			currentUser = userDAO.findByEmail(email);
			if(currentUser.getAdminStatus() == AdminStatus.ADMIN) {
				return new ModelAndView("redirect:/products");
			}
			return new ModelAndView("redirect:/");
		} else {
			mv = new ModelAndView("login", "message", "Sorry, we couldn't find you in our records.");
		}
		return mv;
	}

	@RequestMapping("/")
	public ModelAndView home() {
		return new ModelAndView("index");
	}

	@RequestMapping("/return")
	public ModelAndView returnHome() {
		return new ModelAndView("redirect:/");
	}

	@RequestMapping("/products")
	public ModelAndView productPage() {
		if (currentUser == null) {
			return new ModelAndView("product-display", "productList", itemDAO.findAll());
		} else if (currentUser.getAdminStatus() == AdminStatus.ADMIN) {
			return new ModelAndView("product-display-admin", "productList", itemDAO.findAll());
		}
		return new ModelAndView("product-display", "productList", itemDAO.findAll());
	}

	@RequestMapping("/search-products-by-name")
	public ModelAndView searchProducts(@RequestParam(value = "itemName", required = false) String name) {
		ModelAndView mv = new ModelAndView("product-display");
		if (name != null && !name.isEmpty()) {
			mv.addObject("nameInput", name);
			mv.addObject("productList", itemDAO.findByNameContaining(name));
		} else {
			mv.addObject("productList", itemDAO.findAll());
		}
		return mv;
	}
	
	@RequestMapping("/add-item")
	public ModelAndView addItem() {
		return new ModelAndView("add-product");
	}
	
	@RequestMapping("/add-to-db")
	public ModelAndView addToDB(Item product) {
		if(product.getId() == null && itemDAO.existsByName(product.getName())) {
			return new ModelAndView("error-message", "message", "That product already exists");
		}
		itemDAO.save(product);
		return new ModelAndView("redirect:/products");
	}
	
	@RequestMapping("/edit-item")
	public ModelAndView editItemWithID(@RequestParam("id") int id) {
		Item productToEdit = itemDAO.findById(id).get();
		return new ModelAndView("edit-product", "product", productToEdit);
	}
	
	@RequestMapping("/delete-item")
	public ModelAndView confirmDelete(@RequestParam("id") int id) {
		return new ModelAndView("confirm-deletion", "productID", id);
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam("id") int id) {
		itemDAO.deleteById(id);
		return new ModelAndView("redirect:/products");
	}
	
	public static EndUser getCurrentUser() {
		return currentUser;
	}

}
