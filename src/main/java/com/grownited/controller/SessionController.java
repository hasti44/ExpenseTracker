package com.grownited.controller;

import java.time.LocalDateTime;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RequestBody;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

@Controller
public class SessionController {
	
	@Autowired
	UserRepository repoUser; 
	@Autowired
	MailService serviceMail;
	@Autowired 
	PasswordEncoder encoder;

	@GetMapping("signup")//name in url
	public String signup() {
		//
		return "Signup"; // signup jsp Name
	}
<<<<<<< HEAD
	@GetMapping("Home")//name in url
	public String Home() {
		//
		return "Home"; // signup jsp Name
	}
=======
>>>>>>> 3e14a45d6ba8faa9c90502b588eb872969ca31d3

	@GetMapping(value={"login","/"})//name in url
	public String login() {
		return "Login"; //login jsp name
	} 
	
	@GetMapping("fp")//name in url
	public String fp() {
		return "ForgotPassword"; // jsp name
	} 
	
	
	//sign up 
	@PostMapping("saveUser")
	public String saveUser(UserEntity entityUser) {
		
		//encryption of password
		String ePass = encoder.encode(entityUser.getPassword());
		entityUser.setPassword(ePass);
		System.out.println("validation and db insertion.....");
		
		System.out.println(entityUser.getFirstName());
		System.out.println(entityUser.getEmail());
		entityUser.setRole("USER");
		entityUser.setActive(true);
		
		entityUser.setCreatedAt(LocalDateTime.now());
		repoUser.save(entityUser);
		
		//send mail to user
		//serviceMail.sendWelcomeMail(entityUser.getEmail(), entityUser.getFirstName());

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
	public String authenticate( String email,String password ) {
		System.out.print("authentictae user: " + email);
		Optional<UserEntity> op = repoUser.findByEmail(email);
		if(op.isEmpty()) {
			//no user found
		}else {
			UserEntity user =op.get();
			if(encoder.matches(password, user.getPassword())) return "Home";
		}
		
		return "Login";
	}
	
	
}
