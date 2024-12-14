package com.tka.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.internal.build.AllowPrintStacktrace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tka.entity.Product;

@Repository
public class ProductDao {
	@Autowired
	private SessionFactory sf;

	public String addProduct(Product product) {

		try {
			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			session.save(product);
			// System.out.println("we are in the add method of dao");
			tx.commit();
			String msg = "add product successfully";
			return msg;
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "someting went wrong";
			return msg;
		}

	}

	public List<Product> displayProduct() {
		List<Product> plist = null;

		try {
			Session session = sf.openSession();
			Criteria criteria = session.createCriteria(Product.class);
			plist = criteria.list();
			return plist;
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "something went wrong....";
			return plist;
		}

	}
	public Product getProduct(int pk) {
		System.out.println("we are in get product dao");
		Product product = null;
		try {

			Session session = sf.openSession();
			product = session.get(Product.class, pk);
			System.out.println(product);
			return product;
		} catch (Exception e) {

			e.printStackTrace();
			return product;
		}
	}

	public String deleteProduct(int pk) {
		Product product = null;
		System.out.println("we are in delete product dao");
//		Product product = this.getProduct(pk);
//	System.out.println(product);
		
		try {

			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			product = session.get(Product.class, pk);
			session.delete(product);
			tx.commit();
			String msg = "Product deleted from DB";
			return msg;
		} catch (Exception e) {

			e.printStackTrace();
			String msg = "Somthing went wrong....";
			return msg;
		}
		
		
	}

	public String updateProduct(Product product) {
		try {
			Session session=sf.openSession();
			Transaction tx = session.beginTransaction();
			session.saveOrUpdate(product);
			tx.commit();
			String msg="product updated succesfully..msg..";
			
			return msg;
			}	catch(Exception e){
			e.printStackTrace();
			String msg="something gone wrong";
			return msg;
			}
			
		
	}

}
