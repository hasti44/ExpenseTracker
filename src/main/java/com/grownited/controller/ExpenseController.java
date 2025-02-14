package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AccountEntity;
import com.grownited.entity.ExpenseEntity;
import com.grownited.entity.IncomeEntity;
import com.grownited.entity.SubCategoryEntity;
import com.grownited.repository.AccountRepository;
import com.grownited.repository.ExpenseRepository;
import com.grownited.repository.IncomeRepository;
import com.grownited.repository.SubCategoryRepository;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseRepository repoExpense; 
	@Autowired
	AccountRepository repoAccount;
	@Autowired
	IncomeRepository repoIncome;
	@Autowired
	SubCategoryRepository repoSubCategory;
	

	@GetMapping("addExpense")//name in url
	public String addExpense() {

		return "addExpense"; // signup jsp Name
	}
	
	@GetMapping("addIncome")//name in url
	public String addIncome() {

		return "addIncome"; // signup jsp Name
	}
	
	@GetMapping("addAccount")//name in url
	public String addAccount() {

		return "addAccount"; // signup jsp Name
	}
	@GetMapping("addSubCategory")//name in url
	public String addSubCategory() {

		return "addSubCategory"; // signup jsp Name
	}
	
	
	@PostMapping("saveExpense")//name in url
	public String saveExpense(ExpenseEntity expenseEntity ) {
	
		repoExpense.save(expenseEntity);
		System.out.println("new expense details and db insertion.... ");
		
		return "Home"; // signup jsp Name
	}
	
	@PostMapping("saveAccount")//name in url
	public String saveAccount(AccountEntity accountEntity ) {
	
		repoAccount.save(accountEntity);
		System.out.println("new Account details and db insertion.... ");
		
		return "Home"; // signup jsp Name
	}
	
	@PostMapping("saveIncome")//name in url
	public String saveIncome(IncomeEntity incomeEntity ) {
	
		repoIncome.save(incomeEntity);
		System.out.println("new income details and db insertion.... ");
		
		return "Home"; // signup jsp Name
	}
	
	@PostMapping("saveSubCategory")//name in url
	public String saveSubCategory(SubCategoryEntity subCategoryEntity ) {
		System.out.println(subCategoryEntity.getTitle());
		System.out.println(subCategoryEntity.getCategoryId());
		System.out.println(subCategoryEntity);

		System.out.println("new subCategory details and db insertion.... ");
		repoSubCategory.save(subCategoryEntity);
		
		return "Home"; // signup jsp Name
	}
}
