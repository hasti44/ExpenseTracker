package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AccountEntity;
import com.grownited.repository.AccountRepository;

@Controller
public class AccountController {
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
		model.addAttribute("accountList", accountList);//("dataname",datavalue)
		System.out.println(accountList.get(0).getTitle());                                 
		
		return "listAccount"; //login jsp name
	}
	
	@GetMapping("viewAccount")
	public String viewAccount(Integer accountId, Model model) {
			System.out.println(accountId);
			Optional<AccountEntity> op =  repoAccount.findById(accountId);
			if(op.isEmpty()) {
				//no data found
			}else {
				AccountEntity a = op.get();
				model.addAttribute("a",a);
			}
		return "viewExpense";
	}
	@GetMapping("deleteAccount")
	public String deleteAccount(Integer accountId) {
		System.out.println(accountId);
		repoAccount.deleteById(accountId);
		return "redirect:/listAccount";
	}
}
