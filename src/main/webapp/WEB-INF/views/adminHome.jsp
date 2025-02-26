<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>TrackYourExpense</title>

    <jsp:include page="common/css.jsp"></jsp:include>

  <!-- =======================================================
  * Template Name: TrackYourExp
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <jsp:include page="common/header.jsp"></jsp:include>
  <!-- ======= Sidebar ======= --> 
  <jsp:include page="common/sidebar.jsp"></jsp:include>
  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

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

                <div class="card-body">
                  <h5 class="card-title">Sales <span>| Today</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>145</h6>
                      <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

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

                <div class="card-body">
                  <h5 class="card-title">Revenue <span>| This Month</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>$3,264</h6>
                      <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

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

                <div class="card-body">
                  <h5 class="card-title">Customers <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>1244</h6>
                      <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <!-- Reports -->
            <div class="col-12">
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

                <div class="card-body">
                  <h5 class="card-title">Reports <span>/Today</span></h5>

                  <!-- Line Chart -->
                  <div id="reportsChart" class="" style="min-height: 365px;"><div id="apexcharts6lqvaz09" class="apexcharts-canvas apexcharts6lqvaz09 apexcharts-theme-" style="width: 621px; height: 350px;"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" class="apexcharts-svg apexcharts-zoomable" xmlns:data="ApexChartsNS" transform="translate(0, 0)" width="621" height="350"><foreignObject x="0" y="0" width="621" height="350"><div class="apexcharts-legend apexcharts-align-center apx-legend-position-bottom" xmlns="http://www.w3.org/1999/xhtml" style="right: 0px; position: absolute; left: 0px; top: 325px; max-height: 175px;"><div class="apexcharts-legend-series" rel="1" seriesname="Sales" data:collapsed="false" style="margin: 4px 5px;"><span class="apexcharts-legend-marker" rel="1" data:collapsed="false" style="height: 16px; width: 16px; left: 0px; top: 0px;"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"><path d="M 0, 0 
           m -7, 0 
           a 7,7 0 1,0 14,0 
           a 7,7 0 1,0 -14,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="1" stroke-dasharray="0" cx="0" cy="0" shape="circle" class="apexcharts-legend-marker apexcharts-marker apexcharts-marker-circle" style="transform: translate(50%, 50%);"></path></svg></span><span class="apexcharts-legend-text" rel="1" i="0" data:default-text="Sales" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Sales</span></div><div class="apexcharts-legend-series" rel="2" seriesname="Revenue" data:collapsed="false" style="margin: 4px 5px;"><span class="apexcharts-legend-marker" rel="2" data:collapsed="false" style="height: 16px; width: 16px; left: 0px; top: 0px;"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"><path d="M 0, 0 
           m -7, 0 
           a 7,7 0 1,0 14,0 
           a 7,7 0 1,0 -14,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="1" stroke-dasharray="0" cx="0" cy="0" shape="circle" class="apexcharts-legend-marker apexcharts-marker apexcharts-marker-circle" style="transform: translate(50%, 50%);"></path></svg></span><span class="apexcharts-legend-text" rel="2" i="1" data:default-text="Revenue" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Revenue</span></div><div class="apexcharts-legend-series" rel="3" seriesname="Customers" data:collapsed="false" style="margin: 4px 5px;"><span class="apexcharts-legend-marker" rel="3" data:collapsed="false" style="height: 16px; width: 16px; left: 0px; top: 0px;"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"><path d="M 0, 0 
           m -7, 0 
           a 7,7 0 1,0 14,0 
           a 7,7 0 1,0 -14,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="1" stroke-dasharray="0" cx="0" cy="0" shape="circle" class="apexcharts-legend-marker apexcharts-marker apexcharts-marker-circle" style="transform: translate(50%, 50%);"></path></svg></span><span class="apexcharts-legend-text" rel="3" i="2" data:default-text="Customers" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Customers</span></div></div><style type="text/css">
      .apexcharts-flip-y {
        transform: scaleY(-1) translateY(-100%);
        transform-origin: top;
        transform-box: fill-box;
      }
      .apexcharts-flip-x {
        transform: scaleX(-1);
        transform-origin: center;
        transform-box: fill-box;
      }
      .apexcharts-legend {
        display: flex;
        overflow: auto;
        padding: 0 10px;
      }
      .apexcharts-legend.apexcharts-legend-group-horizontal {
        flex-direction: column;
      }
      .apexcharts-legend-group {
        display: flex;
      }
      .apexcharts-legend-group-vertical {
        flex-direction: column-reverse;
      }
      .apexcharts-legend.apx-legend-position-bottom, .apexcharts-legend.apx-legend-position-top {
        flex-wrap: wrap
      }
      .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {
        flex-direction: column;
        bottom: 0;
      }
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-left, .apexcharts-legend.apx-legend-position-top.apexcharts-align-left, .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {
        justify-content: flex-start;
        align-items: flex-start;
      }
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-center, .apexcharts-legend.apx-legend-position-top.apexcharts-align-center {
        justify-content: center;
        align-items: center;
      }
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-right, .apexcharts-legend.apx-legend-position-top.apexcharts-align-right {
        justify-content: flex-end;
        align-items: flex-end;
      }
      .apexcharts-legend-series {
        cursor: pointer;
        line-height: normal;
        display: flex;
        align-items: center;
      }
      .apexcharts-legend-text {
        position: relative;
        font-size: 14px;
      }
      .apexcharts-legend-text *, .apexcharts-legend-marker * {
        pointer-events: none;
      }
      .apexcharts-legend-marker {
        position: relative;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        margin-right: 1px;
      }

      .apexcharts-legend-series.apexcharts-no-click {
        cursor: auto;
      }
      .apexcharts-legend .apexcharts-hidden-zero-series, .apexcharts-legend .apexcharts-hidden-null-series {
        display: none !important;
      }
      .apexcharts-inactive-legend {
        opacity: 0.45;
      }

    </style></foreignObject><rect width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)"></g><g class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)"></g><g class="apexcharts-yaxis" rel="0" transform="translate(15.635351181030273, 0)"><g class="apexcharts-yaxis-texts-g"><text x="20" y="33.666666666666664" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>100</tspan><title>100</title></text><text x="20" y="86.60266657511393" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>80</tspan><title>80</title></text><text x="20" y="139.5386664835612" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>60</tspan><title>60</title></text><text x="20" y="192.47466639200846" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>40</tspan><title>40</title></text><text x="20" y="245.41066630045572" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>20</tspan><title>20</title></text><text x="20" y="298.346666208903" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>0</tspan><title>0</title></text></g></g><g class="apexcharts-inner apexcharts-graphical" transform="translate(45.63535118103027, 30)"><defs><clipPath id="gridRectMask6lqvaz09"><rect width="571.3646488189697" height="270.6799995422363" x="-3" y="-3" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectBarMask6lqvaz09"><rect width="571.3646488189697" height="270.6799995422363" x="-3" y="-3" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectMarkerMask6lqvaz09"><rect width="585.3646488189697" height="284.6799995422363" x="-10" y="-10" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMask6lqvaz09"></clipPath><clipPath id="nonForecastMask6lqvaz09"></clipPath><linearGradient x1="0" y1="0" x2="0" y2="1" id="SvgjsLinearGradient1012"><stop stop-opacity="0.3" stop-color="rgba(65,84,241,0.3)" offset="0"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient><linearGradient x1="0" y1="0" x2="0" y2="1" id="SvgjsLinearGradient1013"><stop stop-opacity="0.3" stop-color="rgba(46,202,106,0.3)" offset="0"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient><linearGradient x1="0" y1="0" x2="0" y2="1" id="SvgjsLinearGradient1014"><stop stop-opacity="0.3" stop-color="rgba(255,119,29,0.3)" offset="0"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient></defs><line x1="0" y1="0" x2="0" y2="264.6799995422363" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="264.6799995422363" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><line x1="0" y1="264.6799995422363" x2="0" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="86.97917674137996" y1="264.6799995422363" x2="86.97917674137996" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="173.95835348275992" y1="264.6799995422363" x2="173.95835348275992" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="260.9375302241399" y1="264.6799995422363" x2="260.9375302241399" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="347.91670696551984" y1="264.6799995422363" x2="347.91670696551984" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="434.8958837068998" y1="264.6799995422363" x2="434.8958837068998" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="521.8750604482798" y1="264.6799995422363" x2="521.8750604482798" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><g class="apexcharts-grid"><g class="apexcharts-gridlines-horizontal"><line x1="0" y1="52.935999908447265" x2="565.3646488189697" y2="52.935999908447265" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="105.87199981689453" x2="565.3646488189697" y2="105.87199981689453" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="158.8079997253418" x2="565.3646488189697" y2="158.8079997253418" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="211.74399963378906" x2="565.3646488189697" y2="211.74399963378906" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g class="apexcharts-gridlines-vertical"></g><line x1="0" y1="264.6799995422363" x2="565.3646488189697" y2="264.6799995422363" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line x1="0" y1="1" x2="0" y2="264.6799995422363" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g class="apexcharts-grid-borders"><line x1="0" y1="0" x2="565.3646488189697" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="264.6799995422363" x2="565.3646488189697" y2="264.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="264.6799995422363" x2="565.3646488189697" y2="264.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt"></line></g><g class="apexcharts-area-series apexcharts-plot-series"><g class="apexcharts-series" zIndex="0" seriesName="Sales" data:longestSeries="true" rel="1" data:realIndex="0"><path d="M 0 182.62919968414306C 45.66406778922447 182.62919968414306 84.80469732284544 158.8079997253418 130.46876511206992 158.8079997253418C 160.9114769715529 158.8079997253418 187.0052299939669 190.56959967041016 217.4479418534499 190.56959967041016C 247.89065371293287 190.56959967041016 273.98440673534685 129.6931997756958 304.42711859482984 129.6931997756958C 334.8698304543128 129.6931997756958 360.9635834767268 153.51439973449706 391.4062953362098 153.51439973449706C 421.84900719569276 153.51439973449706 447.94276021810674 47.642399917602546 478.3854720775897 47.642399917602546C 508.8281839370727 47.642399917602546 534.9219369594867 116.459199798584 565.3646488189697 116.459199798584C 565.3646488189697 116.459199798584 565.3646488189697 116.459199798584 565.3646488189697 264.6799995422363 L 0 264.6799995422363z" fill="url(#SvgjsLinearGradient1012)" fill-opacity="1" stroke="none" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask6lqvaz09)" pathTo="M 0 182.62919968414306C 45.66406778922447 182.62919968414306 84.80469732284544 158.8079997253418 130.46876511206992 158.8079997253418C 160.9114769715529 158.8079997253418 187.0052299939669 190.56959967041016 217.4479418534499 190.56959967041016C 247.89065371293287 190.56959967041016 273.98440673534685 129.6931997756958 304.42711859482984 129.6931997756958C 334.8698304543128 129.6931997756958 360.9635834767268 153.51439973449706 391.4062953362098 153.51439973449706C 421.84900719569276 153.51439973449706 447.94276021810674 47.642399917602546 478.3854720775897 47.642399917602546C 508.8281839370727 47.642399917602546 534.9219369594867 116.459199798584 565.3646488189697 116.459199798584C 565.3646488189697 116.459199798584 565.3646488189697 116.459199798584 565.3646488189697 264.6799995422363 L 0 264.6799995422363z" pathFrom="M 0 264.6799995422363 L 0 264.6799995422363 L 130.46876511206992 264.6799995422363 L 217.4479418534499 264.6799995422363 L 304.42711859482984 264.6799995422363 L 391.4062953362098 264.6799995422363 L 478.3854720775897 264.6799995422363 L 565.3646488189697 264.6799995422363z"></path><path d="M 0 182.62919968414306C 45.66406778922447 182.62919968414306 84.80469732284544 158.8079997253418 130.46876511206992 158.8079997253418C 160.9114769715529 158.8079997253418 187.0052299939669 190.56959967041016 217.4479418534499 190.56959967041016C 247.89065371293287 190.56959967041016 273.98440673534685 129.6931997756958 304.42711859482984 129.6931997756958C 334.8698304543128 129.6931997756958 360.9635834767268 153.51439973449706 391.4062953362098 153.51439973449706C 421.84900719569276 153.51439973449706 447.94276021810674 47.642399917602546 478.3854720775897 47.642399917602546C 508.8281839370727 47.642399917602546 534.9219369594867 116.459199798584 565.3646488189697 116.459199798584" fill="none" fill-opacity="1" stroke="#4154f1" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask6lqvaz09)" pathTo="M 0 182.62919968414306C 45.66406778922447 182.62919968414306 84.80469732284544 158.8079997253418 130.46876511206992 158.8079997253418C 160.9114769715529 158.8079997253418 187.0052299939669 190.56959967041016 217.4479418534499 190.56959967041016C 247.89065371293287 190.56959967041016 273.98440673534685 129.6931997756958 304.42711859482984 129.6931997756958C 334.8698304543128 129.6931997756958 360.9635834767268 153.51439973449706 391.4062953362098 153.51439973449706C 421.84900719569276 153.51439973449706 447.94276021810674 47.642399917602546 478.3854720775897 47.642399917602546C 508.8281839370727 47.642399917602546 534.9219369594867 116.459199798584 565.3646488189697 116.459199798584" pathFrom="M 0 264.6799995422363 L 0 264.6799995422363 L 130.46876511206992 264.6799995422363 L 217.4479418534499 264.6799995422363 L 304.42711859482984 264.6799995422363 L 391.4062953362098 264.6799995422363 L 478.3854720775897 264.6799995422363 L 565.3646488189697 264.6799995422363" fill-rule="evenodd"></path><g class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown" data:realIndex="0"><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 0, 182.62919968414306 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="0" cy="182.62919968414306" shape="circle" class="apexcharts-marker no-pointer-events w5xpf7kd4" rel="0" j="0" index="0" default-marker-size="4"></path><path d="M 130.46876511206992, 158.8079997253418 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="130.46876511206992" cy="158.8079997253418" shape="circle" class="apexcharts-marker no-pointer-events wrmdgeisg" rel="1" j="1" index="0" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 217.4479418534499, 190.56959967041016 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="217.4479418534499" cy="190.56959967041016" shape="circle" class="apexcharts-marker no-pointer-events wc9clv883" rel="2" j="2" index="0" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 304.42711859482984, 129.6931997756958 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="304.42711859482984" cy="129.6931997756958" shape="circle" class="apexcharts-marker no-pointer-events wlp71ftpm" rel="3" j="3" index="0" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 391.4062953362098, 153.51439973449706 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="391.4062953362098" cy="153.51439973449706" shape="circle" class="apexcharts-marker no-pointer-events wsmmnlqxn" rel="4" j="4" index="0" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 478.3854720775897, 47.642399917602546 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="478.3854720775897" cy="47.642399917602546" shape="circle" class="apexcharts-marker no-pointer-events wvggp7xta" rel="5" j="5" index="0" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 565.3646488189697, 116.459199798584 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="565.3646488189697" cy="116.459199798584" shape="circle" class="apexcharts-marker no-pointer-events w9c9dxvwd" rel="6" j="6" index="0" default-marker-size="4"></path></g></g></g><g class="apexcharts-series" zIndex="1" seriesName="Revenue" data:longestSeries="true" rel="2" data:realIndex="1"><path d="M 0 235.56519959259032C 45.66406778922447 235.56519959259032 84.80469732284544 179.9823996887207 130.46876511206992 179.9823996887207C 160.9114769715529 179.9823996887207 187.0052299939669 145.57399974823 217.4479418534499 145.57399974823C 247.89065371293287 145.57399974823 273.98440673534685 179.9823996887207 304.42711859482984 179.9823996887207C 334.8698304543128 179.9823996887207 360.9635834767268 174.68879969787596 391.4062953362098 174.68879969787596C 421.84900719569276 174.68879969787596 447.94276021810674 127.04639978027345 478.3854720775897 127.04639978027345C 508.8281839370727 127.04639978027345 534.9219369594867 156.16119972991942 565.3646488189697 156.16119972991942C 565.3646488189697 156.16119972991942 565.3646488189697 156.16119972991942 565.3646488189697 264.6799995422363 L 0 264.6799995422363z" fill="url(#SvgjsLinearGradient1013)" fill-opacity="1" stroke="none" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMask6lqvaz09)" pathTo="M 0 235.56519959259032C 45.66406778922447 235.56519959259032 84.80469732284544 179.9823996887207 130.46876511206992 179.9823996887207C 160.9114769715529 179.9823996887207 187.0052299939669 145.57399974823 217.4479418534499 145.57399974823C 247.89065371293287 145.57399974823 273.98440673534685 179.9823996887207 304.42711859482984 179.9823996887207C 334.8698304543128 179.9823996887207 360.9635834767268 174.68879969787596 391.4062953362098 174.68879969787596C 421.84900719569276 174.68879969787596 447.94276021810674 127.04639978027345 478.3854720775897 127.04639978027345C 508.8281839370727 127.04639978027345 534.9219369594867 156.16119972991942 565.3646488189697 156.16119972991942C 565.3646488189697 156.16119972991942 565.3646488189697 156.16119972991942 565.3646488189697 264.6799995422363 L 0 264.6799995422363z" pathFrom="M 0 264.6799995422363 L 0 264.6799995422363 L 130.46876511206992 264.6799995422363 L 217.4479418534499 264.6799995422363 L 304.42711859482984 264.6799995422363 L 391.4062953362098 264.6799995422363 L 478.3854720775897 264.6799995422363 L 565.3646488189697 264.6799995422363z"></path><path d="M 0 235.56519959259032C 45.66406778922447 235.56519959259032 84.80469732284544 179.9823996887207 130.46876511206992 179.9823996887207C 160.9114769715529 179.9823996887207 187.0052299939669 145.57399974823 217.4479418534499 145.57399974823C 247.89065371293287 145.57399974823 273.98440673534685 179.9823996887207 304.42711859482984 179.9823996887207C 334.8698304543128 179.9823996887207 360.9635834767268 174.68879969787596 391.4062953362098 174.68879969787596C 421.84900719569276 174.68879969787596 447.94276021810674 127.04639978027345 478.3854720775897 127.04639978027345C 508.8281839370727 127.04639978027345 534.9219369594867 156.16119972991942 565.3646488189697 156.16119972991942" fill="none" fill-opacity="1" stroke="#2eca6a" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMask6lqvaz09)" pathTo="M 0 235.56519959259032C 45.66406778922447 235.56519959259032 84.80469732284544 179.9823996887207 130.46876511206992 179.9823996887207C 160.9114769715529 179.9823996887207 187.0052299939669 145.57399974823 217.4479418534499 145.57399974823C 247.89065371293287 145.57399974823 273.98440673534685 179.9823996887207 304.42711859482984 179.9823996887207C 334.8698304543128 179.9823996887207 360.9635834767268 174.68879969787596 391.4062953362098 174.68879969787596C 421.84900719569276 174.68879969787596 447.94276021810674 127.04639978027345 478.3854720775897 127.04639978027345C 508.8281839370727 127.04639978027345 534.9219369594867 156.16119972991942 565.3646488189697 156.16119972991942" pathFrom="M 0 264.6799995422363 L 0 264.6799995422363 L 130.46876511206992 264.6799995422363 L 217.4479418534499 264.6799995422363 L 304.42711859482984 264.6799995422363 L 391.4062953362098 264.6799995422363 L 478.3854720775897 264.6799995422363 L 565.3646488189697 264.6799995422363" fill-rule="evenodd"></path><g class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown" data:realIndex="1"><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 0, 235.56519959259032 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="0" cy="235.56519959259032" shape="circle" class="apexcharts-marker no-pointer-events wdcnrieq1" rel="0" j="0" index="1" default-marker-size="4"></path><path d="M 130.46876511206992, 179.9823996887207 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="130.46876511206992" cy="179.9823996887207" shape="circle" class="apexcharts-marker no-pointer-events wyabwnsd8" rel="1" j="1" index="1" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 217.4479418534499, 145.57399974823 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="217.4479418534499" cy="145.57399974823" shape="circle" class="apexcharts-marker no-pointer-events w2vwbwb3q" rel="2" j="2" index="1" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 304.42711859482984, 179.9823996887207 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="304.42711859482984" cy="179.9823996887207" shape="circle" class="apexcharts-marker no-pointer-events wefk31v6w" rel="3" j="3" index="1" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 391.4062953362098, 174.68879969787596 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="391.4062953362098" cy="174.68879969787596" shape="circle" class="apexcharts-marker no-pointer-events wnex0jazxi" rel="4" j="4" index="1" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 478.3854720775897, 127.04639978027345 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="478.3854720775897" cy="127.04639978027345" shape="circle" class="apexcharts-marker no-pointer-events wddeyhuj6l" rel="5" j="5" index="1" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 565.3646488189697, 156.16119972991942 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="565.3646488189697" cy="156.16119972991942" shape="circle" class="apexcharts-marker no-pointer-events w2enwd081" rel="6" j="6" index="1" default-marker-size="4"></path></g></g></g><g class="apexcharts-series" zIndex="2" seriesName="Customers" data:longestSeries="true" rel="3" data:realIndex="2"><path d="M 0 224.97799961090087C 45.66406778922447 224.97799961090087 84.80469732284544 235.56519959259032 130.46876511206992 235.56519959259032C 160.9114769715529 235.56519959259032 187.0052299939669 179.9823996887207 217.4479418534499 179.9823996887207C 247.89065371293287 179.9823996887207 273.98440673534685 217.03759962463377 304.42711859482984 217.03759962463377C 334.8698304543128 217.03759962463377 360.9635834767268 240.85879958343506 391.4062953362098 240.85879958343506C 421.84900719569276 240.85879958343506 447.94276021810674 201.1567996520996 478.3854720775897 201.1567996520996C 508.8281839370727 201.1567996520996 534.9219369594867 235.56519959259032 565.3646488189697 235.56519959259032C 565.3646488189697 235.56519959259032 565.3646488189697 235.56519959259032 565.3646488189697 264.6799995422363 L 0 264.6799995422363z" fill="url(#SvgjsLinearGradient1014)" fill-opacity="1" stroke="none" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="2" clip-path="url(#gridRectMask6lqvaz09)" pathTo="M 0 224.97799961090087C 45.66406778922447 224.97799961090087 84.80469732284544 235.56519959259032 130.46876511206992 235.56519959259032C 160.9114769715529 235.56519959259032 187.0052299939669 179.9823996887207 217.4479418534499 179.9823996887207C 247.89065371293287 179.9823996887207 273.98440673534685 217.03759962463377 304.42711859482984 217.03759962463377C 334.8698304543128 217.03759962463377 360.9635834767268 240.85879958343506 391.4062953362098 240.85879958343506C 421.84900719569276 240.85879958343506 447.94276021810674 201.1567996520996 478.3854720775897 201.1567996520996C 508.8281839370727 201.1567996520996 534.9219369594867 235.56519959259032 565.3646488189697 235.56519959259032C 565.3646488189697 235.56519959259032 565.3646488189697 235.56519959259032 565.3646488189697 264.6799995422363 L 0 264.6799995422363z" pathFrom="M 0 264.6799995422363 L 0 264.6799995422363 L 130.46876511206992 264.6799995422363 L 217.4479418534499 264.6799995422363 L 304.42711859482984 264.6799995422363 L 391.4062953362098 264.6799995422363 L 478.3854720775897 264.6799995422363 L 565.3646488189697 264.6799995422363z"></path><path d="M 0 224.97799961090087C 45.66406778922447 224.97799961090087 84.80469732284544 235.56519959259032 130.46876511206992 235.56519959259032C 160.9114769715529 235.56519959259032 187.0052299939669 179.9823996887207 217.4479418534499 179.9823996887207C 247.89065371293287 179.9823996887207 273.98440673534685 217.03759962463377 304.42711859482984 217.03759962463377C 334.8698304543128 217.03759962463377 360.9635834767268 240.85879958343506 391.4062953362098 240.85879958343506C 421.84900719569276 240.85879958343506 447.94276021810674 201.1567996520996 478.3854720775897 201.1567996520996C 508.8281839370727 201.1567996520996 534.9219369594867 235.56519959259032 565.3646488189697 235.56519959259032" fill="none" fill-opacity="1" stroke="#ff771d" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="2" clip-path="url(#gridRectMask6lqvaz09)" pathTo="M 0 224.97799961090087C 45.66406778922447 224.97799961090087 84.80469732284544 235.56519959259032 130.46876511206992 235.56519959259032C 160.9114769715529 235.56519959259032 187.0052299939669 179.9823996887207 217.4479418534499 179.9823996887207C 247.89065371293287 179.9823996887207 273.98440673534685 217.03759962463377 304.42711859482984 217.03759962463377C 334.8698304543128 217.03759962463377 360.9635834767268 240.85879958343506 391.4062953362098 240.85879958343506C 421.84900719569276 240.85879958343506 447.94276021810674 201.1567996520996 478.3854720775897 201.1567996520996C 508.8281839370727 201.1567996520996 534.9219369594867 235.56519959259032 565.3646488189697 235.56519959259032" pathFrom="M 0 264.6799995422363 L 0 264.6799995422363 L 130.46876511206992 264.6799995422363 L 217.4479418534499 264.6799995422363 L 304.42711859482984 264.6799995422363 L 391.4062953362098 264.6799995422363 L 478.3854720775897 264.6799995422363 L 565.3646488189697 264.6799995422363" fill-rule="evenodd"></path><g class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown" data:realIndex="2"><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 0, 224.97799961090087 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="0" cy="224.97799961090087" shape="circle" class="apexcharts-marker no-pointer-events w2v6c05bx" rel="0" j="0" index="2" default-marker-size="4"></path><path d="M 130.46876511206992, 235.56519959259032 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="130.46876511206992" cy="235.56519959259032" shape="circle" class="apexcharts-marker no-pointer-events wex4qccqa" rel="1" j="1" index="2" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 217.4479418534499, 179.9823996887207 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="217.4479418534499" cy="179.9823996887207" shape="circle" class="apexcharts-marker no-pointer-events wm5y26qqx" rel="2" j="2" index="2" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 304.42711859482984, 217.03759962463377 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="304.42711859482984" cy="217.03759962463377" shape="circle" class="apexcharts-marker no-pointer-events w5zdbr44yh" rel="3" j="3" index="2" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 391.4062953362098, 240.85879958343506 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="391.4062953362098" cy="240.85879958343506" shape="circle" class="apexcharts-marker no-pointer-events ww6gi1s5g" rel="4" j="4" index="2" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 478.3854720775897, 201.1567996520996 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="478.3854720775897" cy="201.1567996520996" shape="circle" class="apexcharts-marker no-pointer-events wdjagb46k" rel="5" j="5" index="2" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask6lqvaz09)"><path d="M 565.3646488189697, 235.56519959259032 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="565.3646488189697" cy="235.56519959259032" shape="circle" class="apexcharts-marker no-pointer-events wwqi21i58" rel="6" j="6" index="2" default-marker-size="4"></path></g></g></g><g class="apexcharts-datalabels" data:realIndex="0"></g><g class="apexcharts-datalabels" data:realIndex="1"></g><g class="apexcharts-datalabels" data:realIndex="2"></g></g><line x1="0" y1="0" x2="565.3646488189697" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line x1="0" y1="0" x2="565.3646488189697" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g class="apexcharts-xaxis" transform="translate(0, 0)"><g class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text x="0" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>00:00</tspan><title>00:00</title></text><text x="86.97917674137996" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>01:00</tspan><title>01:00</title></text><text x="173.95835348275992" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>02:00</tspan><title>02:00</title></text><text x="260.9375302241399" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>03:00</tspan><title>03:00</title></text><text x="347.91670696551984" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>04:00</tspan><title>04:00</title></text><text x="434.8958837068998" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>05:00</tspan><title>05:00</title></text><text x="521.8750604482798" y="292.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>06:00</tspan><title>06:00</title></text></g></g><g class="apexcharts-yaxis-annotations"></g><g class="apexcharts-xaxis-annotations"></g><g class="apexcharts-point-annotations"></g></g><rect width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></svg><div class="apexcharts-tooltip apexcharts-theme-light"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div><div class="apexcharts-tooltip-series-group apexcharts-tooltip-series-group-0" style="order: 1;"><span class="apexcharts-tooltip-marker" shape="circle" style="color: rgb(65, 84, 241);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group apexcharts-tooltip-series-group-1" style="order: 2;"><span class="apexcharts-tooltip-marker" shape="circle" style="color: rgb(46, 202, 106);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group apexcharts-tooltip-series-group-2" style="order: 3;"><span class="apexcharts-tooltip-marker" shape="circle" style="color: rgb(255, 119, 29);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light"><div class="apexcharts-xaxistooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>

                  <script>
                    document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: 'Sales',
                          data: [31, 40, 28, 51, 42, 82, 56],
                        }, {
                          name: 'Revenue',
                          data: [11, 32, 45, 32, 34, 52, 41]
                        }, {
                          name: 'Customers',
                          data: [15, 11, 32, 18, 9, 24, 11]
                        }],
                        chart: {
                          height: 350,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 2
                        },
                        xaxis: {
                          type: 'datetime',
                          categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                        },
                        tooltip: {
                          x: {
                            format: 'dd/MM/yy HH:mm'
                          },
                        }
                      }).render();
                    });
                  </script>
                  <!-- End Line Chart -->

                </div>

              </div>
            </div><!-- End Reports -->

            <!-- Recent Sales -->
            <!-- End Recent Sales -->

            <!-- Top Selling -->
            <!-- End Top Selling -->

          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->
        <!-- End Right side columns -->

      </div>
    </section>

  </main>

  <!-- ======= Footer ======= -->
  <jsp:include page="common/footer.jsp"></jsp:include>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <jsp:include page="common/js.jsp"></jsp:include>
  

</body>
</html>