<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>

<head>
 
	<%@include file="head.jsp" %>
	   
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
                <h1>Request for Quotation</h1>
				<p> Please fill-out the information needed. </p>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="dashboard" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Dashboard
                        </a>
                    </li>
                    <li class="active">
                       
                            <i class="livicon" data-name="money" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Transaction - Request for Quotation
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
                                          <form:form class="form-horizontal" method="post" action="rfq/save" modelAttribute="rfq">
                                                <fieldset>

                                                <!-- Form Name -->
                                                <legend>RFQ</legend>
												
												     <!-- Supplier dropdown -->
                                                     <div class="form-group">
                                                      <label class="col-md-4 control-label" for="dept">Supplier</label>
                                                      <div class="col-md-5">
                                                      	
                                                        <form:select path="supplierId" id="supplierid" name="supplierid" class="form-control">
                                                          <c:forEach var="s" items="${list1 }">
                                                          <option value="${s.supplierId }">${s.supplierName }</option>
                                                          </c:forEach>
                                                        </form:select>
                                                        
                                                      </div>
                                                    </div>
												
                                                 <!-- Text input date-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Date</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="rfqdate" name="rfqdate" type="Date" placeholder="Date" class="form-control input-md" required="" path="rfqDate"/>
                                                  </div>
                                                </div>
                                                
                                                  <!-- Pr dropdown -->
                                                     <div class="form-group">
                                                      <label class="col-md-4 control-label" for="dept">PR Code</label>
                                                      <div class="col-md-5">
                                                      	
                                                        <form:select path="prId" id="prid" name="prid" class="form-control">
                                                          <c:forEach var="s" items="${list2 }">
                                                          <option value="${s.prId }">${s.prCode }</option>
                                                          </c:forEach>
                                                        </form:select>
                                                        
                                                      </div>
                                                    </div>
                                       
                                                
                                                 <!-- Text input quantity-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Quantity</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="itemqty" name="itemqty" type="text" placeholder="Quantity" class="form-control input-md" required="" path="itemQty"/>
                                                  </div>
                                                </div>
                                                
                                           
                                                 <!-- Text input UNIT COST-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Unit Cost</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="unitcost" name="unitcost" type="text" placeholder="Unit Cost" class="form-control input-md" required="" path="unitCost"/>
                                                  </div>
                                                </div>
                                    

                                         

                                                <!-- Button (Double) -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                                  <div class="col-md-8">
                                                    <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">Submit</button>
                                                    
                                                  </div>
                                                </div>

                                                </fieldset>
                                                </form:form>
                                                
            </section>
                <div class="row">
                    <div class="col-md-12">
                    
                    <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="portlet box info">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="livicon" data-name="timer" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Request For Quotation List
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>
                                        	
                                        	<th>Supplier Name</th>
                                       		<th>Date </th>
                                        	<th>Pr Code</th>
                                        	<th>Quantity</th>
                                            <th>Unit Cost</th>
                                            <th>Total Cost</th>
                                        
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="r" items="${list}">
                                        <tr>
                                        
                                        	<td>${r.supplierName}</td>
                                       		<td>${r.rfqDate}</td>
                                        	<td>${r.prCode}</td>
                                        	<td>${r.itemQty }</td>
                                        	<td>${r.unitCost}</td>                                
                                        	<td>${r.totalCost}</td>
                                              		

                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                        </div>
                        
                        
                        <!-- END SAMPLE TABLE PORTLET-->
                    
                    </div>
                    
                    
        </aside>
        <!-- right-side -->
    </div>
    
    <%@include file="footer.jsp" %>
    
   
    <!-- end of page level js -->
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
    <!-- end of page level js -->
    
    
    
  
</body>
</html>
