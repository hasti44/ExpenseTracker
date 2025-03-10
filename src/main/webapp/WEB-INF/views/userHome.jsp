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
      <h1>Dashboard</h1>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        

            
            <!-- income chart -->
            <div class="col-xxl-4 col-md-6">
              <div class="card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>

            <div class="card-body pb-0">
              <h5 class="card-title">Income Chart <span>| Today</span></h5>

              <div id="incomeChart" style="min-height: 400px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); position: relative;" class="echart" _echarts_instance_="ec_1741175800429"><div style="position: relative; width: 254px; height: 400px; padding: 0px; margin: 0px; border-width: 0px;"><canvas data-zr-dom-id="zr_0" width="508" height="800" style="position: absolute; left: 0px; top: 0px; width: 254px; height: 400px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; border-width: 0px;"></canvas></div><div class=""></div></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  echarts.init(document.querySelector("#incomeChart")).setOption({
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b}: {c} ({d}%)' // Show percentage on hover
                    },
                    legend: {
                      top: '5%',
                      left: 'center'
                    },
                    series: [{
                      name: 'Income From',
                      type: 'pie',
                      radius: ['40%', '70%'],
                      avoidLabelOverlap: false,
                      label: {
                        show: false,
                        position: 'center'
                      },
                      emphasis: {
                        label: {
                          show: true,
                          fontSize: '18',
                          fontWeight: 'bold'
                        }
                      },
                      labelLine: {
                        show: false
                      },
                      data: [{
                          value: 1048,
                          name: 'Search Engine'
                        },
                        {
                          value: 735,
                          name: 'Direct'
                        },
                        {
                          value: 580,
                          name: 'Email'
                        },
                        {
                          value: 484,
                          name: 'Union Ads'
                        },
                        {
                          value: 300,
                          name: 'Video Ads'
                        }
                      ]
                    }]
                  });
                });
              </script>
            </div>
          </div>
            </div><!-- End income chart -->
            
            
            <!-- expense chart -->
            <div class="col-xxl-4 col-md-6">
              <div class="card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>

            <div class="card-body pb-0">
              <h5 class="card-title">Expanse Chart <span>| Today</span></h5>

              <div id="expenseChart" style="min-height: 400px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); position: relative;" class="echart" _echarts_instance_="ec_1741175800429">
              	<div style="position: relative; width: 254px; height: 400px; padding: 0px; margin: 0px; border-width: 0px;"><canvas data-zr-dom-id="zr_0" width="508" height="800" style="position: absolute; left: 0px; top: 0px; width: 254px; height: 400px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; border-width: 0px;"></canvas></div>
              	<div class=""></div></div>

	              <script>
	                document.addEventListener("DOMContentLoaded", () => {
	                  echarts.init(document.querySelector("#expenseChart")).setOption({
	                    tooltip: {
	                      trigger: 'item',
	                      formatter: '{b}: {c} ({d}%)' // Show percentage on hover
	                    },
	                    legend: {
	                      top: '5%',
	                      left: 'center'
	                    },
	                    series: [{
	                      name: 'Expense From',
	                      type: 'pie',
	                      radius: ['40%', '70%'],
	                      avoidLabelOverlap: false,
	                      label: {
	                        show: false,
	                        position: 'center'
	                      },
	                      emphasis: {
	                        label: {
	                          show: true,
	                          fontSize: '18',
	                          fontWeight: 'bold'
	                        }
	                      },
	                      labelLine: {
	                        show: false
	                      },
	                      data: [{
	                          value: 1048,
	                          name: 'Search Engine'
	                        },
	                        {
	                          value: 735,
	                          name: 'Direct'
	                        },
	                        {
	                          value: 580,
	                          name: 'Email'
	                        },
	                        {
	                          value: 484,
	                          name: 'Union Ads'
	                        },
	                        {
	                          value: 300,
	                          name: 'Video Ads'
	                        }
	                      ]
	                    }]
	                  });
	                });
	              </script>

            	</div>
      		   </div>
            </div><!-- End expense chart -->
        </div>
    </section>

  </main>

  <!-- ======= Footer ======= -->
    <jsp:include page="common/footer.jsp"></jsp:include>
      <jsp:include page="common/js.jsp"></jsp:include>
</body>
</html>