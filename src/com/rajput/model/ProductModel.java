package com.rajput.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.rajput.dtos.ProductDTO;

public class ProductModel {
	
	
	public Connection establishConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MySQL","root","rajputvishal");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e){
			e.printStackTrace();
		}
		System.out.println("DB Connected");
		return con;
	}
	public ArrayList<ProductDTO> getProducts(String brand) throws SQLException{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ProductDTO> productList = new ArrayList<>();
		try {
			con = this.establishConnection();
			pstmt = con.prepareStatement("select * from items.products where ProductBrand = ?");
			pstmt.setString(1, brand);
			rs = pstmt.executeQuery();
			while(rs.next()){
				ProductDTO pdto = new ProductDTO();
				pdto.setId(rs.getInt("ProductID"));
				pdto.setName(rs.getString("ProductName"));
				pdto.setBrand(rs.getString("ProductBrand"));
				pdto.setDesc(rs.getString("ProductDesc"));
				pdto.setPrice(rs.getDouble("ProductPrice"));
				pdto.setImage(rs.getString("ProductImageURL"));
				pdto.setPopularity(rs.getInt("ProductPopularity"));
				productList.add(pdto);
				System.out.println("list created.");
			}
			
		} finally{
			if(rs!=null){
				rs.close();
			}
			if(pstmt!=null){
				pstmt.close();
			}
			if(con!=null){
				con.close();
			}
		}
		return productList;
	}
}
