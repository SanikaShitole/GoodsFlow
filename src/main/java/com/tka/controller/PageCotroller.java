package com.tka.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.tka.Service.productservice;
import com.tka.entity.Product;

@Controller
public class PageCotroller {

	@Autowired
	private productservice productservice;

//@GetMapping("/login")
//public String loginControlle() {
//	System.out.println("we are in login controller");
//	return "login";	
//}
	@GetMapping("/add-product")
	public String addProduct() {
		return "add";
	}

	@GetMapping("/index-page")
	public String indexPage() {
		return "index";
	}

	@PostMapping("/insert-product")
	public String addProduct(@ModelAttribute Product product) {
		System.err.println("We are in post method");
		System.out.println(product);
		String msg = productservice.addProduct(product);
		System.err.println(msg);
		return "add";
	}

	@GetMapping("display-product")
	public String displayProduct(Model model) {
		System.out.println("we are in display-product");
		List<Product> list = productservice.displayProduct();
		System.out.println(list);
		model.addAttribute("products", list);
		return "display";

	}

	@GetMapping("/delete-product")
	public String deleteProduct(@RequestParam("pid") int pk) {
		System.out.println("we are in delete-product");
		String res = productservice.deleteProduct(pk);
		System.out.println(res);
		return "redirect:/display-product";

	}

	@GetMapping("/view-product")
	public String viewProduct(@RequestParam("pid") int pk, Model model) {

		Product product = productservice.getProduct(pk);
		model.addAttribute("p", product);
		return "update";
	}

	@PostMapping("/update-product")
	public String updateProduct(@ModelAttribute Product product) {
		String msg = productservice.updateProduct(product);
		return "redirect:/display-product";
	}

}
