<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>TrackYourExpense</title>
    <jsp:include page="common/css.jsp"></jsp:include>
</head>

<body>

  <!-- ======= Header ======= -->
    <jsp:include page="common/header.jsp"></jsp:include>

  <!-- ======= Sidebar ======= -->
    <jsp:include page="common/sidebar.jsp"></jsp:include>

  <main id="main" class="main">
	  <div class="pagetitle">
	      <h1>Form Elements</h1>
	      <nav>
	        <ol class="breadcrumb">
	          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
	          <li class="breadcrumb-item">Forms</li>
	          <li class="breadcrumb-item active">Elements</li>
	        </ol>
	      </nav>
	    </div>
	  	<section class="section">
	  	  <div class="row">
	  	    <div class="col-lg-6">
	  		  <div class="card">
	 			<div class="card-body">
	 				<h5 class="card-title">form</h5>
				  	<form class="row g-3" action="saveCategory" method="post" >
				                <div class="col-12">
				                  <label for="inputNanme4" class="form-label">Category</label>
				                  <input type="text" class="form-control" id="inputNanme4" name="categoryTitle" required>
				                </div>
				                <div class="text-center">
				                  <button type="submit" class="btn btn-primary">Add Category</button>
				                </div>
					</form>
				</div>
			  </div>
			</div>
          </div>
    	</section>
  </main>

  <!-- ======= Footer ======= -->
    <jsp:include page="common/footer.jsp"></jsp:include>
     <jsp:include page="common/js.jsp"></jsp:include>
</body>
</html>