package com.rajput.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rajput.dtos.ProductDTO;
import com.rajput.model.ProductModel;

@WebServlet("/Products")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected ArrayList<ProductDTO> searchByCriteria(String searchProduct, int Criteria){
		//String searchProduct2 = request.getParameter("brandName");
		ArrayList<ProductDTO> productList = null;
		ProductModel pmodel = new ProductModel();
		ProductDTO pdto = new ProductDTO();
		pdto.setBrand(searchProduct);
		try {
			productList = pmodel.getProducts(pdto,Criteria);
			System.out.println("in the controller now");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchCriteria = request.getParameter("searchBox");
		ArrayList<ProductDTO> productList = null;
			System.out.println(searchCriteria);
			if(searchCriteria.equals("Price")){
			String searchProduct = request.getParameter("searchProduct");
			productList = searchByCriteria(searchProduct,1);
		}else if(searchCriteria.equals("Popularity")){
			String searchProduct = request.getParameter("searchProduct");
			productList = searchByCriteria(searchProduct,2);
		}else{
			String searchProduct = request.getParameter("searchProduct");
			productList = searchByCriteria(searchProduct,3);
		}

		
		request.setAttribute("productList", productList);
		RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
		rd.forward(request, response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
