package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.IncomeEntity;
import com.grownited.repository.IncomeRepository;

@Controller
public class IncomeController {
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
	
	@GetMapping("viewIncome")
	public String viewIncome(Integer incomeId, Model model) {
			System.out.println(incomeId);
			Optional<IncomeEntity> op =  repoIncome.findById(incomeId);
			if(op.isEmpty()) {
				//no data found
			}else {
				IncomeEntity i = op.get();
				model.addAttribute("i",i);
			}
		return "viewIncome";
	}
	@GetMapping("deleteIncome")
	public String deleteIncome(Integer incomeId) {
		System.out.println(incomeId);
		repoIncome.deleteById(incomeId);
		return "redirectct:/listIncome";
	}
}
