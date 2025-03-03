package com.grownited.dto;

public class AccountDto {
	private Integer accountId;
	private String accountTitle;
	private float amount;
	private String description;
	private Integer userId;
	private String firstName;
	
	
	public AccountDto(Integer accountId, String accountTitle, float amount, String description, Integer userId,
			String firstName) {
		super();
		this.accountId = accountId;
		this.accountTitle = accountTitle;
		this.amount = amount;
		this.description = description;
		this.userId = userId;
		this.firstName = firstName;
	}
	public Integer getAccountId() {
		return accountId;
	}
	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}
	public String getAccountTitle() {
		return accountTitle;
	}
	public void setAccountTitle(String accountTitle) {
		this.accountTitle = accountTitle;
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
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	
}
