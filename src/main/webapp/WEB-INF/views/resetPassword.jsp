<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Reset Password - TrackYourExp</title>
  <jsp:include page="common/css.jsp"></jsp:include>
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
                    <h5 class="card-title text-center pb-0 fs-4">Reset Password</h5>
                    <p class="text-center small">Enter your new password</p>
                  </div>

                  <form class="row g-3 needs-validation" action="updatePassword" method="post" validate>
                    <div class="col-12">
                      <label for="email" class="form-label">Your email</label>
                      <input type="email" name="email" class="form-control" id="email" required>
                    </div>
                    <div class="col-12">
                      <label for="newPassword" class="form-label">New Password</label>
                      <input type="password" name="password" class="form-control" id="newPassword" required>
                    </div>

                    <div class="col-12">
                      <label for="otp" class="form-label">OTP</label>
                      <input type="text" name="otp" class="form-control" id="otp" required>
                    </div>
          <span class="text-danger">${error}</span>

                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Reset Password</button>
                    </div>
                    
                    <div class="col-12">
                      <p class="small mb-0"><a href="login.html">Back to Login</a></p>
                    </div>
                  </form>

                </div>
              </div>

              <div class="credits">
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
              </div>

            </div>
          </div>
        </div>
      </section>
    </div>
  </main>

    <jsp:include page="common/js.jsp"></jsp:include>


</body>
</html>
