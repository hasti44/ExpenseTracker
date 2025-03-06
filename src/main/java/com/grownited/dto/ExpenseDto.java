package com.grownited.dto;

public class ExpenseDto {
	private Integer expenseId;
	private Integer accountId;
	private float amount;
	private Integer categoryId;
	private String description;
	private String expenseTitle;
	private Integer subCategoryId;
	private String transactionDate;
	private Integer userId;
	private Integer venderId;
	private String firstName;
	private String categoryTitle;
	private String subCategoryTitle;
	private String venderTitle;
	private String accountTitle;
	public ExpenseDto(Integer expenseId, Integer accountId, float amount, Integer categoryId, String description,
			String expenseTitle, Integer subCategoryId, String transactionDate, Integer userId, Integer venderId,
			String firstName, String categoryTitle, String subCategoryTitle, String venderTitle, String accountTitle) {
		
		this.expenseId = expenseId;
		this.accountId = accountId;
		this.amount = amount;
		this.categoryId = categoryId;
		this.description = description;
		this.expenseTitle = expenseTitle;
		this.subCategoryId = subCategoryId;
		this.transactionDate = transactionDate;
		this.userId = userId;
		this.venderId = venderId;
		this.firstName = firstName;
		this.categoryTitle = categoryTitle;
		this.subCategoryTitle = subCategoryTitle;
		this.venderTitle = venderTitle;
		this.accountTitle = accountTitle;
	}
	public Integer getExpenseId() {
		return expenseId;
	}
	public void setExpenseId(Integer expenseId) {
		this.expenseId = expenseId;
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
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getExpenseTitle() {
		return expenseTitle;
	}
	public void setExpenseTitle(String expenseTitle) {
		this.expenseTitle = expenseTitle;
	}
	public Integer getSubCategoryId() {
		return subCategoryId;
	}
	public void setSubCategoryId(Integer subCategoryId) {
		this.subCategoryId = subCategoryId;
	}
	public String getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(String transactionDate) {
		this.transactionDate = transactionDate;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getVenderId() {
		return venderId;
	}
	public void setVenderId(Integer venderId) {
		this.venderId = venderId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getCategoryTitle() {
		return categoryTitle;
	}
	public void setCategoryTitle(String categoryTitle) {
		this.categoryTitle = categoryTitle;
	}
	public String getSubCategoryTitle() {
		return subCategoryTitle;
	}
	public void setSubCategoryTitle(String subCategoryTitle) {
		this.subCategoryTitle = subCategoryTitle;
	}
	public String getVenderTitle() {
		return venderTitle;
	}
	public void setVenderTitle(String venderTitle) {
		this.venderTitle = venderTitle;
	}
	public String getAccountTitle() {
		return accountTitle;
	}
	public void setAccountTitle(String accountTitle) {
		this.accountTitle = accountTitle;
	}
	
}
