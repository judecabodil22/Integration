<!DOCTYPE html>
<html>

<head>
    <%@ include file="includes/head.jsp" %>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!--page level css -->
    <link href="${pageContext.request.contextPath}/resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/animate/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/only_dashboard.css" />
    <!--end of page level css-->
</head>

<body class="skin-josh">
		<%@ include file="includes/header.jsp" %>
		<%@include file="includes/sidebar.jsp" %>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Add Asset</h1>
               <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="dashboard" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Add
                        </a>
                    </li>
                    <li class="active">
                        <a href="AddAsset.html">
                            <i class="livicon" data-name="money" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Transact - Add Asset
                        </a>
                    </li>
                </ol>
            </section>
            <section class="content">
                <div class="row">
                    <div class="col-lg-12">
                                        <div class="panel panel-info">
                                            <div class="panel-heading">
                                                <h5 class="panel-title">

                                                </h5>
                                            </div>
                                            <div class="panel-body">
                                                <form action="#" class="form-horizontal">
                                                    <div class="form-position">
                                                        <div class="col-md-offset-3 col-md-9">
                                                            
                                                    </div>
                                                         <div class="form-group col-lg-12">
                        <div class="form-group col-lg-12">
                                        <label>Asset Name.</label>
                                        <input class="form-control" placeholder="Asset Name"></div>
                        <div class="form-group col-lg-12">
                                        <label>Asset Serial/s</label>
                                        <input class="form-control" placeholder="Asset Serial/s"></div>
                        <div class="form-group col-lg-12">
                                        <label>Asset Type</label>
                                        <select class="form-control">
                                            <option>Fast Moving</option>
                                            <option>Slow Moving</option>
                                        </select></div>
                        <div class="form-group col-lg-12">
                                        <label>Quantity</label>
                                        <input class="form-control" placeholder="Asset Quantity"></div>
                        <div class="form-group col-lg-12">
                                        <label>Unit of Measurement</label>
                                        <select class="form-control">
                                            <option>Pieces</option>
                                            <option>Ream</option>
                                            <option>Kilo</option>
                                            <option>Liters</option>
                                        </select></div>                
                        <div class="form-group col-lg-12">
                                        <label>Acquisition Date</label>
                                        <input class="form-control" placeholder="mm/dd/yyyy"></div>
                        <div class="form-group col-lg-12">
                                            <label>Total Price</label>
                                        <input class="form-control" placeholder="Amount"></div>
                                        <!-- /.input group --> 
                                        </div>
                                                    <div class="form-actions">
                                                        <div class="col-md-offset-11 col-md-8">
                                                            <button type="submit" class="btn btn-primary">Confirm</button>
                                                     </div>
                                                    </div>
                                                </form>
                                                </div></div></div></div>
            </section>
        </aside >
        <%@include file="includes/footer.jsp" %> 
        <!-- right-side -->
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <!-- begining of page level js -->
    <!--  todolist-->
    <script src="${pageContext.request.contextPath}/resources/js/todolist.js"></script>
    <!-- EASY PIE CHART JS -->
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/easypiechart.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.easypiechart.min.js"></script>
    <!--for calendar-->
    <script src="${pageContext.request.contextPath}/resources/vendors/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/fullcalendar/calendarcustom.min.js" type="text/javascript"></script>
    <!--   Realtime Server Load  -->
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.flot.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.flot.resize.min.js" type="text/javascript"></script>
    <!--Sparkline Chart-->
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.sparkline.js"></script>
    <!-- Back to Top-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/countUp/countUp.js"></script>
    <!--   maps -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
     <script src="${pageContext.request.contextPath}/resources/vendors/jscharts/Chart.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dashboard.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        var composeHeight = $('#calendar').height() +21 - $('.adds').height();
        $('.list_of_items').slimScroll({
            color: '#A9B6BC',
            height: composeHeight + 'px',
            size: '5px'
        });
    });
    </script>
    <!-- end of page level js -->
  
</body>
</html>
