package com.grownited.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	@Autowired
	private JavaMailSender senderMail;
	
	public void sendWelcomeMail(String email, String firstName) {
		String subject ="Welcome Mail";
		String body="Dear"+ firstName+"\r\n"
				+ "\r\n"
				+ "Welcome to Expense Tracker! We're excited to help you manage your expenses effortlessly. Get started by logging in and tracking your first expense today!\r\n"
				+ "\r\n"
				+ "Happy saving!\r\n";
		String from="hastijiyani04@gmail.com";
		
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(email);
        message.setSubject(subject);
        message.setText(body);
        message.setFrom(from);

        senderMail.send(message);
	}
}
