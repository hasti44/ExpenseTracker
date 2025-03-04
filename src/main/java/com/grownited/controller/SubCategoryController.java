package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grownited.entity.CategoryEntity;
import com.grownited.entity.SubCategoryEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.SubCategoryRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class SubCategoryController {
	@Autowired
	SubCategoryRepository repoSubCategory;
	@Autowired
	CategoryRepository repoCategory;
	
	@GetMapping("addSubCategory")//name in url
	public String addSubCategory(Model model) {
		List<CategoryEntity> categoryList = repoCategory.findAll();//retrive data from DB
		
		//controller to jsp
		model.addAttribute("categoryList", categoryList);//("dataname",datavalue)
		                               

		return "addSubCategory"; // jsp Name
	}
	
	@PostMapping("saveSubCategory")//name in url
	public String saveSubCategory(SubCategoryEntity entitySubCategory, HttpSession session ) {
		UserEntity user = (UserEntity)session.getAttribute("user");//Object
		Integer userId = user.getUserId();
		entitySubCategory.setUserId(userId);
		System.out.println(entitySubCategory.getCategoryId());
		
		System.out.println("new subCategory details and db insertion.... ");
		repoSubCategory.save(entitySubCategory);
		
		return "redirect:/listSubCategory"; // jsp Name
	}
	
	@GetMapping("listSubCategory")//name in url
	public String listSubCategory(Model model) {
		
		List<SubCategoryEntity> subCategoryList = repoSubCategory.findAll();//retrive data from DB
		
		//controller to jsp
		model.addAttribute("subCategoryList", subCategoryList);//("dataname",datavalue)
		                                
		
		return "listSubCategory"; //login jsp name
	}
	@GetMapping("getSubCategoriesByCategory") // New mapping for AJAX
	@ResponseBody
	public List<SubCategoryEntity> getSubCategoriesByCategory(@RequestParam("categoryId") Integer categoryId) {
	    return repoSubCategory.findByCategoryId(categoryId);
	}

	@GetMapping("viewSubCategory")
	public String viewSubCategory(Integer subCategoryId, Model model) {
			System.out.println(subCategoryId);
			Optional<SubCategoryEntity> op =  repoSubCategory.findById(subCategoryId);
			if(op.isEmpty()) {
				//no data found
			}else {
				SubCategoryEntity s = op.get();
				model.addAttribute("s",s);
			}
		return "viewCategory";
	}
	@GetMapping("deleteSubCategory")
	public String deleteSubCategory(Integer subCategoryId) {
		System.out.println(subCategoryId);
		repoSubCategory.deleteById(subCategoryId);
		return "redirect:/listSubCategory";
	}
}
