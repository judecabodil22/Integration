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
                                
                                 <form:form class="form-horizontal" method="post" action="purchase-request/save" modelAttribute="purchaseRequest">
                                                <fieldset>

                                                <!-- Form Name -->
                                                <legend>Request Form</legend>
												
												   
												
                                                 <!-- Text input Item-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Item</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="itemname" name="itemname" type="text" placeholder="Item name" class="form-control input-md" required="" path="itemName"/>
                                                  </div>
                                                </div>
                                                
                                                   <!-- Textarea 
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptdesc">Description</label>
                                                  <div class="col-md-6">                     
                                                    <form:textarea  rows="5" cols="200" class="form-control" id="itemdesc" name="itemdesc" path="itemDesc"/>
                                                  </div>
                                                </div>
                                       
                                                
                                                 <!-- Text input quantity-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Quantity</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="itemqty" name="itemqty" type="number" placeholder="Quantity" class="form-control input-md" required="" path="itemQty"/>
                                                  </div>
                                                </div>
                                                
                                                 <!-- Text input uom
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Unit of Measurement</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="itemuom" name="itemuom" type="text" placeholder="Unit of Measurement" class="form-control input-md" required="" path="uomId"/>
                                                  </div>
                                                </div>
                                                -->
                                                   <div class="form-group">
                                                      <label class="col-md-4 control-label" for="dept">Unit of Measurement</label>
                                                      <div class="col-md-5">
                                                      	
                                                        <form:select path="uomId" id="itemuom" name="itemuom" class="form-control">
                                                          <c:forEach var="u" items="${list1 }">
                                                          <option value="${u.uomId }">${u.uomName }</option>
                                                          </c:forEach>
                                                        </form:select>
                                                        
                                                      </div>
                                                    </div>
                                                
                                                 <!-- Text input UNIT COST-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Unit Cost</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="unitcost" name="unitcost" type="number" placeholder="Unit Cost" class="form-control input-md" required="" path="unitCost"/>
                                                  </div>
                                                </div>
                                                
                                                 <!-- Text input requested by-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Requested By</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="requestedby" name="requestedby" type="text" placeholder="Requested By" class="form-control input-md" required="" path="requestedBy"/>
                                                  </div>
                                                </div>
                                                
                                                  <!-- Textarea -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptdesc">Purpose</label>
                                                  <div class="col-md-6">                     
                                                    <form:textarea  rows="5" cols="200" class="form-control" id="purpose" name="purpose" path="purpose"/>
                                                  </div>
                                                </div>

                                         

                                                <!-- Button (Double) -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                                  <div class="col-md-8">
                                                    <button id="buttonsubmit" name="buttonsubmit1" class="btn btn-success">Submit</button>
                                                    
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
                                    List of Purchase Request
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>
                                        	
                                        	<th>PR Code.</th>
                                       
                                        	<th>Item Name</th>
                                        	<th>Description</th>
                                        	
                                        	<th>Quantity</th>
                                            <th>Unit Cost</th>
                                            <!-- <th>Total Cost</th> -->
                                            <th>Requested By:</th>
                                            <th>Request Date</th>
                                            <th>Purpose</th>
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
                                        	<!-- <td>${r.totalCost}</td> -->
                                        	<td>${r.requestedBy}</td>
                                        	<td>${r.requestDate}</td>
                                        	<td>${r.purpose}</td>
                                        
                                          
	
                                            <td><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modalupdate" stock-no="${r.itemId}" item-name="${r.itemName }" item-desc="${r.itemDesc }"  item-qty="${r.itemQty }" item-uom="${r.uomId }" unit-cost="${r.unitCost }" requested-by="${r.requestedBy }" purpose="${r.purpose }" pr-id="${r.prId }" ><span class="glyphicon glyphicon-pencil"></span> </a></td>	                                     
                                          
                                            	
                                           	<td> <a href="#"  class="btn btn-danger" onclick="confirmDelete(${r.prId})"><span class="glyphicon glyphicon-trash" ></span> </a></td>
                        
                                            		

                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                        </div>
                        
                        
                        <!-- END SAMPLE TABLE PORTLET-->
                        
                        
                          
                                <div class="modal fade" id="modalupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    <i class="fa fa-plus"></i>
                                                Form
                                                </h4>
                                            </div>
                                            
                                            <div class="modal-body">
                     <form:form class="form-horizontal" id="updateForm" method="post" action="purchase-request/edit" modelAttribute="purchaseRequest">
                                                <fieldset>

                                                <!-- Form Name -->
                                                <legend>Request Form</legend>
                                                <form:hidden path="prId" id="prid"></form:hidden>
												
												    <!-- Text input Stock No.-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Stock No.</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="stockno" name="stockno" type="text" placeholder="Stock No." class="form-control input-md" required="" path="itemId"/>
                                                  </div>
                                                </div>
												
                                                 <!-- Text input Item-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Item</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="itemname" name="itemname" type="text" placeholder="Item name" class="form-control input-md" required="" path="itemName"/>
                                                  </div>
                                                </div>
                                                
                                                  <!-- Textarea 
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptdesc">Description</label>
                                                  <div class="col-md-6">                     
                                                    <form:textarea  rows="5" cols="100" class="form-control" id="itemdesc" name="itemdesc" path="itemDesc"/>
                                                  </div>
                                                </div>
                                                
                                       
                                                
                                                 <!-- Text input quantity-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Quantity</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="itemqty" name="itemqty" type="text" placeholder="Quantity" class="form-control input-md" required="" path="itemQty"/>
                                                  </div>
                                                </div>
                                                
                                                 <!-- Text input uom
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Unit of Measurement</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="itemuom" name="itemuom" type="text" placeholder="Unit of Measurement" class="form-control input-md" required="" path="uomId"/>
                                                  </div>
                                                </div>
                                                -->
                                                <!-- 
                                                    <div class="form-group">
                                                      <label class="col-md-4 control-label" for="dept">UOM</label>
                                                      <div class="col-md-5">
                                                        <form:select path="uomId" id="itemuom" name="itemuom" class="form-control">
                                                          <c:forEach var="u" items="${list1 }">
                                                          <option value="${u.uomId }">${u.uomName }</option>
                                                          </c:forEach>
                                                        </form:select>
                                                      </div>
                                                    </div>
                                                 -->
                                                 <!-- Text input UNIT COST-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Unit Cost</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="unitcost" name="unitcost" type="text" placeholder="Unit Cost" class="form-control input-md" required="" path="unitCost"/>
                                                  </div>
                                                </div>
                                                
                                                 <!-- Text input requested by-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Requested By</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="requestedby" name="requestedby" type="text" placeholder="Requested By" class="form-control input-md" required="" path="requestedBy"/>
                                                  </div>
                                                </div>
                                                
                                                  <!-- Textarea -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptdesc">Purpose</label>
                                                  <div class="col-md-6">                     
                                                    <form:textarea  rows="5" cols="200" class="form-control" id="purpose" name="purpose" path="purpose"/>
                                                  </div>
                                                </div>

                                         
                                               <!-- Button (Double) -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                                  <div class="col-md-6">
                                                    <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success pull-right">Update</button>
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
                        
                        
                    </div>
       
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
    
    <script>
    
    $('#modalupdate').on('show.bs.modal', function (e) {
     	  // get information to update quickly to modal view as loading begins
     	  var opener=e.relatedTarget;//this holds the element who called the modal
     	   
     	  //we get details from attributes

     	  var stockno=$(opener).attr('stock-no');
     	  var itemname=$(opener).attr('item-name');
     	  var itemdesc=$(opener).attr('item-desc')
  		  var itemqty=$(opener).attr('item-qty');
  		  var itemuom=$(opener).attr('item-uom');
  		  var unitcost=$(opener).attr('unit-cost');
  		  var requestedby=$(opener).attr('requested-by');
  		  var purpose=$(opener).attr('purpose');
  		  var prid=$(opener).attr('pr-id');

     	  //set what we got to our form
  	  	  
  		  $('#updateForm').find('[id="stockno"]').val(stockno);
  		  $('#updateForm').find('[id="itemname"]').val(itemname);
  		  $('#updateForm').find('[id="itemdesc"]').val(itemdesc);
  		  $('#updateForm').find('[id="itemqty"]').val(itemqty);

  		 $('#updateForm').find('[id="itemuom"] option[value="'+itemuom+'"]').attr("selected","selected").change();
  		  $('#updateForm').find('[id="unitcost"]').val(unitcost);
  		  $('#updateForm').find('[id="requestedby"]').val(requestedby);
  		  $('#updateForm').find('[id="purpose"]').val(purpose);
       	$('#updateForm').find('[id="prid"]').val(prid);
     	});

    function confirmDelete(x){
		if(confirm("Are you sure you want to delete this request?") == true){
			window.location.href = 'purchase-request/delete/'+x;
		}
		else{
			
		}
	}
</script>
    </div>

   
</body>
</html>