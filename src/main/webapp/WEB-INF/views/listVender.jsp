<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>TrackYourExpense</title>
      <jsp:include page="common/css.jsp"></jsp:include>
      <link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
</head>

<body>

   <!-- ======= Header ======= -->
      <jsp:include page="common/header.jsp"></jsp:include>

  <!-- ======= Sidebar ======= -->
     <jsp:include page="common/sidebar.jsp"></jsp:include> 


  <main id="main" class="main">
    <div class="pagetitle">
      <h1>Data</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Venders</li>
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
			<div class="datatable-container">
			
				<table class="table datatable datatable-table" id="myTable">
					<thead>
						<tr>
							<th>
								<button>Title</button>
							</th>
							<th>
								<button>User Name</button>
							</th>
							<th> 
								<button>Action</button>
							</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${venderList}" var="i">
							<tr data-index="i">
								<td>${i.venderTitle }</td>
								<td>${i.firstName }</td>
								<td><a href="viewVender?venderId=${i.venderId}"> <i class=" bx bx-detail"></i> </a> | 	
									<a href="deleteVender?venderId=${i.venderId}"> <i class="ri-delete-bin-5-fill"></i> </a> |
									<a href="editVender?venderId=${i.venderId}"> <i class="bx bxs-edit-alt"></i> </a> </td>
							</tr> 
						</c:forEach>
					</tbody>
				</table>
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
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
	<script type="text/javascript">
	$( document ).ready(function() {
		let table = new DataTable('#myTable');
	});
	</script>


</body>
</html>