package com.grownited.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class UserController {
	
	@Autowired
	UserRepository repoUser; 
	@Autowired
	MailService serviceMail;
	@Autowired 
	PasswordEncoder encoder;
	//sign up 
	@PostMapping("saveUser")
	public String saveUser(UserEntity entityUser) {
		
		//encryption of password
		String ePass = encoder.encode(entityUser.getPassword());
		entityUser.setPassword(ePass);
		
		System.out.println("validation and db insertion.....");
		System.out.println(entityUser.getEmail());
		
		entityUser.setRole("USER");
		entityUser.setActive(true);
		entityUser.setCreatedAt(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
		
		repoUser.save(entityUser);
		
		//send mail to user
		serviceMail.sendWelcomeMail(entityUser.getEmail(), entityUser.getFirstName());

		return "Login";
	}
	
	@GetMapping("listUser")
	public String listUser(Model model) {
		
		List<UserEntity> userList = repoUser.findAll();//retrive data from DB
		
		//controller to jsp
		model.addAttribute("userList", userList);//("dataname",datavalue)
		return "listUser";
	}
	@GetMapping("userprofile")
	public String userprofile() {
		return "userProfile";
	}
	
}
