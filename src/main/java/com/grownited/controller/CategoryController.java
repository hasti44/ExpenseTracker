package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.CategoryEntity;
import com.grownited.repository.CategoryRepository;


//import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryRepository repoCategory; 

	@GetMapping("addCategory")//name in url
	public String addCategory() {
		//
		return "addCategory"; // signup jsp Name
	}
	@GetMapping("addExpense")//name in url
	public String addExpense() {
		//
		return "addExpense"; // signup jsp Name
	}
	
	@PostMapping("saveCategory")//name in url
	public String saveCategory(CategoryEntity categoryEntity) {
		
		System.out.println("add new category and db insertion.....");
        // Process the data (e.g., save to database)
		
		repoCategory.save(categoryEntity);
	    System.out.println("category added: " + categoryEntity.getCategory() );
		
		return "addCategory"; // signup jsp Name
	}
}
