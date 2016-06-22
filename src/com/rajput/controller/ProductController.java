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

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchProduct = request.getParameter("brandName");
		ArrayList<ProductDTO> productList = null;
		ProductModel pmodel = new ProductModel();
		try {
			productList = pmodel.getProducts(searchProduct);
			System.out.println("in the controller now");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("productList", productList);
		RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
		rd.forward(request, response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
