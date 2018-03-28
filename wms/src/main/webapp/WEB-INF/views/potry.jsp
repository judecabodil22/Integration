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
                <h1>Purchase Order</h1>
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
                            Transaction - Purchase Order
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
                                
                                 <form:form class="form-horizontal" method="post" action="potry/save" modelAttribute="potry">
                                                <fieldset>

                                                <!-- Form Name -->
                                                <legend>Order Form</legend>
												
			<div class="col-md-12">                     
												                                 <!-- Text input requested by-->
                                             <div class="form-group">
                                                      <label class="col-md-2 control-label" for="dept">Supplier</label>
                                                      <div class="col-md-4">
                                                      <form:select path="supplierId" id="supplierid" name="supplierid" class="form-control">
                                                          <c:forEach var="s" items="${list1 }">
                                                          <option value="${s.supplierId }">${s.supplierName }</option>
                                                          </c:forEach>
                                                        </form:select>
                                                        
                                                      </div>
                                                  
                                                  <label class="col-md-2 control-label" for="deptname">Place of Delivery</label>  
                                                  <div class="col-md-4">
                                                  <form:input id="placeofdelivery" name="placeofdelivery" type="text" placeholder="Place of Delivery" class="form-control input-md" required="" path="placeOfDelivery"/>
                                                  </div>
                                                </div>
                                                
                                                       <!-- Text input delivery date-->
                                                <div class="form-group">
                                                  <label class="col-md-2 control-label" for="deptname">Delivery Date</label>  
                                                  <div class="col-md-4">
                                                  <form:input id="deliverydate" name="deliverydate" type="Date" placeholder="Delivery Date" class="form-control input-md" required="" path="deliveryDate"/>
                                                  </div>
                                               
                                                  <label class="col-md-2 control-label" for="deptname">Payment Term</label>  
                                                  <div class="col-md-4">
                                                  <form:input id="paymentterm" name="paymentterm" type="text" placeholder="Payment Term" class="form-control input-md" required="" path="paymentTerm"/>
                                                  </div>
                                                </div>
                                                
                                                
                                                  
                                                 <br><br>
			</div>		                                                
<!-- ========================================================================================================================================== -->												                                                 
                               
76  <label>Order</label>
    <div class="multi-field-wrapper">
      <div class="multi-fields">
        <div class="multi-field col-md-12">
        <div class="col-md-2"> <form:select path="prId" id="prid" name="prid" class="form-control">
                                                          <c:forEach var="s" items="${list2 }">
                                                          <option value="${s.prId }">${s.prCode }</option>
                                                          </c:forEach>
                                                        </form:select></div>
          <div class="col-md-2"> <form:input type="number" name="itemqty" placeholder="Qty" class="form-control col-md-3" path="itemQty"/></div>
           <div class="col-md-2">
                                                             	
                                                        <form:select path="uomId" id="prid" name="prid" class="form-control">
                                                          <c:forEach var="u" items="${list4 }">
                                                          <option value="${u.uomId }">${u.uomName }</option>
                                                          </c:forEach>
                                                        </form:select></div>
           <div class="col-md-2"> <form:input type="number" name="unitcost" placeholder="Unit Cost" class="form-control col-md-3" path="unitCost"/></div>
          <button type="button" style="float:right" class="remove-field col-md-2">Remove</button><br>
        </div>
      </div>
      <div class="col-md-6"></div>
      <div class="col-md-2">
      <br>
    <button type="button" class="form-control add-field pull-center btn btn-info">Add Item</button>
  </div></div><br><br><div class="col-md-12"></div>
 


												<div></div>
                                           
                                        
                                                
                                         
                                         <br><br><br><br><br>

                                                <!-- Button (Double) -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                                  <div class="col-md-8">
                                                    <button id="buttonsubmit" name="buttonsubmit1" class="btn btn-success pull-right">Submit</button>
                                                    
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
                                        	
                                        	<th>PO Code.</th>
                                       
                                        
                                        	<th>Supplier</th>
                                       
                                            <th>Place of Delivery</th>
                                            <th>Delivery Date</th>
                                            <th>Payment Term</th>
                                            <th>Qty</th>
                                            <th>Unit Cost</th>
                                            <th>Total Cost</th>
                                            <th>Date</th>
                                           <th>Action</th>
                                          <th></th> 
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="o" items="${list}">
                                        <tr>
                                        
                                        	<td>${o.poCode}</td>
                                       		
                                        	<td>${o.supplierName}</td>
                                        	
                                        	<td>${o.placeOfDelivery}</td>                                
                                        	<td>${o.deliveryDate}</td>
                                        	<td>${o.paymentTerm}</td>
                                        	<td>${o.uomQty}</td>
                                        	<td>${o.unitCost}</td>
                                        	<td>${o.totalCost}</td>
                                       		<td>${o.poDate}</td>
                                        
                                          
										
                                            <td><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modalupdate" pr-id="${o.prId}" supplier-id="${o.supplierId }" mop-id="${o.mopId }"  place-delivery="${o.placeOfDelivery }" payment-term="${o.paymentTerm }" item-qty="${o.itemQty }" item-uom="${o.uomId }" unit-cost="${o.unitCost }" po-id="${o.poId }" ><span class="glyphicon glyphicon-pencil"></span> </a></td>	                                     
                                          
                                            	
                                           	<td> <a href="#"  class="btn btn-danger" onclick="confirmDelete(${o.poId})"><span class="glyphicon glyphicon-trash" ></span> </a></td>              		

                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                        </div>
                        
                        
                        <!-- END SAMPLE TABLE PORTLET-->
                        
                        
       
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

   	  	  var prid=$(opener).attr('pr-id');
   	  	  var supplierid=$(opener).attr('supplierid');
   	 	  var mopid=$(opener).attr('mopid')
		  var placedelivery=$(opener).attr('place-delivery');
		  var deliverydate=$(opener).attr('delivery-date');
		  var paymentterm=$(opener).attr('payment-term');
		  var itemqty=$(opener).attr('item-qty');
		  var itemuom=$(opener).attr('item-uom');
		  var unitcost=$(opener).attr('unit-cost')
		  var poid=$(opener).attr('po-id');

   	  //set what we got to our form
	  	  
		  $('#updateForm').find('[id="prid"] option[value="'+prid+'"]').attr("selected","selected").change();
		  $('#updateForm').find('[id="supplierid"] option[value="'+supplierid+'"]').attr("selected","selected").change();
		  $('#updateForm').find('[id="mopid"] option[value="'+mopid+'"]').attr("selected","selected").change();
		  $('#updateForm').find('[id="placedelivery"]').val(placedelivery);
		  $('#updateForm').find('[id="deliverydate"]').val(deliverydate);
		  $('#updateForm').find('[id="paymentterm"]').val(paymentterm);
		  $('#updateForm').find('[id="itemqty"]').val(itemqty);
		  $('#updateForm').find('[id="itemuom"] option[value="'+itemuom+'"]').attr("selected","selected").change();
		  $('#updateForm').find('[id="unitcost"]').val(unitcost);
     	$('#updateForm').find('[id="poid"]').val(poid);
   	});
   
    
    function confirmDelete(x){
		if(confirm("Are you sure you want to delete this order?") == true){
			window.location.href = 'purchase-order/delete/'+x;
		}
		else{
			
		}
	}
	$('.multi-field-wrapper').each(function() {
	    var $wrapper = $('.multi-fields', this);
	    $(".add-field", $(this)).click(function(e) {
	        $('.multi-field:first-child', $wrapper).clone(true).appendTo($wrapper).find('input').val('').focus();
	    });
	    $('.multi-field .remove-field', $wrapper).click(function() {
	        if ($('.multi-field', $wrapper).length > 1)
	            $(this).parent('.multi-field').remove();
	    });
	});
    
    </script>
    </div>

   
</body>
</html>