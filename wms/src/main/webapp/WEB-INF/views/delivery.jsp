

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
                <h1>Setup Warehouse</h1>
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
							Setup Warehouse
                        </a>
                    </li>
                </ol>
            </section>
			
	<section class="content">
<div class="row">
                    <div class="col-md-0">
                    
                    </div>
                         
                        <div class="row">
                    <div class="col-md-0">
                    
                    </div>
                         
                        <div class="col-lg-12">
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="table" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                        Purchase Order List
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
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 5%;">PO No.</th>
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 30%;">Item Code</th>
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 30%;">Item Name</th>
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 40%;">Location</th>
                                            
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 20%;">Date of Delivery</th>
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 25%;">Receive/Remove</th>
                                               
                                               

                                               
                                            </tr>
                                        </thead>
                                        <tbody>
                                           <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                             
                                                         <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                             
                                                         <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                                         <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                                         <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                                         <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                                         <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                                         <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                                         <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                                         <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                                         <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                                         <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                                         <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                                         <tr role="row" class="odd">
                                            <td>1</td>
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Warehouse A</td>
                                            <td>10-07-2017</td>
                                           
                                            <td align="center">
                                                
                                                 <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#receive_modal" href="#receive_modal" title="Receive Item">
                                                  <span class="glyphicon glyphicon-log-in"></span>
								              </button>
                                                <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#remove_modal" href="#remove_modal" title="Remove Purchase Order">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                                
                                                </td>
                                             </tr>
                                             
                                             
                                        </tbody>
                                    </table>
                                </div>

                                </div>
                                
                                
                            </div>
                        </div>
                    </div>
                </div>
                
                
            
                <div id="receive_modal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;" data-backdrop="static" data-keyboard="false">
                   <div class="modal-dialog modal-lg">  													 
                       <div class="modal-content">
                           <div class="modal-header">
                               <h3 class="modal-title">Receive Item</h3>
                               <p>&nbsp;Receiving of item includes manual counting of quantity and manual inspection of items. This also includes the number of items to be returned.</p>
                           </div>
                           <div class="modal-body"> 
                               
                            <h5><b>Purchase Order Information</b></h5>
                            <br />
                            <div id="wrap">
                                <div class="divleft">
                                    <div class="form-group">
                                        <label>Purchase Order No :</label>
                                            <span>1</span>
                                    </div>
                                </div>
                                
                                <div clas="divright">
                                    <div class="form-group">
                                        <label>Date of Delivery :</label>
                                        <span>10/07/2017</span>
                                    
                                    </div>
                                
                                </div>
                                
                                
                            </div>
                            <div id="wrap">
                                <div class="divleft">
                                    <div class="form-group">
                                        <label>Location :</label>
                                            <span>Warehouse A</span>
                                    </div>
                                </div>
                                
                                <div clas="divright">
                                    <div class="form-group">
                                        <label>Item Code :</label>
                                        <span>AUG-2017-01</span>
                                    
                                    </div>
                                
                                </div>
                                
                                
                            </div>
                               
                            <div id="wrap">
                                <div class="divleft">
                                    <div class="form-group">
                                        <label>Item Name :</label>
                                            <span>Bond Paper</span>
                                    </div>
                                </div>
                                
                                <div clas="divright">
                                    <div class="form-group">
                                        <label>Item Category :</label>
                                        <span>Office Supplies</span>
                                    
                                    </div>
                                
                                </div>
                                
                                
                            </div>
                               
                            <div id="wrap">
                                <div class="divleft">
                                    <div class="form-group">
                                        <label>Order Quantity :</label>
                                            <span>200</span>
                                    </div>
                                </div>
                                
                                <div clas="divright">
                                    <div class="form-group">
                                        <label>Unit of Measurement :</label>
                                        <span>ream(s)</span>
                                    
                                    </div>
                                
                                </div>
                                
                                
                            </div>
                            
                            
                            <hr />
                            <br />
                             <div style="width: 1200px;">
                           <div style="float:left; width: 300px;"> 
                            <div class="col-md-10">
                            <label>Receive Quantity:</label>
                            <input id="name12" name="name" type="text" class="form-control" placeholder="Received Quantity" title="Do the manual counting to quantity of items and type it here...">
                            </div>
                                 </div>
                            <div style="float:left; width: 300px;"> 
                                <div class="col-md-10">
                            <label>Passed Quantity:</label>
                            <input id="name12" name="name" type="text" class="form-control" placeholder="Passed Quantity" title="Do the manual inspection to items and the quantity result is to be typed here...">
                            
                                 </div>
                                 </div>
                            <div style="float:left; width: 300px;"> 
                                <div class="col-md-10">
                            <div class="form-group">
                            <label>Item Return Quantity:</label>
                            <input id="name12" name="name" type="text" class="form-control" placeholder="Item Return Quantity" title="Input the quantity of items you want to be returned to supplier...">
                            <br>
                            <label>Item Return Remarks:</label>
                            <textarea class="form-control" rows="3" title="Type here the reason for item return..."></textarea>
                                </div>
                                 </div>
                                 </div>
				            </div>
                            <br><br><br><br><br><br><br><br><br><br>
				            <div class="modal-footer">
                               
                                <button type="button" data-dismiss="modal" class="btn">Cancel</button>
                                <button type="button" class="btn btn-success" 
                                        onclick="location.href='transaction_delivery.html'" >Receive Item</button>
				            </div>
				            </div>
										
					  </div>
                    </div>
                </div>
                
                <div class="modal fade" id="remove_modal" tabindex="-1" role="dialog" aria-labelledby="user_delete_confirm_title" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h3 class="modal-title" id="user_delete_confirm_title">
                                                Removing Purchase Order
                                            </h3>
                                        </div>
                                        <div class="modal-body">
                                            Are you sure you want to remove this purchase order from delivery list? You can take it back by setting it active it again from the queries.
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                            <a href="transaction_delivery.html" type="button" class="btn btn-danger">Remove</a>
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
      	  var warehousename=$(opener).attr('warehouse-name');
      	  var warehousedesc=$(opener).attr('warehouse-desc');
      	  var warehouseid=$(opener).attr('warehouse-id');
      	var warehousestatus=$(opener).attr('warehouse-status');

      	  //set what we got to our form
  	  	  $('#updateForm').find('[id="warehousename"]').val(warehousename);
          $('#updateForm').find('[id="warehousedesc"]').val(warehousedesc);
          $('#updateForm').find('[id="warehouseid"]').val(warehouseid);
          $('#updateForm').find('[id="warehousestatus"]').val(warehousestatus);
        	
      	});
   	</script>
    <!-- end of page level js -->
    
    
    
</body>
</html>