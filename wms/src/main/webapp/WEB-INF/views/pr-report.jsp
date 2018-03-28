<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


<!DOCTYPE html>
<html>
<head>
  
  	<%@include file="head.jsp" %>
  
    <!--page level css -->
    <!-- daterange picker -->
    <link href="${pageContext.request.contextPath}/resources/vendors/daterangepicker/css/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!--select css-->
    <link href="${pageContext.request.contextPath}/resources/vendors/select2/select2.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/select2/select2-bootstrap.css" />
    <!--clock face css-->
    <link href="${pageContext.request.contextPath}/resources/vendors/iCheck/skins/all.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/formelements.css" rel="stylesheet" />
    <!--end of page level css-->
</head>
<body class="skin-josh">
   
    <%@include file="header.jsp" %>
    
    <div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
        <%@include file="includes/sidebar.jsp" %>
    
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Purchase Request</h1>
                <p> Please fill-out the information needed. </p>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="truck" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Logistics
                        </a>
                    </li>
                    <li class="active">
                        
                            <i class="livicon" data-name="money" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Transaction - Purchase Request
                        </a>
                    </li>
                </ol>
            </section>
            <section class="content">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInLeftBig">
                        <!-- Trans label pie charts strats here-->
                        
                    </div>
                </div>
            </section>
            <!--section ends-->
             
              <section class="content">
                <div class="row">
                    <div class="col-lg-12">
                                        <div class="panel panel-info">
                                            <div class="panel-heading">
                                                <h5 class="panel-title">

                                                </h5>
                                            </div>
                                            <div class="panel-body">
                                                
                                                    <div class="form-position">
                                                        <div class="col-md-offset-3 col-md-9">
                                                            
                                                    </div>
                                <div class="form-group col-lg-12">
                                
                                    <div class="col-md-12">
                                                         <div class="form-group">
                                                  <label class="col-md-2 control-label" for="deptname">Date From</label>  
                                                  <div class="col-md-3">
                                                  <input id="startdate" name="desc" type="date" placeholder="start date" class="form-control input-md" required="" />
                                                  </div>
                                               
                                                  <label class="col-md-2 control-label" for="deptname">Date To</label>  
                                                  <div class="col-md-3">
                                                  <input id="startdate" name="desc" type="date" placeholder="start date" class="form-control input-md" required="" />
                                                  </div>
                                                  <div class="col-md-2">
                                                  <button class="form-control btn btn-success">search</button>
                                                  </div>
                                                </div>     
                                                    </div>
                                                
                                
                                
            </section>
             
             
         
                        
                         <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="portlet box info">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="livicon" data-name="timer" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    List of Purchase Request
                                </div>
                                <div class="pull-right"><a href="pr-report1" class="btn btn-default" ><span ></span>Print</a></div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>
                                        	
                                        
                                        	<th>PR Code.</th>
                                       
                                        	<th>Item Name</th>
                                        	
                                        	<th>Quantity</th>
                                            <th>Unit Cost</th>
                                            
                                            <th>Requested By:</th>
                                            <th>Request Date</th>
                                            <th>Purpose</th>
                                      
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="r" items="${list}">
                                        <tr>
                                        
                                        	<td>${r.prId}</td>
                                       
                                        	<td>${r.itemName}</td>
                                        
                                        	<td>${r.itemQty}</td>                                
                                        	<td>${r.unitCost}</td>
                                        	
                                        	<td>${r.requestedBy}</td>
                                        	<td>${r.requestDate}</td>
                                        	<td>${r.purpose}</td>

                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                        </div>
                        
                        
                        <!-- END SAMPLE TABLE PORTLET-->
                        
                        
             
       
        </aside>
        
         </div>
        <%@include file="footer.jsp" %>
        
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
    <!-- end of page level js -->
    
    
    
    <script>
    

   
</script>
   

   
</body>
</html>