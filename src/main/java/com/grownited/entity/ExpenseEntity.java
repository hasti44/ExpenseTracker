package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity//to create table
@Table(name="expenses")//to name the table
public class ExpenseEntity {
	
	Integer expenseId;
	String expenseTitle;
	String categoryName;
	float amount;
	String description;
	//date
	//time
	Integer userId;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getExpenseId() {
		return expenseId;
	}
	public void setExpenseId(Integer expenseId) {
		this.expenseId = expenseId;
	}
	public String getExpenseTitle() {
		return expenseTitle;
	}
	public void setExpenseTitle(String expenseTitle) {
		this.expenseTitle = expenseTitle;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}			
}
