package co.grandcircus.coffee_shop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.coffee_shop.dao.ItemRepository;

@Controller
public class CoffeeShopController {

	@Autowired
	private ItemRepository itemDAO;

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

}
