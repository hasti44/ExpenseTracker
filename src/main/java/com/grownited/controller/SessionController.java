package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class SessionController {

	@GetMapping(value={"signup","/"})//name in url
	public String signup() {
		//
		return "Signup"; // signup jsp Name
	}

	@GetMapping("login")//name in url
	public String login() {
		return "Login"; //login jsp name
	} 
	
	@GetMapping("fp")//name in url
	public String fp() {
		return "ForgotPassword"; //login jsp name
	} 
	
	@PostMapping("saveuser")
	public String saveUser() {
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
	
	
}
