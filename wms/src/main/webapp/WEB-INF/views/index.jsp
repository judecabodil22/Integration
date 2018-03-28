<!DOCTYPE html>
<html>

<head>

<%@ include file="includes/head.jsp" %>

<!--page level css -->
<link href="${pageContext.request.contextPath}/resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/animate/animate.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/only_dashboard.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pages/jscharts.css" />
<!--end of page level css-->

</head>

<body class="skin-josh">

<%@ include file="includes/header.jsp" %>

  
<div class="wrapper row-offcanvas row-offcanvas-left">
    
    	<%@include file="includes/sidebar.jsp" %>
 
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Warehouse Management Dashboard</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Home
                        </a>
                    </li>
                </ol>
            </section>
            <section class="content">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInLeftBig">
                        <!-- Trans label pie charts strats here-->
                        <div class="lightbluebg no-radius">
                            <div class="panel-body squarebox square_boxs">
                                <div class="col-xs-12 pull-left nopadmar">
                                    <div class="row">
                                        <div class="square_box col-xs-7 text-right">
                                            <span>Delivery</span>
                                            <div class="number" id="myTargetElement1"></div>
                                        </div>
                                        <i class="livicon pull-right" data-name="truck" data-l="true" data-size="70" data-c="#fff" data-hc="#fff" data-loop="true"></i>
                                        
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <small class="stat-label">Last Week</small>
                                            <h4 id="myTargetElement1.1"></h4>
                                        </div>
                                        <div class="col-xs-6 text-right">
                                            <small class="stat-label">Last Month</small>
                                            <h4 id="myTargetElement1.2"></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInUpBig">
                        <!-- Trans label pie charts strats here-->
                        <div class="redbg no-radius">
                            <div class="panel-body squarebox square_boxs">
                                <div class="col-xs-12 pull-left nopadmar">
                                    <div class="row">
                                        <div class="square_box col-xs-7 pull-left">
                                            <span>Item Returned</span>
                                            <div class="number" id="myTargetElement2"></div>
                                        </div>
                                        <i class="livicon pull-right" data-name="rotate-left" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <small class="stat-label">Last Week</small>
                                            <h4 id="myTargetElement2.1"></h4>
                                        </div>
                                        <div class="col-xs-6 text-right">
                                            <small class="stat-label">Last Month</small>
                                            <h4 id="myTargetElement2.2"></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInRightBig">
                        <!-- Trans label pie charts strats here-->
                        <div class="palebluecolorbg no-radius">
                            <div class="panel-body squarebox square_boxs">
                                <div class="col-xs-12 pull-left nopadmar">
                                    <div class="row">
                                        <div class="square_box col-xs-7 pull-left">
                                            <span>Item Issued</span>
                                            <div class="number" id="myTargetElement4"></div>
                                        </div>
                                        <i class="livicon pull-right" data-name="check" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <small class="stat-label">Last Week</small>
                                            <h4 id="myTargetElement4.1"></h4>
                                        </div>
                                        <div class="col-xs-6 text-right">
                                            <small class="stat-label">Last Month</small>
                                            <h4 id="myTargetElement4.2"></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-md-6 margin_10 animated fadeInDownBig">
                        <!-- Trans label pie charts strats here-->
                        <div class="goldbg no-radius">
                            <div class="panel-body squarebox square_boxs">
                                <div class="col-xs-12 pull-left nopadmar">
                                    <div class="row">
                                        <div class="square_box col-xs-7 pull-left">
                                            <span>Borrowed Items</span>
                                            <div class="number" id="myTargetElement3"></div>
                                        </div>
                                        <i class="livicon pull-right" data-name="timer" data-l="true" data-c="#fff" data-hc="#fff" data-s="70"></i>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <small class="stat-label">Last Week</small>
                                            <h4 id="myTargetElement3.1"></h4>
                                        </div>
                                        <div class="col-xs-6 text-right">
                                            <small class="stat-label">Last Month</small>
                                            <h4 id="myTargetElement3.2"></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/row-->
                <div class="col-lg-12 col-sm-8">
                        <!-- toggling series charts strats here-->
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="barchart" data-size="16" data-loop="true" data-c="white" data-hc="white"></i>
                                    Monthly Number of Items
                                </h3>
                                <span class="pull-right">
                                    <i class="glyphicon glyphicon-chevron-up showhide clickable"></i>
                                    <i class="glyphicon glyphicon-remove removepanel clickable"></i>
                                </span>
                            </div>
                            <div class="panel-body">
                              <div id="basicFlotLegend" class="flotLegend"></div>
                              <div id="bar-chart" class="flotChart"></div>
                                
                            </div>
                        </div>
                    </div>
                
            <!--START TOP FAST MOVING ITEMS -->
                <div class="col-lg-12 col-sm-8">
                        <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="portlet box primary">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="livicon" data-name="star-full" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Top Fast Moving Items
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Item Code</th>
                                                <th>Item Name</th>
                                                <th>Category</th>
                                                <th>Quantity</th>
                                                <th>OUM</th>
                                                <th>Location</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td align="center">1</td>
                                                <td>OCT-2017-01</td>
                                                <td align="center">Bond Paper</td>
                                                <td align="center">Office Supplies</td>
                                                <td align="center">100</td>
                                                <td align="center">
                                                    ream
                                                </td>
                                                <td align="center">Warehouse A</td>
                                            </tr>
                                            <tr>
                                                <td align="center">2</td>
                                                <td>OCT-2017-02</td>
                                                <td align="center">Paper Clip</td>
                                                <td align="center">Office Supplies</td>
                                                <td align="center">150</td>
                                                <td align="center">
                                                    box
                                                </td>
                                                <td align="center">Warehouse B</td>
                                            </tr>
                                            <tr>
                                                
                                                <td align="center">3</td>
                                                <td>OCT-2017-03</td>
                                                <td align="center">Notebook</td>
                                                <td align="center">Office Supplies</td>
                                                <td align="center">50</td>
                                                <td align="center">
                                                    pieces
                                                </td>
                                                <td align="center">Warehouse A</td>
                                            </tr>
                                            <tr>
                                                <td align="center">4</td>
                                                <td>OCT-2017-04</td>
                                                <td align="center">Mouse</td>
                                                <td align="center">Hardware</td>
                                                <td align="center">100</td>
                                                <td align="center">pieces</td>
                                                <td align="center">Warehouse A</td>
                                            </tr>
                                            <tr>
                                                <td align="center">5</td>
                                                <td>OCT-2017-05</td>
                                                <td align="center">Nail</td>
                                                <td align="center">Hardware</td>
                                                <td align="center">100</td>
                                                <td align="center">
                                                    box
                                                </td>
                                                <td align="center">Warehouse C</td>
                                            </tr>
                                            <tr>
                                                <td align="center">6</td>
                                                <td>OCT-2017-06</td>
                                                <td align="center">Ballpen</td>
                                                <td align="center">Office Supplies</td>
                                                <td align="center">100</td>
                                                <td align="center">
                                                    box
                                                </td>
                                                <td align="center">Warehouse A</td>
                                            </tr>
                                            <tr>
                                                <td align="center">7</td>
                                                <td>OCT-2017-07</td>
                                                <td align="center">Thumb Tacks</td>
                                                <td align="center">Hardware</td>
                                                <td align="center">100</td>
                                                <td align="center">
                                                    box
                                                </td>
                                                <td align="center">Warehouse D</td>
                                            </tr>
                                            
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                <!--START TOP FAST MOVING ITEMS -->
                    
                <div class="clearfix"></div>
                <div class="row">
                     <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="panel panel-border">
                            <div class="panel-heading border-light">
                                <h4 class="panel-title">
                                    <i class="livicon" data-name="calendar" data-size="16" data-loop="true" data-c="#333" data-hc="#333"></i>
                                    Calendar
                                </h4>
                                <span class="pull-right">
                                    <i class="glyphicon glyphicon-chevron-up showhide clickable"></i>
                                    <i class="glyphicon glyphicon-remove removepanel clickable"></i>
                                </span>
                            </div>
                            <div class="panel-body">
                                <div id='external-events'></div>
                                <div id="calendar"></div>
                                <div class="box-footer pad-5">
                                    <a href="#" class="btn btn-success btn-block" data-toggle="modal" data-target="#myModal">Create event</a>
                                </div>
                                <!-- Modal -->
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    <i class="fa fa-plus"></i>
                                                    Create Event
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="input-group">
                                                    <input type="text" id="new-event" class="form-control" placeholder="Event">
                                                    <div class="input-group-btn">
                                                        <button type="button" id="color-chooser-btn" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                                                            Type
                                                            <span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu pull-right" id="color-chooser">
                                                            <li>
                                                                <a class="palette-primary" href="#">Primary</a>
                                                            </li>
                                                            <li>
                                                                <a class="palette-success" href="#">Success</a>
                                                            </li>
                                                            <li>
                                                                <a class="palette-info" href="#">Info</a>
                                                            </li>
                                                            <li>
                                                                <a class="palette-warning" href="#">warning</a>
                                                            </li>
                                                            <li>
                                                                <a class="palette-danger" href="#">Danger</a>
                                                            </li>
                                                            <li>
                                                                <a class="palette-default" href="#">Default</a>
                                                            </li>

                                                        </ul>
                                                    </div>
                                                    <!-- /btn-group --> </div>
                                                <!-- /input-group --> </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger pull-right"  data-dismiss="modal">
                                                    Close
                                                    <i class="fa fa-times"></i>
                                                </button>
                                                <button type="button" class="btn btn-success pull-left" id="add-new-event" data-dismiss="modal">
                                                    <i class="fa fa-plus"></i>
                                                    Add
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- To do list -->
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="panel panel-primary todolist">
                            <div class="panel-heading border-light">
                                <h4 class="panel-title">
                                    <i class="livicon" data-name="edit" data-size="18" data-color="white" data-hc="white" data-l="true"></i>
                                    Warehouse Activities
                                </h4>
                            </div>
                            <div class="panel-body nopadmar">
                                <form class="row list_of_items">
                                    <div class="todolist_list showactions">
                                        <div class="col-md-8 col-sm-8 col-xs-8 nopadmar custom_textbox1">
                                            <div class="todoitemcheck checkbox-custom">
                                                <input type="checkbox" class="striked large" />
                                            </div>
                                            <div class="todotext todoitem">Meeting with CEO</div>
                                        </div>
                                        <div class="col-md-4  col-sm-4 col-xs-4  pull-right showbtns todoitembtns">
                                            <a href="#" class="todoedit">
                                                <span class="glyphicon glyphicon-pencil"></span>
                                            </a>
                                            |
                                            <a href="#" class="tododelete redcolor">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="todolist_list showactions">
                                        <div class="col-md-8 col-sm-8 col-xs-8 nopadmar custom_textbox1">
                                            <div class="todoitemcheck">
                                                <input type="checkbox" class="striked" />
                                            </div>
                                            <div class="todotext todoitem">Team Out</div>
                                        </div>
                                        <div class="col-md-4  col-sm-4 col-xs-4  pull-right showbtns todoitembtns">
                                            <a href="#" class="todoedit">
                                                <span class="glyphicon glyphicon-pencil"></span>
                                            </a>
                                            |
                                            <a href="#" class="tododelete redcolor">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="todolist_list showactions">
                                        <div class="col-md-8 col-sm-8 col-xs-8 nopadmar custom_textbox1">
                                            <div class="todoitemcheck">
                                                <input type="checkbox" class="striked" />
                                            </div>
                                            <div class="todotext todoitem">Review On Sales</div>
                                        </div>
                                        <div class="col-md-4  col-sm-4 col-xs-4  pull-right showbtns todoitembtns">
                                            <a href="#" class="todoedit">
                                                <span class="glyphicon glyphicon-pencil"></span>
                                            </a>
                                            |
                                            <a href="#" class="tododelete redcolor">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="todolist_list showactions">
                                        <div class="col-md-8 col-sm-8 col-xs-8 nopadmar custom_textbox1">
                                            <div class="todoitemcheck">
                                                <input type="checkbox" class="striked" />
                                            </div>
                                            <div class="todotext todoitem">Meeting with Client</div>
                                        </div>
                                        <div class="col-md-4  col-sm-4 col-xs-4  pull-right showbtns todoitembtns">
                                            <a href="#" class="todoedit">
                                                <span class="glyphicon glyphicon-pencil"></span>
                                            </a>
                                            |
                                            <a href="#" class="tododelete redcolor">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="todolist_list showactions">
                                        <div class="col-md-8 col-sm-8 col-xs-8 nopadmar custom_textbox1">
                                            <div class="todoitemcheck">
                                                <input type="checkbox" class="striked" />
                                            </div>
                                            <div class="todotext todoitem">Analysis on Views</div>
                                        </div>
                                        <div class="col-md-4  col-sm-4 col-xs-4  pull-right showbtns todoitembtns">
                                            <a href="#" class="todoedit">
                                                <span class="glyphicon glyphicon-pencil"></span>
                                            </a>
                                            |
                                            <a href="#" class="tododelete redcolor">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="todolist_list showactions">
                                        <div class="col-md-8 col-sm-8 col-xs-8 nopadmar custom_textbox1">
                                            <div class="todoitemcheck">
                                                <input type="checkbox" class="striked" />
                                            </div>
                                            <div class="todotext todoitem">Seminar on Market</div>
                                        </div>
                                        <div class="col-md-4  col-sm-4 col-xs-4  pull-right showbtns todoitembtns">
                                            <a href="#" class="todoedit">
                                                <span class="glyphicon glyphicon-pencil"></span>
                                            </a>
                                            |
                                            <a href="#" class="tododelete redcolor">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="todolist_list showactions">
                                        <div class="col-md-8 col-sm-8 col-xs-8 nopadmar custom_textbox1">
                                            <div class="todoitemcheck">
                                                <input type="checkbox" class="striked" />
                                            </div>
                                            <div class="todotext todoitem">Business Review</div>
                                        </div>
                                        <div class="col-md-4  col-sm-4 col-xs-4  pull-right showbtns todoitembtns">
                                            <a href="#" class="todoedit">
                                                <span class="glyphicon glyphicon-pencil"></span>
                                            </a>
                                            |
                                            <a href="#" class="tododelete redcolor">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="todolist_list showactions">
                                        <div class="col-md-8 col-sm-8 col-xs-8 nopadmar custom_textbox1">
                                            <div class="todoitemcheck">
                                                <input type="checkbox" class="striked" />
                                            </div>
                                            <div class="todotext todoitem">Purchase Equipment</div>
                                        </div>
                                        <div class="col-md-4  col-sm-4 col-xs-4  pull-right showbtns todoitembtns">
                                            <a href="#" class="todoedit">
                                                <span class="glyphicon glyphicon-pencil"></span>
                                            </a>
                                            |
                                            <a href="#" class="tododelete redcolor">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="todolist_list showactions">
                                        <div class="col-md-8 col-sm-8 col-xs-8 nopadmar custom_textbox1">
                                            <div class="todoitemcheck">
                                                <input type="checkbox" class="striked" />
                                            </div>
                                            <div class="todotext todoitem">Meeting with CEO</div>
                                        </div>
                                        <div class="col-md-4  col-sm-4 col-xs-4  pull-right showbtns todoitembtns">
                                            <a href="#" class="todoedit">
                                                <span class="glyphicon glyphicon-pencil"></span>
                                            </a>
                                            |
                                            <a href="#" class="tododelete redcolor">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="todolist_list showactions">
                                        <div class="col-md-8 col-sm-8 col-xs-8 nopadmar custom_textbox1">
                                            <div class="todoitemcheck">
                                                <input type="checkbox" class="striked" />
                                            </div>
                                            <div class="todotext todoitem">Takeover Leads</div>
                                        </div>
                                        <div class="col-md-4  col-sm-4 col-xs-4  pull-right showbtns todoitembtns">
                                            <a href="#" class="todoedit">
                                                <span class="glyphicon glyphicon-pencil"></span>
                                            </a>
                                            |
                                            <a href="#" class="tododelete redcolor">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </a>
                                        </div>
                                    </div>
                                </form>
                                <div class="todolist_list adds">
                                    <form role="form" id="main_input_box" class="form-inline">
                                        <div class="form-group">
                                            <label class="sr-only" for="AddTask">Add Task</label>
                                            <input id="custom_textbox" name="Item" type="text" required placeholder="Add list item here" class="form-control" />
                                        </div>
                                        <input type="submit" value="Add Task" class="btn btn-primary add_button" />
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="clearfix"></div>
                <div class="row ">
                    <div class="col-md-9  col-sm-12">
                        <div class="panel panel-danger">
                            <div class="panel-heading border-light">
                                <h4 class="panel-title">
                                    <i class="livicon" data-name="mail" data-size="18" data-color="white" data-hc="white" data-l="true"></i>
                                    Quick Mail
                                </h4>
                            </div>
                            <div class="panel-body no-padding">
                                <div class="compose row">
                                    <label class="col-md-3 hidden-xs">To:</label>
                                    <input type="text" class="col-md-9 col-xs-9" placeholder="name@email.com " tabindex="1" />
                                    <div class="clear"></div>
                                    <label class="col-md-3 hidden-xs">Subject:</label>
                                    <input type="text" class="col-md-9 col-xs-9" tabindex="1" placeholder="Subject" />
                                    <div class="clear"></div>
                                    <div class='box-body'>
                                        <form>
                                            <textarea class="textarea textarea_home" placeholder="Write mail content here"></textarea>
                                        </form>
                                    </div>
                                    <br />
                                    <div class="pull-right">
                                        <a href="#" class="btn btn-danger">Send</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                
                </div>
            </section>
        </aside>
   	</div>
   	
   
   	 <!-- Include footer.jsp here --> 
    <%@include file="includes/footer.jsp" %> 
    
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
 	<script src="${pageContext.request.contextPath}/resources/vendors/jscharts/Chart.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pages/chartjs.js"></script>
    <!-- end of page level js -->
    
</body>
</html>