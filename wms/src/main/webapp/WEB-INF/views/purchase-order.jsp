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
                        <a href="allow.html">
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
          
            
                                  
                                      <section class="content paddingleft_right15">
                                    	<div class="row">
                    <div class="col-lg-15">
                        <div class="panel panel-success filterable">
                            <div class="panel-heading clearfix  ">
                               
                                
                                <div class="panel-title pull-left">
                                       <div class="caption">
                                    <i class="livicon" data-name="thumbnails-big" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    List of Purchase Order
                                    </div>
                                </div>
                                <div>
                                <div class="pull-right"></div></div>
                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table1">
                                     <thead>
                                    
                                    
                                    
                                    
                                    
                                        <tr>
                                        	
                                        	<th>PO Code.</th>
                                       
                                        
                                        	<th>Item Name</th>
                                       
                                            <th>Item Desc</th>
                                            <th>Qty</th>
                                          
                                            <th>Unit Cost</th>
                                            <th>PO Date</th>
                                           <th>Action</th>
                                          <th></th> 
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="o" items="${list}">
                                        <tr>
                                        
                                        	<td>${o.poId}</td>
                                       		
                                        	<td>${o.itemName}</td>
                                        	
                                        	<td>${o.itemDesc}</td>                                
                                        	<td>${o.itemQty}</td>
                                        	<td>${o.unitCost}</td>
                                        	
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
                       
                        
                 
               </section>     
        </aside>
        <!-- right-side -->
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
    
    </script>
   
  
</body>
</html>
