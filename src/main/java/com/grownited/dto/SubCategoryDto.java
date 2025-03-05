package com.grownited.dto;

public class SubCategoryDto {
	Integer subCategoryId;
	String subCategoryTitle;
	Integer categoryId;
	Integer userId;
	String categoryTitle;
	String firstName;
	public SubCategoryDto(Integer subCategoryId, String subCategoryTitle, Integer categoryId, Integer userId,
			String categoryTitle, String firstName) {
	
		this.subCategoryId = subCategoryId;
		this.subCategoryTitle = subCategoryTitle;
		this.categoryId = categoryId;
		this.userId = userId;
		this.categoryTitle = categoryTitle;
		this.firstName = firstName;
	}
	public Integer getSubCategoryId() {
		return subCategoryId;
	}
	public void setSubCategoryId(Integer subCategoryId) {
		this.subCategoryId = subCategoryId;
	}
	public String getSubCategoryTitle() {
		return subCategoryTitle;
	}
	public void setSubCategoryTitle(String subCategoryTitle) {
		this.subCategoryTitle = subCategoryTitle;
	}
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getCategoryTitle() {
		return categoryTitle;
	}
	public void setCategoryTitle(String categoryTitle) {
		this.categoryTitle = categoryTitle;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	
}
