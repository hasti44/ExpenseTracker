package com.grownited.dto;

public class IncomeDto {
	private Integer incomeId;
	private String incomeTitle;
	private Integer accountId;
	//status
	private float amount;
	private String transactionDate;
	private String description;
	private Integer userId;
	private String firstName;
	public IncomeDto(Integer incomeId, String incomeTitle, Integer accountId, float amount, String transactionDate,
			String description, Integer userId, String firstName) {
		super();
		this.incomeId = incomeId;
		this.incomeTitle = incomeTitle;
		this.accountId = accountId;
		this.amount = amount;
		this.transactionDate = transactionDate;
		this.description = description;
		this.userId = userId;
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
	
	
}
