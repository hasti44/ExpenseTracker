package com.grownited.Filter;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

import com.grownited.entity.UserEntity;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Component
public class IsLoginFilter implements Filter {
	ArrayList<String> publicURL = new ArrayList<>();
	public IsLoginFilter() {
		
		publicURL.add("/login");
		publicURL.add("/signup");
 		publicURL.add("/saveuser");
 		publicURL.add("/fp");
 		publicURL.add("/sendOTPfp");
 		publicURL.add("/authenticate");
 		publicURL.add("/logout");
 		publicURL.add("/updatePassword");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
				
		HttpServletRequest hreq = (HttpServletRequest) request;
		
 		String uri = hreq.getRequestURI();
  		System.out.println("Filter Call....." + uri);
  		
 		if (publicURL.contains(uri) || uri.contains(".css") || uri.contains(".js") || uri.contains("dist") || uri.contains("images")) {
 			chain.doFilter(request, response);
 		} else {
 			HttpSession session = hreq.getSession();
 			UserEntity user = (UserEntity) session.getAttribute("user");
 
 			if (user == null) {
 				hreq.getRequestDispatcher("login").forward(request, response);			
 			}else {
 				chain.doFilter(request, response);
 			}
 		}
	}
}
