package com.grownited.dto;

public class IncomeDto {
	private Integer incomeId;
	private Integer accountId;
	private float amount;
	private String description;
	private String incomeTitle;
	private String transactionDate;
	private Integer userId;
	private String firstName;
	private String accountTitle;
	
	
	public IncomeDto(Integer incomeId, Integer accountId, float amount, String description, String incomeTitle,
			String transactionDate, Integer userId, String firstName, String accountTitle) {
		super();
		this.incomeId = incomeId;
		this.accountId = accountId;
		this.amount = amount;
		this.description = description;
		this.incomeTitle = incomeTitle;
		this.transactionDate = transactionDate;
		this.userId = userId;
		this.firstName = firstName;
		this.accountTitle = accountTitle;
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
