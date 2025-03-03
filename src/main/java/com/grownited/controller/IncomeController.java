package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.dto.IncomeDto;
import com.grownited.entity.AccountEntity;
import com.grownited.entity.IncomeEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.AccountRepository;
import com.grownited.repository.IncomeRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class IncomeController {
	@Autowired
	IncomeRepository repoIncome;
	@Autowired
	AccountRepository repoAccount;
	
	@GetMapping("addIncome")//name in url
	public String addIncome(Model model) {
		List<AccountEntity> accountList = repoAccount.findAll();
		model.addAttribute("accountList", accountList);//("dataname",datavalue)
		
		return "addIncome"; // jsp Name
	}
	
	@PostMapping("saveIncome")//name in url
	public String saveIncome(IncomeEntity incomeEntity, HttpSession session ) {
		UserEntity user = (UserEntity)session.getAttribute("user");//Object
		Integer userId = user.getUserId();
		incomeEntity.setUserId(userId);
		repoIncome.save(incomeEntity);
		System.out.println("new income details and db insertion.... ");
		System.out.println(incomeEntity.getAccountId());
		
		return "redirect:/listIncome"; // jsp Name
	}
	
	@GetMapping("listIncome")//name in url
	public String listIncome(Model model ) {
		
		List<IncomeDto> incomeList = repoIncome.getAll();//retrive data from DB
		
		//controller to jsp
		model.addAttribute("incomeList", incomeList);//("dataname",datavalue)
		                               
		
		return "listIncome"; //jsp name
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
		return "redirect:/listIncome";
	}
}
