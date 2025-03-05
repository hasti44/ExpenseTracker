package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.dto.CategoryDto;
import com.grownited.entity.CategoryEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CategoryRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class CategoryController {
	@Autowired
	CategoryRepository repoCategory; 
	
	@GetMapping("addCategory")//name in url
	public String addCategory() {
		//
		return "addCategory"; //  jsp Name
	}
	
	
	@PostMapping("saveCategory")//name in url
	public String saveCategory(CategoryEntity categoryEntity, HttpSession session) {
		UserEntity user = (UserEntity)session.getAttribute("user");//Object
		Integer userId = user.getUserId();
		categoryEntity.setUserId(userId);
		System.out.println("add new category and db insertion.....");
        // Process the data (e.g., save to database)
		
		repoCategory.save(categoryEntity);
		
		return "redirect:/listCategory"; // jsp Name
	}
	
	@GetMapping("listCategory")//name in url
	public String listCategory(Model model ) {
		
		//List<CategoryEntity> categoryList = repoCategory.findAll();//retrive data from DB
		List<CategoryDto> categoryList = repoCategory.getAll();//retrive data from DB
		
		//controller to jsp
		model.addAttribute("categoryList", categoryList);//("dataname",datavalue)
		                                
		
		return "listCategory"; //login jsp name
	}
	
	@GetMapping("viewCategory")
	public String viewCategory(Integer categoryId, Model model) {
			System.out.println(categoryId);
			Optional<CategoryEntity> op =  repoCategory.findById(categoryId);
			if(op.isEmpty()) {
				//no data found
			}else {
				CategoryEntity c = op.get();
				model.addAttribute("c",c);
			}
		return "viewCategory";
	}
	@GetMapping("deleteCategory")
	public String deleteCategory(Integer categoryId) {
		System.out.println(categoryId);
		repoCategory.deleteById(categoryId);
		return "redirect:/listCategory";
	}
}
