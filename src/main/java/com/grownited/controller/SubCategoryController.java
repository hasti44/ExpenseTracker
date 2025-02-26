package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CategoryEntity;
import com.grownited.entity.SubCategoryEntity;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.SubCategoryRepository;

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
		
		System.out.println(categoryList.get(0).getTitle());                                

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
