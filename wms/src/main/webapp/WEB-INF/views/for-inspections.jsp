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
    
    <!--page level css for table -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="css/pages/tables.css" rel="stylesheet" type="text/css">
    <!--end of page level css for table-->

</head>

<body class="skin-josh">

		<%@ include file="includes/header.jsp" %>
		<%@include file="includes/sidebar.jsp" %>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>For Inspections</h1>
               <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="dashboard" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Inspections
                        </a>
                    </li>
                    <li class="active">
                        <a href="AddAsset.html">
                            <i class="livicon" data-name="money" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Transact - For Inspection
                        </a>
                    </li>
                </ol>
            </section>

            <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary filterable">
                            <div class="panel-heading clearfix">
                                <h3 class="panel-title pull-left">
                                     <i class="livicon" data-name="gift" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                   Inspection Request List
                                </h3>
                            </div>
                            <div class="panel-body">
                                  <table class="table table-striped table-hover" id="sample_5">
                                    <thead>
                                        <tr>
                                            <th>ID No</th>
                                            <th>MR Code</th>
                                            <th>Requested By</th>
                                            <th>Request Date</th>
                                            <th>Request Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>TBL123DFF</td>
                                            <td>John Carlo Vergara</td>
                                            <td>2018-03-26</td>
                                            <td>Pending</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>TBLASSDW</td>
                                            <td>John Carlo Vergara</td>
                                            <td>2018-03-26</td>
                                            <td>Pending</td>
                                        </tr>

                                        <tr>
                                            <td>3</td>
                                            <td>BDASDSER</td>
                                            <td>John Carlo Vergara</td>
                                            <td>2018-03-26</td>
                                            <td>Pending</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>ABC123</td>
                                            <td>John Carlo Vergara</td>
                                            <td>2018-03-26</td>
                                            <td>Pending</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>

            <!-- row-->
                <div class="row" hidden="true">
                    <div class="col-lg-12">
                        <div class="panel panel-success filterable" style="overflow:auto;">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                     <i class="livicon" data-name="responsive" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Assets Available
                                </h3>
                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-bordered" id="table2">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Asset Name</th>
                                            <th>Serial/s</th>
                                            <th>Type</th>
                                            <th>Qty</th>
                                            <th>UOM</th>
                                            <th>Date Acquired</th>
                                            <th>Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- row-->

                <!--Bullshit starts here-->
                <aside class="right-side">
            <!-- Content Header (Page header) -->
            
            <!--section ends-->
            <section class="content">
            <!-- etong section na to sisirain lahat pag nabura kaya please wag mo galawin -->
                <div class="row" hidden="true">
                    <div class="col-lg-12">
                        <div class="panel panel-primary filterable">
                            
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Asset Name</th>
                                            <th>Serial/s</th>
                                            <th>Type</th>
                                            <th>Qty</th>
                                            <th>UOM</th>
                                            <th>Date Acquired</th>
                                            <th>Price</th>
                                        </tr>
                                    <tbody>
                                        
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- hanggang dito yun shet wag mo burahin -->
            </section>
            <!-- content -->
        </aside>
        <!-- right-side -->
    </div>
    <!-- ./wrapper -->
                <!--Bullshit ends here-->

            <section class="content">
                <div class="row">
                    <div class="col-lg-12">
                                        <div class="panel panel-info">
                                            <div class="panel-heading">
                                                <h5 class="panel-title">

                                                </h5>
                                            </div>
                                            <div class="panel-body">
                       <form action="inspected-save" method="post" class="form-horizontal" modelAttribute="inspected">
                                                    <div class="form-position">
                                                        <div class="col-md-offset-3 col-md-9">
                                                            
                                                    </div>
                        <div class="form-group col-lg-12">
                                        <label>Request ID</label>
                                        <input class="form-control" placeholder="Request ID" name="request_id"></div>
                        <div class="form-group col-lg-12">
                                        <label>Findings</label>
                                        <input class="form-control" placeholder="Findings" name="findings"></div>
                        <div class="form-group col-lg-12">
                                        <label>Inspected By</label>
                                        <input class="form-control" placeholder="Inspected By" disabled></div>
                        <div class="form-group col-lg-12">
                                        <label>Inspect Date</label>
                                        <input class="form-control" placeholder="Inspect Date" disabled></div>
                        <div class="form-group col-lg-12" >
                                        <label>Repair Type</label>
                                        <select class="form-control" name="repair_type">
                                            <option></option>
                                            <option>Internal</option>
                                            <option>External</option>
                                        </select></div>                
                        <div class="form-group col-lg-12">
                                        <label>Remarks</label>
                                        <input class="form-control" placeholder="Remarks" name="remarks"></div>
                        
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
        <!-- right-side -->
    
    <%@include file="includes/footer.jsp" %> 

    <!-- begining of page level js for table -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
    <!-- end of page level jsfor table -->

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
