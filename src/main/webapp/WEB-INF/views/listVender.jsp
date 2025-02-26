<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
      <h1>Data Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">Data</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <div class="d-flex justify-content-between align-items-center">
		        <h5 class="card-title">Datatables</h5>
		        <a href="addVender" class="btn btn-primary"><i class="ri-add-fill"></i> Add New Vender</a>
		      </div>
             
              <!-- Table with stripped rows -->
            <div class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns"><div class="datatable-top">
			    <div class="datatable-dropdown">
		            <label>
		                <select class="datatable-selector" name="per-page">
		                	<option value="5">5</option>
		                	<option value="10" selected>10</option>
		                	<option value="15">15</option>
		                	<option value="-1">All</option>
	                	</select> entries per page
		            </label>
			       </div>
			    <div class="datatable-search">
			            <input class="datatable-input" placeholder="Search..." type="search" name="search" title="Search within table">
			    </div>
			</div>
			<div class="datatable-container">
			
				<table class="table datatable datatable-table">
					<thead>
						<tr>
							<th data-sortable="true" >
								<button class="datatable-sorter">Title</button>
							</th>
							<th> 
								<button>Action</button>
							</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${venderList}" var="i">
							<tr  data-index="i">
								<td>${i.title }</td>
								<td><a href="viewVender?venderId=${i.venderId}"> view </a> | 	
									<a href="deleteVender?venderId=${i.venderId}"> delete </a> |
									<a href="editVender?venderId=${i.venderId}"> edit </a> </td>
							</tr> 
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="datatable-bottom">
			     
			    <nav class="datatable-pagination">
			    	<ul class="datatable-pagination-list">
			    		<li class="datatable-pagination-list-item datatable-hidden datatable-disabled">
			    			<button data-page="1" class="datatable-pagination-list-item-link" aria-label="Page 1">‹</button>
		    			</li>
		    			<li class="datatable-pagination-list-item datatable-active">
    						<button data-page="1" class="datatable-pagination-list-item-link" aria-label="Page 1">1</button>
   						</li>
   						<li class="datatable-pagination-list-item">
							<button data-page="2" class="datatable-pagination-list-item-link" aria-label="Page 2">2</button>
						</li>
						<li class="datatable-pagination-list-item">
							<button data-page="3" class="datatable-pagination-list-item-link" aria-label="Page 3">3</button>
						</li>	
						<li class="datatable-pagination-list-item">
							<button data-page="4" class="datatable-pagination-list-item-link" aria-label="Page 4">4</button>
						</li>
						<li class="datatable-pagination-list-item">
							<button data-page="5" class="datatable-pagination-list-item-link" aria-label="Page 5">5</button>
						</li>
						<li class="datatable-pagination-list-item">
							<button data-page="6" class="datatable-pagination-list-item-link" aria-label="Page 6">6</button>
						</li>
						<li class="datatable-pagination-list-item">
							<button data-page="7" class="datatable-pagination-list-item-link" aria-label="Page 7">7</button>
						</li>
						<li class="datatable-pagination-list-item datatable-ellipsis datatable-disabled">
							<button class="datatable-pagination-list-item-link">…</button>
						</li>
						<li class="datatable-pagination-list-item">
							<button data-page="10" class="datatable-pagination-list-item-link" aria-label="Page 10">10</button>
						</li>
						<li class="datatable-pagination-list-item">
							<button data-page="2" class="datatable-pagination-list-item-link" aria-label="Page 2">›</button>
						</li>
					</ul>
				</nav>
			 </div>
		   </div>			              <!-- End Table with stripped rows -->
          </div>
         </div>
        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
     <jsp:include page="common/footer.jsp"></jsp:include>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

      <jsp:include page="common/js.jsp"></jsp:include>



</body>
</html>