package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ExpenseEntity;
import com.grownited.repository.ExpenseRepository;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseRepository repoExpense; 

	@GetMapping("addExpense")//name in url
	public String addExpense() {
		//
		return "addExpense"; // signup jsp Name
	}
	
	@PostMapping("saveExpense")//name in url
	public String saveExpense(ExpenseEntity expenseEntity ) {
		//
	
		repoExpense.save(expenseEntity);
		System.out.println("new expense details and db insertion.... ");
		return "Home"; // signup jsp Name
	}
}
