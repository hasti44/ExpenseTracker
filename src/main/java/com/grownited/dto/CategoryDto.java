package com.grownited.dto;

public class CategoryDto {
	private Integer categoryId;
	private String categoryTitle;
	private Integer userId;
	private String firstName;
	public CategoryDto(Integer categoryId, String categoryTitle, Integer userId, String firstName) {
		
		this.categoryId = categoryId;
		this.categoryTitle = categoryTitle;
		this.userId = userId;
		this.firstName = firstName;
	}
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryTitle() {
		return categoryTitle;
	}
	public void setCategoryTitle(String categoryTitle) {
		this.categoryTitle = categoryTitle;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
		
}
