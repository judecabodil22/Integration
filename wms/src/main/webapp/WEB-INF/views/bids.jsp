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
                <h1>Bids</h1>
			
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="truck" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Logistics - Procurement	
                        </a>
                    </li>
                    <li class="active">
                        
                            <i class="livicon" data-name="money" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Transaction - Bids
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
                                    List of Bids
                                </div>
                                 <div class="pull-right"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modaladd"><span ></span> Add Bids</a></div></div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                   <tr>
                                        	
                                        	
                                        	<th>Id</th>
                                            <th>PR Code</th>
                                            <th>Set Date</th>
                                           
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="b" items="${list2}">
                                        <tr>
                                        
                                        	<td>${b.biddingId}</td>
                                        	<td>${b.prId }</td>
                                        	
                                        	<td>${b.startDate}</td>
                                        	
                                        	<td style="width: 20px;"><a href="#" class="btn btn-success" data-toggle="modal" data-target="#modalupdate" bidding-desc="${b.biddingDesc}" start-date="${b.startDate }" end-date="${b.endDate }" bidding-details="${b.biddingDetails }" bidding-id="${b.biddingId }"> View </a></td>	                                     
                                          
                                        	<td></td>
                                        	 </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                        </div>
                        <!-- END SAMPLE TABLE PORTLET-->
            </section>
            
             <div class="modal fade" id="modalupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    <i class="fa fa-plus"></i>
                                               Bids
                                                </h4>
                                            </div>
                                            
                                            <div class="modal-body">
                                                 
                    
                                                  <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="portlet box info">
                         
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>
                                        	
                                        	
                                        	
                                            
                                            <th>Supplier Name</th>
                                           
                                            <th>Bid Details</th>
                                           
                                            <th>Action</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="b" items="${list1}">
                                        <tr>
                                        
                                        	
                                        	<td>${b.supplierName}</td>
                                        
                                        	<td>${b.bidDetails }</td>
                                        	
                                        	
                                        	
                                        	<td style="width: 20px;"><a href="notice-of-award" class="btn btn-default" ><span class="glyphicon glyphicon-ok"></span> </a></td>	                                     
                                                 	
                                           
                                            <td style="width: 20px;"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modaldecline"  prd-id="${r.prId }" ><span class="glyphicon glyphicon-remove"></span> </a></td>

                                        	<td></td>
                                        	 </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                        </div>
                        <!-- END SAMPLE TABLE PORTLET-->
                                                 </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger pull-right"  data-dismiss="modal">
                                                    Close
                                                    <i class="fa fa-times"></i>
                                                </button>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>  
                                
                                 <div class="modal fade" id="modaladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    <i class="fa fa-plus"></i>
                                               Bidding
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                    
                                                <form:form class="form-horizontal" method="post" action="bids/save" modelAttribute="bids">
                                                <fieldset>
                                                
                                                 <!-- Form Name -->
                                                <legend>Add Bidding</legend>
                                                
                                           
										
                                                 <!-- Text input Item
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Start Date</label>  
                                                  <div class="col-md-6">
                                                  <input id="startdate" name="desc" type="Date" placeholder="start date" class="form-control input-md" required="" />
                                                  </div>
                                                </div>
                                                
                                                -->
                                                   <div class="form-group">
                                                      <label class="col-md-4 control-label" for="dept">Supplier</label>
                                                      <div class="col-md-5">
                                                      	
                                                        <form:select path="supplierId" id="supplierid" name="supplierid" class="form-control">
                                                          <c:forEach var="u" items="${list3 }">
                                                          <option value="${u.supplierId }">${u.supplierName }</option>
                                                          </c:forEach>
                                                        </form:select>
                                                        
                                                      </div>
                                                    </div>
                                                    
                                                        <!-- Textarea -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptdesc">Details</label>
                                                  <div class="col-md-6">                     
                                                    <form:textarea  rows="5" cols="200" class="form-control" id="biddingdesc" name="biddingdesc" path="bidDetails"/>
                                                  </div>
                                                </div>
                                                
                                                 <div class="form-group">
                                                      <label class="col-md-4 control-label" for="dept">Bidding</label>
                                                      <div class="col-md-5">
                                                      	
                                                        <form:select path="biddingId" id="supplierid" name="supplierid" class="form-control">
                                                          <c:forEach var="u" items="${list2 }">
                                                          <option value="${u.biddingId }">${u.prId }</option>
                                                          </c:forEach>
                                                        </form:select>
                                                        
                                                      </div>
                                                    </div>
                                                
                                              
                                                
                                               

                                         

                                                <!-- Button (Double) -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                                  <div class="col-md-6">
                                                    <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success pull-right">Submit</button>
                                                    
                                                  </div>
                                                  <label class="col-md-2 control-label" for="buttonsubmit"></label>
                                                  
                                                </div>

                                                </fieldset>
                                                </form:form>
                                                 </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger pull-right"  data-dismiss="modal">
                                                    Close
                                                    <i class="fa fa-times"></i>
                                                </button>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                    
                    
                </aside>
        
        	<%@include file="footer.jsp" %>
        	
        	        
<!-- begining of page level js --> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
    <!-- end of page level js -->
        	
    <script>
            $('#modalupdate').on('show.bs.modal', function (e) {
          	  // get information to update quickly to modal view as loading begins
          	  var opener=e.relatedTarget;//this holds the element who called the modal
          	   
          	  //we get details from attributes

 //we get details from attributes
var biddingdesc=$(opener).attr('bidding-desc');
var startdate=$(opener).attr('start-date');
var enddate=$(opener).attr('end-date');
var biddingdetails=$(opener).attr('bidding-details');
var biddingid=$(opener).attr('bidding-id');

//set what we got to our form
$('#updateForm').find('[id="biddingdesc"]').val(biddingdesc);
$('#updateForm').find('[id="startdate"]').val(startdate);
$('#updateForm').find('[id="enddate"]').val(enddate);
$('#updateForm').find('[id="biddingdetails"]').val(biddingdetails);
          	  
          	
          	});
        	
        	
     </script>

        
    </div>  
</body>
</html>
