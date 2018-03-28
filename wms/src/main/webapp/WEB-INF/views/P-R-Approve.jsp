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
                        <a href="purchaserequest.html">
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
          
                <div class="row">
                    <div class="col-md-12">
                        
                         <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="portlet box info">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="livicon" data-name="timer" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Pending Request
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>
                                        	
                                        	<th>PR Code.</th>
                                       
                                        	<th>Item Name</th>
                                        	<th>Item Description</th>
                                        	<th>Quantity</th>
                                            <th>Unit Cost</th>
                                           
                                            <th>Requested By:</th>
                                            <th>Request Date</th>
                                            <th>Purpose</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="r" items="${list}">
                                        <tr>
                                        
                                        	<td>${r.prId}</td>
                                       
                                        	<td>${r.itemName}</td>
                                        	<td>${r.itemDesc }</td>
                                        	<td>${r.itemQty}</td>                                
                                        	<td>${r.unitCost}</td>
                                        	
                                        	<td>${r.requestedBy}</td>
                                        	<td>${r.requestDate}</td>
                                        	<td>${r.purpose}</td>
                                        	<td><span class="label label-sm label-info">${r.prStatus}</span></td>
                                        			
                                        	
                                        	 	
                                             
	
                                            <td style="width: 20px;"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modalapprove"  pr-id="${r.prId }" ><span class="glyphicon glyphicon-ok"></span> </a></td>	                                     
                                                 	
                                           
                                            <td style="width: 20px;"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modaldecline"  prd-id="${r.prId }" ><span class="glyphicon glyphicon-remove"></span> </a></td>

                                           
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                        </div>
                        <!-- END SAMPLE TABLE PORTLET-->
                        
                        
                        
                           <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="portlet box info">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="livicon" data-name="check" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Approved Request
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-striped table-responsive" id="table2">
                                    <thead>
                                        <tr>
                                        	
                                        	<th>PR Code.</th>
                                       
                                        	<th>Item Name</th>
                                        	<th>Item Description</th>
                                        	<th>Quantity</th>
                                            <th>Unit Cost</th>
                                        
                                            <th>Requested By:</th>
                                            <th>Request Date</th>
                                            <th>Purpose</th>
                                            <th>Status</th>
                                        
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="r" items="${list1}">
                                        <tr>
                                        
                                        	<td>${r.prId}</td>
                                       
                                        	<td>${r.itemName}</td>
                                        	<td>${r.itemDesc }</td>
                                        	<td>${r.itemQty}</td>                                
                                        	<td>${r.unitCost}</td>
                                        	
                                        	<td>${r.requestedBy}</td>
                                        	<td>${r.requestDate}</td>
                                        	<td>${r.purpose}</td>
                                        	<td><span class="label label-sm label-success">${r.prStatus}</span></td>
                                        			
                                        	
                                        	 	
                                             
	
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                        </div>
                        <!-- END SAMPLE TABLE PORTLET-->
                        
                        
                        
                           <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="portlet box info">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="livicon" data-name="remove" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Rejected Request
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-striped table-responsive" id="table3">
                                    <thead>
                                        <tr>
                                        	
                                     	<th>PR Code.</th>
                                       
                                        	<th>Item Name</th>
                                        	<th>Item Description</th>
                                        	<th>Quantity</th>
                                            <th>Unit Cost</th>
                                          
                                            <th>Requested By:</th>
                                            <th>Request Date</th>
                                            <th>Purpose</th>
                                            <th>Status</th>
                                         
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="r" items="${list2}">
                                        <tr>
                                        
                                        	<td>${r.prId}</td>
                                       
                                        	<td>${r.itemName}</td>
                                        	<td>${r.itemDesc }</td>
                                        	<td>${r.itemQty}</td>                                
                                        	<td>${r.unitCost}</td>
                                      
                                        	<td>${r.requestedBy}</td>
                                        	<td>${r.requestDate}</td>
                                        	<td>${r.purpose}</td>
                                        	<td><span class="label label-sm label-danger">${r.prStatus}</span></td>
                                        			
                                        	
                                        	 	
                                             
	
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                        </div>
                        <!-- END SAMPLE TABLE PORTLET-->
                        
                        
                        
                                   <div class="modal fade" id="modalapprove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                   
                                                Confirm
                                                </h4>
                                            </div>
                                            
                                            <div class="modal-body">
                     <form:form class="form-horizontal" id="updateForm" method="post" action="P-R-Approve/approve" modelAttribute="prApprove">
                                                <fieldset>

                                                <form:hidden path="prId" id="prid"></form:hidden>
												
												    <!-- Text input status-->
                                         
                                                
                                                  <form:hidden id="prstatus" name="status"  path="prStatus"></form:hidden>
                                                 
												<p><h5>Create PO</h5></p>
												
												 <div class="form-group">
                                                  <label class="col-md-2 control-label" for="deptname">Delivery Date</label>  
                                                  <div class="col-md-4">
                                                  <input id="deliverydate" name="deliverydate" type="Date" placeholder="Delivery Date" class="form-control input-md" required="" path="deliveryDate"/>
                                                  </div></div>
                                          
                                            <div class="modal-footer">
                                            
                                            	<button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">
                                            	<i class="fa fa-check"></i>
                                            	</button>
                                            
                                            
                                                <button type="button" class="btn btn-danger pull-right"  data-dismiss="modal">
                                                   
                                                    <i class="fa fa-times"></i>
                                                </button>
                                                
                                                  </fieldset>
                                                </form:form>
                                                
                                                 </div>
                                                
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>  
                        
                        
                        <div class="modal fade" id="modaldecline" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                   
                                                Decline
                                                </h4>
                                            </div>
                                            
                                            <div class="modal-body">
                     <form:form class="form-horizontal" id="updateForm1" method="post" action="P-R-Approve/approve" modelAttribute="prApprove">
                                                <fieldset>

                                                <form:hidden path="prId" id="prdid"/>
												
												    <!-- Text input status-->
                                        
                                                
                                                  <form:hidden id="prdstatus" name="status"  path="prStatus"/>
                                                 
												<p><h5>Are you Sure</h5></p>
                                          
                                            <div class="modal-footer">
                                            
                                            	<button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">
                                            	<i class="fa fa-check"></i>
                                            	</button>
                                            
                                            
                                                <button type="button" class="btn btn-danger pull-right"  data-dismiss="modal">
                                                   
                                                    <i class="fa fa-times"></i>
                                                </button>
                                                
                                                  </fieldset>
                                                </form:form>
                                                
                                                 </div>
                                                
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>  
                        
                        
                             
                        
                        
                    </div>
       
        </aside>
        
        
        <%@include file="footer.jsp" %>
        
        
    <!-- begining of page level js -->
    <!-- InputMask -->
    <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <!-- date-range-picker -->
    <script src="${pageContext.request.contextPath}/resources/vendors/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/select2/select2.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/iCheck/icheck.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/iCheck/demo/js/custom.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/autogrow/js/jQuery-autogrow.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/card/jquery.card.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pages/formelements.js" type="text/javascript"></script>
    <!-- end of page level js -->
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
    <!-- end of page level js -->
    
     <script>
    
    $('#modalapprove').on('show.bs.modal', function (e) {
     	  // get information to update quickly to modal view as loading begins
     	  var opener=e.relatedTarget;//this holds the element who called the modal
     	   
     	  //we get details from attributes

		  var prstatus=$(opener).attr('pr-status')
  		  var prid=$(opener).attr('pr-id');

     	  //set what we got to our form
  	  	  
  		$('#updateForm').find('[id="prstatus"]').val(prstatus);
  		document.getElementById('prstatus').value = 'Approve';
       	$('#updateForm').find('[id="prid"]').val(prid);
     	});
    
    $('#modaldecline').on('show.bs.modal', function (e) {
   	  // get information to update quickly to modal view as loading begins
   	  var opener=e.relatedTarget;//this holds the element who called the modal
   	   
   	  //we get details from attributes

		  var prdstatus=$(opener).attr('prd-status')
		  var prdid=$(opener).attr('prd-id');

   	  //set what we got to our form
	  	  
		$('#updateForm1').find('[id="prdstatus"]').val(prdstatus);
		document.getElementById('prdstatus').value = 'Reject';
     	$('#updateForm1').find('[id="prdid"]').val(prdid);
   	});
    
    </script>
    
    
        
    </div>

   
</body>
</html>