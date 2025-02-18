package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AccountEntity;
import com.grownited.entity.CategoryEntity;
import com.grownited.entity.ExpenseEntity;
import com.grownited.entity.IncomeEntity;
import com.grownited.entity.SubCategoryEntity;
import com.grownited.repository.AccountRepository;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.ExpenseRepository;
import com.grownited.repository.IncomeRepository;
import com.grownited.repository.SubCategoryRepository;

@Controller
public class ExpenseController {
	
//====================================================================================================================================================	 
//===============================================category controller==================================================================================
//====================================================================================================================================================	 
	@Autowired
	CategoryRepository repoCategory; 
	
	@GetMapping("addCategory")//name in url
	public String addCategory() {
		//
		return "addCategory"; //  jsp Name
	}
	
	
	@PostMapping("saveCategory")//name in url
	public String saveCategory(CategoryEntity categoryEntity) {
		
		System.out.println("add new category and db insertion.....");
        // Process the data (e.g., save to database)
		
		repoCategory.save(categoryEntity);
	    System.out.println("category added: " + categoryEntity.getTitle() );
		
		return "redirect:/listCategory"; // jsp Name
	}
	
	@GetMapping("listCategory")//name in url
	public String listCategory(Model model ) {
		
		List<CategoryEntity> categoryList = repoCategory.findAll();//retrive data from DB
		
		//controller to jsp
		model.addAttribute("categoryList", categoryList);//("dataname",datavalue)
		
		System.out.println(categoryList.get(0).getTitle());                                 
		
		return "listCategory"; //login jsp name
	}
//====================================================================================================================================================	 
//===============================================expense controller===================================================================================
//====================================================================================================================================================	 
	@Autowired
	ExpenseRepository repoExpense; 
	
	@GetMapping("addExpense")//name in url
	public String addExpense() {

		return "addExpense"; // jsp Name
	}
	
	@PostMapping("saveExpense")//name in url
	public String saveExpense(ExpenseEntity expenseEntity ) {
	
		repoExpense.save(expenseEntity);
		System.out.println("new expense details and db insertion.... ");
		
		return "redirect:/listExpense"; // jsp Name
	}
	
	@GetMapping("listExpense")//name in url
	public String listExpense(Model model ) {
		//retrive data from DB
		List<ExpenseEntity> expenseList = repoExpense.findAll();
		//controller to jsp
		model.addAttribute("expenseList", expenseList);//("dataname",datavalue)
		System.out.println(expenseList.get(0).getTitle());                                 
		return "listExpense"; //login jsp name
	}
	
//====================================================================================================================================================	 
//===============================================income controller====================================================================================	
//====================================================================================================================================================	 
	@Autowired
	IncomeRepository repoIncome;
	
	@GetMapping("addIncome")//name in url
	public String addIncome() {

		return "addIncome"; // jsp Name
	}
	
	@PostMapping("saveIncome")//name in url
	public String saveIncome(IncomeEntity incomeEntity ) {
	
		repoIncome.save(incomeEntity);
		System.out.println("new income details and db insertion.... ");
		
		return "redirect:/listIncome"; // jsp Name
	}
	
	@GetMapping("listIncome")//name in url
	public String listIncome(Model model ) {
		
		List<IncomeEntity> incomeList = repoIncome.findAll();//retrive data from DB
		
		//controller to jsp
		model.addAttribute("IncomeList", incomeList);//("dataname",datavalue)
		
		System.out.println(incomeList.get(0).getTitle());                                 
		
		return "listIncome"; //login jsp name
	}
//====================================================================================================================================================	 
//===============================================account controller===================================================================================	
//====================================================================================================================================================	 
	@Autowired
	AccountRepository repoAccount;
	
	@GetMapping("addAccount")//name in url
	public String addAccount() {

		return "addAccount"; // jsp Name
	}
	
	@PostMapping("saveAccount")//name in url
	public String saveAccount(AccountEntity accountEntity ) {
	
		repoAccount.save(accountEntity);
		System.out.println("new Account details and db insertion.... ");
		
		return "redirect:/listAccount"; // jsp Name
	}
	
	@GetMapping("listAccount")//name in url
	public String listAccount(Model model ) {
		
		List<AccountEntity> accountList = repoAccount.findAll();//retrive data from DB
		
		//controller to jsp
		model.addAttribute("AccountList", accountList);//("dataname",datavalue)
		
		System.out.println(accountList.get(0).getTitle());                                 
		
		return "listAccount"; //login jsp name
	}
//====================================================================================================================================================	 
//===============================================Sub Category controller==============================================================================
//====================================================================================================================================================	 
	@Autowired
	SubCategoryRepository repoSubCategory;
	
	@GetMapping("addSubCategory")//name in url
	public String addSubCategory() {

		return "addSubCategory"; // jsp Name
	}
	
	@PostMapping("saveSubCategory")//name in url
	public String saveSubCategory(SubCategoryEntity subCategoryEntity ) {
		System.out.println(subCategoryEntity.getTitle());
		System.out.println(subCategoryEntity.getCategoryId());
		
		System.out.println("new subCategory details and db insertion.... ");
		repoSubCategory.save(subCategoryEntity);
		
		return "redirect:/listSubCategory"; // jsp Name
	}
	
	@GetMapping("listSubCategory")//name in url
	public String listSubCategory(Model model ) {
		
		List<SubCategoryEntity> subCategoryList = repoSubCategory.findAll();//retrive data from DB
		
		//controller to jsp
		model.addAttribute("subCategoryList", subCategoryList);//("dataname",datavalue)
		
		System.out.println(subCategoryList.get(0).getTitle());                                 
		
		return "listSubCategory"; //login jsp name
	}
//====================================================================================================================================================	 
}
