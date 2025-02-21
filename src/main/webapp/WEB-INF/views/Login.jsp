<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Pages / Login - TrackYourExp Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: TrackYourExp
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index.html" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo.png" alt="">
                  <span class="d-none d-lg-block">TrackYourExp</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                    <p class="text-center small">Enter your username & password to login</p>
                  </div>

                  <form class="row g-3 needs-validation" method="post" action="authenticate" novalidate>
                    <div class="col-12">
                      <label for="yourUsername" class="form-label">Email Id</label>
                      <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <input type="text" name="email" class="form-control" id="yourUsername" required>
                        <div class="invalid-feedback">Please enter your email id.</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Password</label>
                      <input type="password" name="password" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Please enter your password!</div>
                    </div>
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Login</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Don't have account? <a href="signup">Create an account</a></p>
                    </div>
                  </form>

                </div>
              </div>

              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
=======
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
	                <input type="email" name="email" placeholder="Email" required>
	                <input type="password" name="password" placeholder="Password" required>
	                
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
>>>>>>> 705ca925283ef5c728ff498627d56ada0e088dec
