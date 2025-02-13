package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Controller
public class SessionController {
	
	@Autowired
	UserRepository repoUser; 


	@GetMapping("signup")//name in url
	public String signup() {
		//
		return "Signup"; // signup jsp Name
	}

	@GetMapping(value={"login","/"})//name in url
	public String login() {
		System.out.println("authentictae user.");
		return "Login"; //login jsp name
	} 
	
	@GetMapping("fp")//name in url
	public String fp() {
		return "ForgotPassword"; //login jsp name
	} 
	
	@PostMapping("saveUser")
	public String saveUser(UserEntity userEntity) {
		System.out.println("validation and db insertion.....");
		
		System.out.println(userEntity.getFirstName());
		System.out.println(userEntity.getLastName());
		System.out.println(userEntity.getGender());
		System.out.println(userEntity.getEmail());
		System.out.println(userEntity.getPassword());
		
		
		repoUser.save(userEntity);
		return "Login";
	}
	
	
	@PostMapping("updatePassword")
	public String updatePassword() {
		return "Login";
	}
	
	
	@PostMapping("sendOTP")
	public String sendOTP() {
		return "resetPassword";
	}
	@PostMapping("authenticate")
	public String authenticate() {
		return "Home";
	}
	
	
}
