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
		String subject ="Welcome to TrackYourExp – Let’s Get Started!";
		String body="Dear "+ firstName+",\r\n"
				+ "\r\n"
				+ "With TrackYourExp, you can easily manage your expenses, track spending, and stay on top of your financial goals.\r\n"
				+ "\r\n"
				+ "Happy Tracking! 💰🚀\r\n"
				+ "\r\n"
				+ "Best regards,"
				+ "\r\n"
				+ "The TrackYourExp Team\r\n";
		String from="21csjiy014@ldce.ac.in";
		
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(email);
        message.setSubject(subject);
        message.setText(body);
        message.setFrom(from);

        senderMail.send(message);
	}
	
	public void sendOtpfp(String email, String firstName, String otp) {
		String subject ="Password Reset Request";
		String body="Dear"+ firstName+",\r\n"
				+ "\r\n"
				+ "We received a request to reset your password for your TrackYourExp account.\r\n"
				+ "\r\n"
				+ "this is the OTP for your password reset: "
				+ otp + "\r\n"
				+ "If you did not request a password reset, please ignore this email.\r\n"
				+ "\r\n"
				+ "Stay secure!\n\r\n"
				+ "\r\n"
				+ "The TrackYourExp Team\r\n";
		String from="21csjiy014@ldce.ac.in";
		
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);
		message.setFrom(from);
		
		senderMail.send(message);
	}
}
