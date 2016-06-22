package com.rajput.dtos;

public class ProductDTO {
	private int id;
	private String name;
	private String brand;
	private String image;
	private String desc;
	private double price;
	private int popularity;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getPopularity() {
		return popularity;
	}
	public void setPopularity(int popularity) {
		this.popularity = popularity;
	}
	@Override
	public String toString() {
		return "ProductDTO [id=" + id + ", name=" + name + ", brand=" + brand + ", image=" + image + ", desc=" + desc
				+ ", price=" + price + ", popularity=" + popularity + "]";
	}
	
}
