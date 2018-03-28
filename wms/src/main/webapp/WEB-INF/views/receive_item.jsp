
<!DOCTYPE html>
<html>

<head>

<%@ include file="includes/head.jsp" %>

<!--page level css -->
<link href="${pageContext.request.contextPath}/resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/animate/animate.min.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pages/jscharts.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/line_break.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/select2.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
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
                <h1>Receive Item</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Logistics
                        </a>
                    </li>
					<li class="active">
                        <a href="#">
                            <i class="livicon" data-name="dashboard" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Receive Item
                        </a>
                    </li>
                </ol>
            </section>
			
	<section class="content">
                <div class="row">
                    <div class="col-md-0">
                    
                    </div>
                         
                        <div class="col-lg-12">
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="table" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                        Item List
                                </h3>
                                <span class="pull-right">
                                    <i class="glyphicon glyphicon-chevron-up clickable"></i>
                                </span>
                            </div>
                                <div class="panel-body">
                                    <div id="sample_editable_1_wrapper" class="">
                                    <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" style="width: 50px;" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1">Purchase Order</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 50px;">Item Code</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Points
                                            : activate to sort column ascending" style="width: 200px;">Item Name</th>
                                            <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Points
                                            : activate to sort column ascending" style="width: 50px;">Quantity</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Notes
                                            : activate to sort column ascending" style="width: 50px;">Delivery Date</th>
                                            <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Notes
                                            : activate to sort column ascending" style="width: 100px;">Location </th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Edit
                                            : activate to sort column ascending" style="width: 88px;">Receive</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody>
                                       
                                     
                                        <tr>
                                            <td>01</td>
                                            <td>01</td>
                                            <td>Bond Paper</td>
                                            <td>200</td>
                                            <td>03/01/2018</td>
                                            <td>Warehouse A</td>
                                            <td align="center">
                                            <div align="center">
                                     		        <button type="button" class="btn btn-xs btn-info" date-delivery="" item-qty="" vendor-name="" po-no="" item-id="" item-name=""  data-toggle="modal" href="#edit_modal" title="Edit Warehouse">
                                                  <span class="glyphicon glyphicon-edit"></span>
								              </button>
								              
                                            </div>
                                            </td>
                                           
                                           </tr>
                                           
                                  
                                        </tbody>
                                    </table>
                                </div>

                                </div>
                                
                                
                            </div>
                        </div>
                    </div>
                
                
            
                <div id="edit_modal" tabindex="-1" class="modal fade" role="dialog" aria-hidden="true" style="display: none;">	
                   <div class="modal-dialog">  													
                       <div class="modal-content">
                           <div class="modal-header">
                               <button type="button" class="close" data-dismiss="modal">×</button>
                               <h3 class="modal-title">Receive Item</h3>
                               <p>Input the number of items received in the delivery.</p>
                           </div>
                           <div class="modal-body">
							<form class="form-horizontal" method="post" action="transaction-inspect"  id="updateForm">
							<fieldset>							
							<input name="warehouseId" id="warehouseid" style="display: none"></input>				 
                            
                            <p align="left">
                              Quantity Received :
                            <input id="" name="" type="text" class="form-control">
                            </p>
                            <p align="left">
                              Remarks :
                            <input id="" name="" type="text" class="form-control">
                            </p>
                            <p align="left">
                              Received By :
                            <input id="" name="" placeholder="Admin" type="text" class="form-control" disabled>
                            </p>
							<br>
						        <button type="submit"  class="btn btn-primary">Save</button>	
                 		</fieldset>
                  		</form>                       		                        
				            </div>
				            <div class="modal-footer">
                               
                                <button type="button" data-dismiss="modal" class="btn">Cancel</button>
                        
                               
				            </div>
				            
				            </div>
				            
										
					  </div>
					  
                </div>
                
                
                 <div class="modal fade" id="delete_modal" tabindex="-1" role="dialog" aria-labelledby="user_delete_confirm_title" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h3 class="modal-title" id="user_delete_confirm_title">
                                                Delete Warehouse
                                            </h3>
                                        </div>
                                        <div class="modal-body">
                                            Are you sure you want to delete this warehouse? This action is irreversible.
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                            <a href="#" type="button" class="btn btn-danger">Delete</a>
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
   <!-- Editable Table -->
   
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables/select2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pages/table-editable.js"></script>
    <script>
		function confirmDelete(x){
			if(confirm("Are you sure you want to delete this department?") == true){
				window.location = 'department/delete/'+x;
			}
			else{
				
			}
		}
		
   		
   		$('#edit_modal').on('show.bs.modal', function (e) {
      	  // get information to update quickly to modal view as loading begins
      	  var opener=e.relatedTarget;//this holds the element who called the modal
      	   
      	  //we get details from attributes
      	  var po_no=$(opener).attr('po-no');
      	  var item_id=$(opener).attr('item-id');
      	  var item_name=$(opener).attr('item-name');
      	var item_qty=$(opener).attr('item-qty');
      	var vendor_name=$(opener).attr('vendor-name');
      	var date_delivery=$(opener).attr('date-delivery');
      	  //set what we got to our form
  	  	  $('#updateForm').find('[id="po_no"]').val(po_no);
          $('#updateForm').find('[id="item_id"]').val(item_id);
          $('#updateForm').find('[id="item_name"]').val(item_name);
          $('#updateForm').find('[id="vendor_name"]').val(vendor_name);
          $('#updateForm').find('[id="item_qty"]').val(item_qty);
          $('#updateForm').find('[id="delivery_date"]').val(date_delivery);
        	
      	});
   	</script>
    <!-- end of page level js -->
    
    
    
</body>
</html>