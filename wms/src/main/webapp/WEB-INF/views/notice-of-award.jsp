<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<%@include file="head.jsp" %>

<body class="skin-josh">
   
    <%@include file="header.jsp" %>
    
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <%@include file="includes/sidebar.jsp" %>
        
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Notice of Award</h1>
			
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="dashboard" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Dashboard
                        </a>
                    </li>
                    <li class="active">
                        
                            <i class="livicon" data-name="money" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Transaction - Notice of Award
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
                    <div class="col-lg-3 col-md-6 col-sm-6 margin_10 animated fadeInLeftBig">
                        <!-- Trans label pie charts strats here-->
                        
                    </div>
                </div>
            </section>
             <section class="content">
						<div class="row">
                    <div class="col-md-12">
                       
                           <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="portlet box info">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="livicon" data-name="timer" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    List of Notice of Award
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>
                                        	
                                        	<th>Bidding</th>
                                       
                                        	<th>Supplier</th>
                                        	<th>Date</th>
                                        	<th>Bid Details</th>
                                            
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="n" items="${list}">
                                        <tr>
                                        
                                        	<td>${n.biddingId}</td>
                                        	<td>${n.supplierName}</td>
                                        	<td>${n.awardNoticeDate }</td>
                                        	<td>${n.bidDetails}</td>                                
                                        	
                                       
                                          
											<!-- 
                                            <td><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modalupdate" stock-no="${r.itemId}" item-name="${r.itemName }" item-desc="${r.itemDesc }"  item-qty="${r.itemQty }" item-uom="${r.uomId }" unit-cost="${r.unitCost }" requested-by="${r.requestedBy }" purpose="${r.purpose }" pr-id="${r.prId }" ><span class="glyphicon glyphicon-pencil"></span> </a></td>	                                     
                                          
                                            	
                                           	<td> <a href="#"  class="btn btn-danger" onclick="confirmDelete(${r.prId})"><span class="glyphicon glyphicon-trash" ></span> </a></td>
                         					 -->
                                            		

                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                        </div>
                        
                        
                        <!-- END SAMPLE TABLE PORTLET-->
                        
                        
            </section>
                </aside>
        
        	<%@include file="footer.jsp" %>
        	
  <!-- begining of page level js -->
    <!-- InputMask -->
    <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <!-- end of page level js -->
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
    <!-- end of page level js -->
        
    </div>  
</body>
</html>
