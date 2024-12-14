package com.tka.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.dao.ProductDao;
import com.tka.entity.Product;

@Service
public class productservice {

	@Autowired
	private ProductDao productdao;

	public String addProduct(Product product) {
		System.out.println("we are in service -> addmethod");

		String msg = productdao.addProduct(product);
		return msg;
	}

	public List<Product> displayProduct() {
		List<Product> plist = productdao.displayProduct();
		return plist;
	}

	public String deleteProduct(int pk) {
		String res = productdao.deleteProduct(pk);
		return res;
		// TODO Auto-generated method stub

	}

	public Product getProduct(int pk) {
		
		Product product = productdao.getProduct(pk);
		return product;
	}

	public String updateProduct(Product product) {
		productdao.updateProduct(product);
		return null;
	}

}
