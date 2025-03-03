package com.grownited.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.AccountEntity;
import com.grownited.entity.CategoryEntity;
import com.grownited.entity.ExpenseEntity;
import com.grownited.entity.SubCategoryEntity;
import com.grownited.entity.UserEntity;
import com.grownited.entity.VenderEntity;
import com.grownited.repository.AccountRepository;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.ExpenseRepository;
import com.grownited.repository.SubCategoryRepository;
import com.grownited.repository.VenderRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseRepository repoExpense; 
	@Autowired
	CategoryRepository repoCategory;
	@Autowired
	SubCategoryRepository repoSubCategory;
	@Autowired
	AccountRepository repoAccount;
	@Autowired
	VenderRepository repoVender;
	
	@GetMapping("addExpense")//name in url
	public String addExpense(Model model,@RequestParam(value = "categoryId", required = false)Integer categoryId) {
		
		List<AccountEntity> accountList = repoAccount.findAll();
		model.addAttribute("accountList", accountList);//("dataname",datavalue)
		
		List<CategoryEntity> categoryList = repoCategory.findAll();
		model.addAttribute("categoryList", categoryList);//("dataname",datavalue)

		List<VenderEntity> venderList = repoVender.findAll();
		model.addAttribute("venderList", venderList);//("dataname",datavalue)

		List<SubCategoryEntity> subCategoryList = repoSubCategory.findAll();
		model.addAttribute("subCategoryList", subCategoryList);
		
		return "addExpense"; // jsp Name
		
	}
	
	@PostMapping("saveExpense")//name in url
	public String saveExpense(ExpenseEntity entityExpense,HttpSession session) {

		entityExpense.setTransactionDate(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
		UserEntity user = (UserEntity)session.getAttribute("user");//Object
		Integer userId = user.getUserId();
		entityExpense.setUserId(userId);
		repoExpense.save(entityExpense);
		System.out.println("new expense details and db insertion.... ");
		
		return "redirect:/listExpense"; // jsp Name
	}
	
	@GetMapping("listExpense")//name in url
	public String listExpense(Model model,HttpSession session ) {
		
		//retrive data from DB
		List<ExpenseEntity> expenseList = repoExpense.findAll();
		
			    
	    //List<ExpenseEntity> expenseList = repoExpense.findByUserId(userId);

	    // Add expense list to model
	    model.addAttribute("expenseList", expenseList);	
		//controller to jsp
		model.addAttribute("expenseList", expenseList);//("dataname",datavalue)                               
		return "listExpense"; //login jsp name
	}
	@GetMapping("viewExpense")
	public String viewExpense(Integer expenseId, Model model) {
			System.out.println(expenseId);
			Optional<ExpenseEntity> op =  repoExpense.findById(expenseId);
			if(op.isEmpty()) {
				//no data found
			}else {
				ExpenseEntity e = op.get();
				model.addAttribute("e",e);
			}
		return "viewExpense";
	}
	@GetMapping("deleteExpense")
	public String deleteExpense(Integer expenseId) {
		System.out.println(expenseId);
		repoExpense.deleteById(expenseId);
		return "redirect:/listExpense";
	}
}