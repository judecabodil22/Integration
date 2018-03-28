<!DOCTYPE html>
<html>

<head>

<%@ include file="includes/head.jsp" %>

<!--page level css -->

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
                    <!--row starts-->
                    <div class="col-lg-12">
                        <!--lg-6 starts-->
                        <!--basic form starts-->
                        
                        <div class="panel panel-default" id="hidepanel1">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="plus" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Add Warehouse
                                </h3>
                                <span class="pull-right">
                                    <i class="glyphicon glyphicon-chevron-up clickable"></i>
                                </span>
                            </div>
                            <div class="panel-body">
						<form:form class="form-horizontal" modelAttribute="warehouse" action="warehouse-save" method="post">
							<fieldset>
                                        <!-- Name input-->
                                        <div class="form-group">
                                            <label class="col-md-3 control-label" for="name">Warehouse Name</label>
                                            <div class="col-md-9">
                                                <input id="name" name="warehouseName" type="text" placeholder="Warehouse Name" class="form-control"></div>
                                        </div>
                                        <!-- Desc input-->
                                        <div class="form-group">
                                            <label class="col-md-3 control-label" for="message">Description</label>
                                            <div class="col-md-9">
                                                <textarea name="warehouseDesc" class="form-control" id="message" name="message" placeholder="Please enter your details of the warehouse here..." rows="5"></textarea>
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <label class="col-md-3 control-label" for="name">Status</label>
                                                <div class="col-md-9">
                                                        <select name="warehouseStatus" class="form-control">
                                                        <option value=1>Active</option>
                                                        <option value=0>Inactive</option>
                                                     </select>
                                                </div>
                                        </div>
                                    
                                        <!-- Message body -->
                                        <div class="form-group">
                                            
                                            <div class="col-md-9">
                                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            
                                            <div class="col-md-9">
                                            
                                            </div>
                                        </div>
                                        <!-- Form actions -->
                                        <div class="form-group">
                                            <div class="col-md-12 text-right">
                                                <button type="submit" class="btn btn-responsive btn-primary btn-sm">Submit</button>
                                            </div>
                                        </div>
                                    </fieldset>
                    </form:form>
                            </div>
                        </div>
                        
			      	
                    </div>
                </div>    

                <div class="row">
                    <div class="col-md-0">
                    
                    </div>
                         
                        <div class="col-lg-12">
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="table" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                        Warehouse List
                                </h3>
                                <span class="pull-right">
                                    <i class="glyphicon glyphicon-chevron-up clickable"></i>
                                </span>
                            </div>
                                <div class="panel-body">
                                    <div id="sample_editable_1_wrapper">
                                    <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1">Warehouse Name</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 300px;">Description</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Points
                                            : activate to sort column ascending" style="width: 124px;">Date Created</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Points
                                            : activate to sort column ascending" style="width: 124px;">Last Modified</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Notes
                                            : activate to sort column ascending" style="width: 50px;">Status</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Edit
                                            : activate to sort column ascending" style="width: 88px;">Edit/Delete</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        <c:forEach var="g" items="${list}">
                                        <tr>
                                            <td>${g.warehouseName}</td>
                                            <td>${g.warehouseDesc}</td>
                                            <td>${g.warehouseDateCreated}</td>
                                            <td>${g.warehouseDateModified}</td>
                                            
                                            <td align="center"><span class="label label-sm label-success">Active</span></td>
                                            <td align="center">
                                            <div align="center">
                                     		        <button type="button" class="btn btn-xs btn-info" data-toggle="modal" href="#edit_modal" title="Edit Warehouse" warehouse-id="${g.warehouse_ID}" warehouse-name="${g.warehouseName}" warehouse-desc="${g.warehouseDesc}" warehouse-status="${g.warehouseStatus}">
                                                  <span class="glyphicon glyphicon-edit"></span>
								              </button>
								              <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="#delete_modal" href="#delete_modal" title="Delete Warehouse">
								                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
                                            </div>
                                            </td>
                                           
                                           </tr>
                                           </c:forEach>
                                           
                                           
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
                               <h3 class="modal-title">Edit Warehouse</h3>
                               <p>You can make changes of Warehouse information.</p>
                           </div>
                           <div class="modal-body">
							<form:form class="form-horizontal" method="post" action="warehouse-update" modelAttribute="warehouse" id="updateForm">
							<fieldset>							
							<input name="warehouse_ID" id="warehouseid" style="display: none"></input>				 
                            <p align="left">
                              Warehouse Name
                            <input id="warehousename" name="warehouseName" type="text" class="form-control">
                            </p>
                            <p align="left">
                              Description
                            <textarea id="warehousedesc" name="warehouseDesc" type="text" class="form-control"></textarea>
                            </p>
                            <p align="left">
                              Status
                            <select id="warehousestatus" name="warehouseStatus" class="form-control">
                            <option value="1">Active</option>
                                <option value="0">Inactive</option>
                                </select>
                            </p>
							<br>
						        <button type="submit"  class="btn btn-primary">Save</button>	
                 		</fieldset>
                  		</form:form>                       		                        
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
   
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/select2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-editable.js"></script>
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