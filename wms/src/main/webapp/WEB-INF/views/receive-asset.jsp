<!DOCTYPE html>
<html>

<head>

	<%@ include file="includes/head.jsp" %>
    <meta charset="UTF-8">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/styles/black	.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="css/metisMenu.css" rel="stylesheet" type="text/css"/>    
    <!-- end of global css -->    
    <!--page level css -->
    <link href="vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" media="all" href="vendors/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="vendors/animate/animate.min.css">
    <link rel="stylesheet" href="css/only_dashboard.css" />
    <!--end of page level css-->
</head>

<body class="skin-josh">
		<%@ include file="includes/header.jsp" %>
		<%@include file="includes/sidebar.jsp" %>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
        
            <!-- Main content -->
            <section class="content-header">
                <h1>Request for inspection</h1>
               <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="dashboard" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Request for inspection
                        </a>
                    </li>
                    <li class="active">
                        <a href="AddAsset.html">
                            <i class="livicon" data-name="money" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Transact - Request for inspection
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
                                <form action="request-inspection-save" class="form-horizontal" method="post" modelAttribute="inspection">
                                                    <div class="form-position">
                                                        <div class="col-md-offset-3 col-md-9">
                                                            
                                                    </div>
                                                         <div class="form-group col-lg-12">
                                        <label>MR Code</label>
                                        <input class="form-control" placeholder="MR Code" name="mr_code"></div>
                        <div class="form-group col-lg-12">
                                        <label>Request Date</label>
                                        <input class="form-control" placeholder="Request date" disabled></div>
                                        <div class="form-group col-lg-12" hidden>
                                        <label>Asset Type</label>
                                        <select class="form-control">
                                            <option>Fast Moving</option>
                                            <option>Slow Moving</option>
                                        </select></div>
                        <div class="form-group col-lg-12" hidden>
                                        <label>Asset Serial/s</label>
                                        <input class="form-control" placeholder="Asset Serial/s"></div>
                        <div class="form-group col-lg-12" hidden>
                                        <label>Quantity</label>
                                        <input class="form-control" placeholder="Asset Quantity"></div>
                        <div class="form-group col-lg-12" hidden>
                                        <label>Unit of Measurement</label>
                                        <select class="form-control">
                                            <option>Pieces</option>
                                            <option>Ream</option>
                                            <option>Kilo</option>
                                            <option>Liters</option>
                                        </select></div>                
                        <div class="form-group col-lg-12">
                                        <label>Requested By</label>
                                        <input class="form-control" placeholder="Requested by" disabled></div>
                        <div class="form-group col-lg-12" hidden>
                                            <label>Received By</label>
                                        <input class="form-control" placeholder="Received By"></div>
                        <div class="form-group col-lg-12" hidden>
                                            <label>Receive Date</label>
                                        <input class="form-control" placeholder="mm/dd/yyyy"></div>
                        <div class="form-group col-lg-12" hidden>
                                            <label>Remarks</label>
                                        <div class="col-md-12">
                                            <textarea class="form-control" id="message" name="message" placeholder="Remarks for the item being received" rows="5"></textarea>
                                        </div>
                                        </div>
                                        <!-- /.input group --> 
                                        </div>
                                                    <div class="form-actions">
                                                        <div class="col-md-offset-10 col-md-8">
                                                            <button type="submit" class="btn btn-primary">Request</button>
                                                     </div>
                                                    </div>
                                                </form>
                                                </div></div></div></div>
            </section>
        </aside >
        <!-- right-side -->
    
    <%@include file="includes/footer.jsp" %> 

    <!-- global js -->
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
   <script src="js/josh.js" type="text/javascript"></script>
    <script src="js/metisMenu.js" type="text/javascript"> </script>
    <script src="vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
    <!--  todolist-->
    <script src="js/todolist.js"></script>
    <!-- EASY PIE CHART JS -->
    <script src="vendors/charts/easypiechart.min.js"></script>
    <script src="vendors/charts/jquery.easypiechart.min.js"></script>
    <!--for calendar-->
    <script src="vendors/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
    <script src="vendors/fullcalendar/calendarcustom.min.js" type="text/javascript"></script>
    <!--   Realtime Server Load  -->
    <script src="vendors/charts/jquery.flot.min.js" type="text/javascript"></script>
    <script src="vendors/charts/jquery.flot.resize.min.js" type="text/javascript"></script>
    <!--Sparkline Chart-->
    <script src="vendors/charts/jquery.sparkline.js"></script>
    <!-- Back to Top-->
    <script type="text/javascript" src="vendors/countUp/countUp.js"></script>
    <!--   maps -->
    <script src="vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
     <script src="vendors/jscharts/Chart.js"></script>
    <script src="js/dashboard.js" type="text/javascript"></script>
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
