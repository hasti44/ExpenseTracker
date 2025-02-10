<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>sign up page</title>
		<!-- <link rel="stylesheet" href="/webContent/style.css"> -->
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
		
		p {
		    margin-top: 10px;
		}
		
		a {
		    color: #6a11cb;
		    text-decoration: none;
		    font-weight: bold;
		}
		
		a:hover {
		    text-decoration: underline;
		}
			
	</style>

	<body>
	    <div class="container">
	        <div class="form-box">
	            <h2>Sign Up</h2>
	            <form id="signup-form" method="post" action="saveUser">
	                <input type="text" id="username" placeholder="Username" required>
	                <input type="email" id="email" placeholder="Email" required>
	                <input type="password" id="password" placeholder="Password" required>
	                <input type="password" id="confirm-password" placeholder="Confirm Password" required>
	                
	                <button type="submit">Sign Up</button>
	            </form>
	            <p>Already have an account? <a href="login">Login</a></p>
	        </div>
	    </div>	
	</body>
</html>