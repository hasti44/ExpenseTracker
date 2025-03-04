<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>fp</title>
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
		
		p {
		    font-size: 14px;
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
		
		.forgot-password {
		    text-align: right;
		    margin-right: 10px;
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
	            <h2>Reset Password</h2>
	            <p>Enter your registered email to receive a password reset link.</p>
	            <form id="forgot-form" method="post" action="sendOTPfp">
	                <input type="email" id="reset-email" placeholder="Enter Email" required>
	                <button type="submit">Send Reset Link</button>
	            </form>
	            <p><a href="login">Back to Login</a></p>
	        </div>
	    </div>
	</body>
</html> --%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Forgot Password - TrackYourExp</title>
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">
</head>

<body>

  <main>
    <div class="container">
      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="card mb-3">
                <div class="card-body">
                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Forgot Password</h5>
                    <p class="text-center small">Enter your email to receive a reset link</p>
                  </div>

                  <form class="row g-3 needs-validation" action="sendOTPfp" method="post" >
                    <div class="col-12">
                      <label for="yourEmail" class="form-label">Email Address</label>
                      <input type="email" name="email" class="form-control" id="yourEmail" required>
                      <div class="invalid-feedback">Please enter your registered email.</div>
                    </div>
					<span class="text-danger">${error}</span>
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Send Reset Link</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0"><a href="login">Back to Login</a></p>
                    </div>
                  </form>

                </div>
              </div>

              
            </div>
          </div>
        </div>
      </section>
    </div>
  </main>

  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/main.js"></script>

</body>
</html>
