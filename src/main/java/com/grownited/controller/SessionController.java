package com.grownited.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RequestBody;

import com.grownited.dto.ExpenseDto; 
import com.grownited.entity.UserEntity;
import com.grownited.repository.ExpenseRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {
	
	@Autowired
	UserRepository repoUser; 
	@Autowired
	ExpenseRepository repoExpense; 
	@Autowired
	MailService serviceMail;
	@Autowired 
	PasswordEncoder encoder;

	@GetMapping("signup")//name in url
	public String signup() {
		//
		return "Signup"; // signup jsp Name
	}
	
	@GetMapping("userHome")//name in url
	public String userHome() {
		//
		return "userHome"; // signup jsp Name
	}
	@GetMapping("adminHome")//name in url
	public String adminHome() {
		//
		return "adminHome"; // signup jsp Name
	}

	@GetMapping(value={"login","/"})//name in url
	public String login() {
		return "Login"; //login jsp name
	} 
	
	// open forgetPassword jsp
	@GetMapping("fp")
	public String fp() {
		
		return "forgetPassword"; // jsp name
	}
	@PostMapping("sendOTPfp")
	public String sendOTPfp(String email, Model model) {
		Optional<UserEntity> op = repoUser.findByEmail(email);
		if (op.isEmpty()) {
			// email invalid
			model.addAttribute("error", "Email not found");
			return "forgetPassword";
		} else {
			// email valid
			// send mail otp
			// opt generate
			// send mail otp
			String otp = "";
			otp = (int) (Math.random() * 1000000) + "";// 0.25875621458541

			UserEntity user = op.get();
			user.setOtp(otp);
			repoUser.save(user);// update otp for user
			serviceMail.sendOtpfp(email, user.getFirstName(), otp);
			return "resetPassword";

		}
	}
	

	// submit on forgetpassword ->
	@PostMapping("sendOtpfp")
	public String sendOtpfp(String email) {
		
		Optional<UserEntity> op = repoUser.findByEmail(email);
		if(op.isEmpty()) {
			return "fp";
		}else {
			
		}
		
		
		return "resetPassword";
	}

	@PostMapping("updatePassword")
	public String updatePassword(String email, String password, String otp, Model model) {
		Optional<UserEntity> op = repoUser.findByEmail(email);
		if (op.isEmpty()) {
			model.addAttribute("error", "Invalid Data");
			return "resetPassword";
		} else {
			UserEntity user = op.get();
			if (user.getOtp().equals(otp)) {
				String encPwd = encoder.encode(password);
				user.setPassword(encPwd);
				user.setOtp("");
				repoUser.save(user);// update
			} else {

				model.addAttribute("error", "Invalid Data");
				return "resetPassword";
			}
		}
		model.addAttribute("msg","Password updated");
		return "Login";
	
	}
	
	@PostMapping("authenticate")
	public String authenticate( String email, String password, Model model, HttpSession session ) {
		System.out.print("authentictae user: " + email);
		
		Optional<UserEntity> op = repoUser.findByEmail(email);
		
		if(op.isPresent()) {
			UserEntity user =op.get();
			boolean ans = encoder.matches(password, user.getPassword());
			if(ans == true) {
				if(user.getRole().equals("USER")) {
					session.setAttribute("user", user);
					List<Object[]> expenseData = repoExpense.getExpenseChartDetail(user.getUserId());
				    model.addAttribute("expenseData", expenseData);
					return "redirect:/userHome";
				}
				else if(user.getRole().equals("ADMIN")) {
					session.setAttribute("user", user);					
					return "redirect:/adminHome";
				}else {
					model.addAttribute("error", "Please contact Admin with Error Code #0991");
					return "Login";
				}
			}
		
		}
		model.addAttribute("error", "Invalid Credentials");
		return "Login";
	}
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	@GetMapping("userProfile")
	public String userProfile(HttpSession session) {
		session.invalidate();
		return "redirect:/userProfile";
	}
	
}
