package com.grownited.dto;

public class SubCategoryDto {
	private Integer subCategoryId;
	private Integer categoryId;
	private String subCategoryTitle;
	private Integer userId;
	private String categoryTitle;
	private String firstName;
	
	
	public SubCategoryDto(Integer subCategoryId, Integer categoryId, String subCategoryTitle, Integer userId,
			String categoryTitle, String firstName) {
		super();
		this.subCategoryId = subCategoryId;
		this.categoryId = categoryId;
		this.subCategoryTitle = subCategoryTitle;
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
