package com.grownited.dto;

public class IncomeDto {
	Integer incomeId;
	String incomeTitle;
	float amount;
	String transactionDate;
	String description;
	Integer accountId;
	Integer userId;
	String accountTitle;
	String firstName;
	
	
	public IncomeDto(Integer incomeId, String incomeTitle, float amount, String transactionDate, String description,
			Integer accountId, Integer userId, String accountTitle, String firstName) {
		
		this.incomeId = incomeId;
		this.incomeTitle = incomeTitle;
		this.amount = amount;
		this.transactionDate = transactionDate;
		this.description = description;
		this.accountId = accountId;
		this.userId = userId;
		this.accountTitle = accountTitle;
		this.firstName = firstName;
	}
	public Integer getIncomeId() {
		return incomeId;
	}
	public void setIncomeId(Integer incomeId) {
		this.incomeId = incomeId;
	}
	public String getIncomeTitle() {
		return incomeTitle;
	}
	public void setIncomeTitle(String incomeTitle) {
		this.incomeTitle = incomeTitle;
	}
	public Integer getAccountId() {
		return accountId;
	}
	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public String getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(String transactionDate) {
		this.transactionDate = transactionDate;
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
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getAccountTitle() {
		return accountTitle;
	}
	public void setAccountTitle(String accountTitle) {
		this.accountTitle = accountTitle;
	}
	
	
	
}
