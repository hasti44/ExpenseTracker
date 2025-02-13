<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>log in page</title>
	</head>

<style>
	body {
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #6a11cb, #2575fc);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
	}
	
	.container {
	    width: 100%;
	    max-width: 400px;
	    background: white;
	    padding: 20px;
	    border-radius: 10px;
	    text-align: center;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	}
	
	h2 {
	    margin-bottom: 20px;
	}
	
	input {
	    width: 90%;
	    padding: 10px;
	    margin: 10px 0;
	    border: 1px solid #ccc;
	    border-radius: 5px;
	}
	
	button {
	    width: 100%;
	    padding: 10px;
	    background: #6a11cb;
	    color: white;
	    border: none;
	    border-radius: 5px;
	    cursor: pointer;
	    font-size: 16px;
	}
	
	button:hover {
	    background: #2575fc;
	}
	
	#toggle-text {
	    margin-top: 10px;
	}
	
	#toggle-link {
	    color: #6a11cb;
	    text-decoration: none;
	    font-weight: bold;
	}
	
	#toggle-link:hover {
	    text-decoration: underline;
	}
	
	#confirm-pass-field {
	    display: none;
	}
		
</style>
	<body>
	    <div class="container">
	        <div class="form-box">
	            <h2 id="form-title">Login</h2>
	            <form id="auth-form" method="post" action="authenticate">
	                <input type="text" id="username" placeholder="Username" required>
	                <input type="password" id="password" placeholder="Password" required>
	                
	                <p class="forgot-password">
	                    <a href="fp" id="forgot-link">Forgot Password?</a>
	                </p>
	                <button type="submit" id="submit-btn">Login</button>
	            </form>
	            
	            
	            <p id="toggle-text">Don't have an account? <a href="signup" id="toggle-link">Sign Up</a></p>
	        </div>
	    </div>	
	</body>
</html> 



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="Component/styles.css">
<%@include file="Component/links.jsp"%>
</head>
<body>
	<%@include file="Component/navbar.jsp"%>
	<div class="container pt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-white text-center" style="background-color:#36454F;">
						<h4 class="fw-bold pt-2" style="letter-spacing: 2px;">Log In</h4>
					</div>

					<div class="card-body">
						<div class="msg">
							<c:if test="${not empty msg}">
								<p class="text-center text-danger">${msg}</p>
								<c:remove var="msg" />
							</c:if>
						</div>
						<form action="login" method="post">
							<div class="mb-2">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" name="email"
									placeholder="enter your email" class="form-control"
									id="exampleInputEmail1" value="">
							</div>
							<div class="mb-2">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" name="password"
									placeholder="enter your password" class="form-control"
									id="exampleInputPassword1">
							</div>
							<p class="pt-2">
								forgot your password don't worry? <a id="forgotpass"
									href="emailrecovery.jsp">forgot password</a>
							</p>
							<button type="submit" name="login"
								class="btn col-md-12" style="background-color:#36454F; color:#fff;">login</button>
							<p class="text-center m-2">
								don't have an account? <a href="register.jsp">Register</a>
							</p>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html> --%>