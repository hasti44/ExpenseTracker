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
    
    <!-- jQuery for AJAX -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
				  	<form class="row g-3" action="saveExpense" method="post">
		                <div class="col-12">
		                  <label for="inputNanme4" class="form-label">Expense title</label>
		                  <input type="text" class="form-control" id="inputNanme4" name="expenseTitle" required>
		                </div>
		                <div class="col-12">
		                  <label for="inputNanme4" class="form-label">Amount</label>
		                  <input type="number" step="0.01" class="form-control" id="inputNanme4" name="amount" required>
		                </div>
		                
		                <!-- Category Dropdown -->
		                <div class="col-md-6">
		                  <label class="form-label">Category</label>
		                  <select id="categorySelect" class="form-select" name="categoryId" required>
		                    <option selected disabled>Choose category</option>
		                    <c:forEach items="${categoryList}" var="i">
								<option value="${i.categoryId}">${i.categoryTitle}</option>
							</c:forEach>
		                  </select>
		                </div>

		                <!-- Subcategory Dropdown (Dynamically Loaded) -->
		                <div class="col-md-6">
		                  <label class="form-label">Subcategory</label>
		                  <select id="subcategorySelect" class="form-select" name="subCategoryId" required>
		                    <option selected disabled>Choose Subcategory</option>
		                  </select>
		                </div>

		                <div class="col-md-6">
		                  <select id="inputState" class="form-select" name="accountId" required>
		                    <option disabled selected>Choose Account</option>
		                    <c:forEach items="${accountList}" var="i">
								<option value="${i.accountId}">${i.accountTitle}</option>
							</c:forEach>
		                  </select> 	
		                </div>
		                <div class="col-md-6">
		                  <select id="inputState" class="form-select" name="venderId" required>
		                    <option disabled selected >Choose vender</option>
		                    <c:forEach items="${venderList}" var="i">
								<option value="${i.venderId}">${i.venderTitle}</option>
							</c:forEach>
		                  </select>
		                </div>
		                
		                <div class="text-center">
		                  <button type="submit" class="btn btn-primary">Add Expense</button>
		                </div>
				    </form>
	        
				</div>
			  </div>
			</div>
          </div>
    	</section>
  </main>

    <jsp:include page="common/footer.jsp"></jsp:include>
    <jsp:include page="common/js.jsp"></jsp:include>

    <!-- AJAX Script for Dynamic Subcategory Loading -->
    <script>
	    $(document).ready(function() {
	        $("#categorySelect").change(function() {
	            var categoryId = $(this).val();
	            $("#subcategorySelect").html('<option>Loading...</option>');
	
	            if (categoryId) {
	                $.ajax({
	                    url: "getSubCategoriesByCategory", // New URL
	                    type: "GET",
	                    data: { categoryId: categoryId },
	                    success: function(data) {
	                        var options = '<option selected disabled>Choose Subcategory</option>';
	                        $.each(data, function(index, subcategory) {
	                            options += '<option value="' + subcategory.subCategoryId + '">' + subcategory.subCategoryTitle + '</option>';
	                        });
	                        $("#subcategorySelect").html(options);
	                    },
	                    error: function() {
	                        $("#subcategorySelect").html('<option>Error loading data</option>');
	                    }
	                });
	            } else {
	                $("#subcategorySelect").html('<option selected disabled>Choose Subcategory</option>');
	            }
	        });
	    });
    </script>

</body>
</html>
