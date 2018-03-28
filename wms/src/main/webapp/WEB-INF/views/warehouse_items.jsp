

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
    <link href="${pageContext.request.contextPath}/resources/css/line_break.css" rel="stylesheet" type="text/css"/>
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
                <h1>Warehouse Items</h1>
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
							Warehouse Items
                        </a>
                    </li>
                </ol>
            </section>
			
	<section class="content">
                <div class="row">
                    
                <!-- END SEARCH BAR -->
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
                                    <div id="sample_editable_1_wrapper" class="">
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
                                            : activate to sort column ascending" style="width: 88px;">Action</th>
                                               
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
                                     		       <button type="button" class="btn btn-xs btn-info" data-toggle="modal" data-href="#view_modal" href="#view_modal" title="View Items" warehouse-id="${g.warehouse_ID}" warehouse-name="${g.warehouseName}" warehouse-desc="${g.warehouseDesc}" warehouse-status="${g.warehouseStatus}">
                                                  <span class="glyphicon glyphicon-eye-open"></span>
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
               
            
                
                
            <!-- MODALS STARTS HERE -->
            <!-- START MODAL 1 -->
                <div id="transfer_modal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;">
                   <div class="modal-dialog modal-lg">  													 
                       <div class="modal-content">
                           <div class="modal-header">
                               <button type="button" class="close" data-dismiss="modal">×</button>
                               <h3 class="modal-title">Transfer Item</h3>
                               <p>Select warehouse to transfer the item.</p>
                           </div>
                           <div class="modal-body">
				        <h5><b>Item Information</b></h5>
				        <label>Transaction No :</label>
				        <span>Code Generated</span>
                            <br />
                            <div id="wrap">
                                <div class="divleft">
                                    <div class="form-group">
                                    	
                                        <label>Current Warehouse :</label>
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
                                        <label>Quantity :</label>
                                            <span>200</span>
                                    </div>
                                </div>
                                
                                <div clas="divright">
                                    <div class="form-group">
                                        <label>UOM :</label>
                                        <span>ream(s)</span>
                                    
                                    </div>
                                
                                </div>
                                
                                
                            </div>
                            
                            <br />
                            <hr />
                            <br />		     
                                           
                            <p align="left">
                               Transfer to 
                            </p>
                            <div class="input-group select2-bootstrap-prepend">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button" data-select2-open="single-prepend-text">
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                        <select id="single-prepend-text" class="form-control select2">
                                            <option value="A">Warehouse A</option>
                                            <option value="B">Warehouse B</option>
                                            <option value="C">Warehouse C</option>
                                        </select>
                                    </div>
                            <br>
                            <div class="form-group">
                            <p align="left">
                               Transferred by 
                            </p>
                            <input id="name12" name="name" type="text" class="form-control" placeholder="First Name"> 
                            <br>
                            <input id="name12" name="name" type="text" class="form-control" placeholder="Last Name">
                               
                            </div>
				            </div>
				            <div class="modal-footer">
                               
                                <button type="button" data-dismiss="modal" class="btn">Cancel</button>
                                <button type="button" class="btn btn-info" data-dismiss="modal" data-toggle="modal">Transfer</button>
				            </div>
				            </div>
										
					  </div>
                </div>
            <!-- END of MODAL 1 -->    
                <div class="modal fade" id="stack2" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                               <h4>Choose Item Issuance Type</h4>
                            </div>
                            <div class="modal-body">
                    
                            
                           <button style="width: 268px;" type="button" class=" btn btn-modal btn-xs btn-success" data-dismiss="modal" data-toggle="modal" data-href="#issue_modal" href="#issue_modal" title="Issue Item">
                            <i class="livicon pull-left" data-name="sign-out" data-size="80" data-color="#fff" data-hc="#fff">
                               </i><label><h2>Issue</h2></label>
                            </button>
                            
                            <br><br>
                            
                           <button style="width: 268px;" type="button" class="btn btn-xs btn-warning"  title="Borrow Item" data-dismiss="modal" data-toggle="modal" data-href="#borrow_modal" href="#borrow_modal">
                            <i class="livicon pull-left" data-name="timer" data-size="80" data-color="#fff" data-hc="#fff">
                               </i><label><h2>Borrow</h2></label>
                            </button>
                            
                            
                            
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                
            
            
            <!-- START of MODAL 2 -->
                <div id="issue_modal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;">
                   <div class="modal-dialog modal-lg">  											
                       <div class="modal-content">
                           <div class="modal-header">
                               <button type="button" class="close" data-dismiss="modal">×</button>
                               <h3 class="modal-title">Issue Item</h3>
                               <p>Please input the number of items you want to issue.</p>
                           </div>
                           <div class="modal-body">
										     
                            <h5><b>Item Information</b></h5>
                            <br />
                            <div id="wrap">
                                <div class="divleft">
                                    <div class="form-group">
                                        <label>Current Warehouse :</label>
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
                                        <label>Quantity :</label>
                                            <span>200</span>
                                    </div>
                                </div>
                                
                                <div clas="divright">
                                    <div class="form-group">
                                        <label>UOM :</label>
                                        <span>ream(s)</span>
                                    
                                    </div>
                                
                                </div>
                                
                                
                            </div>
                            
                            <br />
                            <hr />
                            
                            <div style="width: 1000px;">
                                <div style="float:left; width: 400px;">
                                    
                                    
                                    <label><b>Issued to:</b></label> (Department)
                                     <div class="input-group select2-bootstrap-prepend col-md-12">
                                        
                                        <select id="" class="form-control select2">
                                            <option value="A">Department 1</option>
                                            <option value="B">Department 2</option>
                                            <option value="C">Department 3</option>
                                        </select>
                                    </div>
                                    <br />
                                    <p>
                                        <b>Issued by:</b> (First Name)
                                    <input class="form-control" id="name12" placeholder="First Name">
                                    </p>
                                    <p>
                                        <b>Issued by:</b> (Last Name)
                                    <input class="form-control" id="name12" placeholder="Last Name">
                                    </p>
                                    
                                
                                </div>
                                <div style="float:left; width: 60px;">
                                    <br>
                                </div>
                                <div style="float:left; width: 400px;">
                                    <p>
                                        <b>Issued Date:</b> (Today) 
                                    <input disabled style="cursor:disabled; background:none;" class="form-control" id="todate" name="name" type="text">
                                    </p>
                                    <p>
                                        <b>Quantity:</b>
                                    <input class="form-control" id="todate" type="text"  placeholder="Please input here the number of items you want to issue...">
                                    </p>
                                    <p>
                                        <b>Remarks:</b>
                                    <textarea class="form-control" rows="2"></textarea>

                                    </p>
                                    
                                    <script>   function getDate(){
                                        var todaydate = new Date();
                                        var day = todaydate.getDate();
                                        var month = todaydate.getMonth() + 1;
                                        var year = todaydate.getFullYear();
                                        var datestring = month + "-" + day + "-" + year;
                                        document.getElementById("todate").value = datestring;
                                        } 
                                        getDate(); 
                                    </script>                            
                                    
                                </div>
                            </div>
                               
				            </div>
                           <br><br><br><br><br><br><br><br><br><br>
				            <div class="modal-footer">
                               
                                <button type="button" data-dismiss="modal" class="btn" data-toggle="modal" data-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-success" onClick="window.location.reload()">Issue</button>
				            </div>
				            </div>
										
					  </div>
                </div>
                
            <!-- START BORROW MODAL -->
            <div id="borrow_modal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;">
                   <div class="modal-dialog modal-lg">  											
                       <div class="modal-content">
                           <div class="modal-header">
                               <button type="button" class="close" data-dismiss="modal">×</button>
                               <h3 class="modal-title">Borrow Item</h3>
                               <p>Please fill out the information needed.</p>
                           </div>
                           <div class="modal-body">
										     
                            <h5><b>Item Information</b></h5>
                            <br />
                            <div id="wrap">
                                <div class="divleft">
                                    <div class="form-group">
                                        <label>Current Warehouse :</label>
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
                                        <label>Quantity :</label>
                                            <span>200</span>
                                    </div>
                                </div>
                                
                                <div clas="divright">
                                    <div class="form-group">
                                        <label>UOM :</label>
                                        <span>ream(s)</span>
                                    
                                    </div>
                                
                                </div>
                                
                                
                            </div>
                            
                            <br />
                            <hr />
                            
                            <div style="width: 1000px;">
                                <div style="float:left; width: 400px;">
                                    
                                    
                                    <label><b>Borrowed by:</b></label> (Department)
                                     <div class="input-group select2-bootstrap-prepend col-md-12">
                                        
                                        <select id="" class="form-control select2">
                                            <option value="A">Department 1</option>
                                            <option value="B">Department 2</option>
                                            <option value="C">Department 3</option>
                                        </select>
                                    </div>
                                    <br />
                                    <p>
                                        <b>Borrower:</b> (First Name)
                                    <input class="form-control" id="name12" placeholder="First Name">
                                    </p>
                                    <p>
                                        <b>Borrower:</b> (Last Name)
                                    <input class="form-control" id="name12" placeholder="Last Name">
                                    </p>
                                    
                                
                                </div>
                                <div style="float:left; width: 60px;">
                                    <br>
                                </div>
                                <div style="float:left; width: 400px;">
                                    
                                    <p>
                                        <b>Borrow Start Date:</b> (Today) 
                                    <input disabled style="cursor:disabled; background:none;" class="form-control" id="todate1" name="name" type="text">
                                    </p>
                                    <p>
                                        <b>Borrow Return Date:</b>
                                    <input class="form-control" id="todate" type="date">
                                    </p>
                                    <p>
                                        <b>Quantity:</b>
                                    <input class="form-control" id="todate" type="text"  placeholder="Please input here the number of items you want to borrow...">
                                    </p>
                                     
                                    <script>   function getDate(){
                                        var todaydate = new Date();
                                        var day = todaydate.getDate();
                                        var month = todaydate.getMonth() + 1;
                                        var year = todaydate.getFullYear();
                                        var datestring = month + "-" + day + "-" + year;
                                        document.getElementById("todate1").value = datestring;
                                        } 
                                        getDate(); 
                                    </script>                            
                                    
                                </div>
                            </div>
                               
				            </div>
                           <br><br><br><br><br><br><br><br><br><br>
				            <div class="modal-footer">
                               
                                <button type="button" data-dismiss="modal" class="btn" data-toggle="modal" data-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-warning" data-dismiss="modal" data-toggle="modal" data-target="#warning_modal">Borrow</button>
				            </div>
				            </div>
										
					  </div>
                </div>
                
                
                
                
                
                
                
                
                <div id="success_issued_modal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;" data-backdrop="static" data-keyboard="false">
                   <div class="modal-dialog">  													  
                       <div class="modal-content">
                           <div class="modal-header">
                               <i class="livicon pull-left" data-name="checked-circle-alt" data-size="35" data-loop="true" data-c="#008000" data-hc="#008000" title=""></i>
                               
                               <h3 class="modal-title"><font color="#fff">%</font>Item Issued Successful</h3>
                            
                           </div>
                           <div class="modal-body">
										     
                            <p>
                             Go to Queries->Item History under Issued Items tab to view this transaction.
                            </p>
                               
				            </div>
				            <div class="modal-footer">
                               
                                <button type="button btn-default" data-dismiss="modal" class="btn" data-toggle="modal">Okay</button>
                                
        
				            </div>
				            </div>
										
					  </div>
                </div>
                
                <div id="warning_modal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;" data-backdrop="static" data-keyboard="false">
                   <div class="modal-dialog">  													  
                       <div class="modal-content">
                           <div class="modal-header">
                               <i class="livicon pull-left" data-name="warning" data-size="35" data-loop="true" data-c="#f56954" data-hc="#f56954" title="Delete"></i>
                               
                               <h3 class="modal-title"><font color="#fff">%</font>Insufficient Stock</h3>
                            
                           </div>
                           <div class="modal-body">
										     
                            <p>
                             The number of items you want to issue is larger than the number in stock.
                             If there's really no item with the same name in stock, you can create Purchase Request
                             for that item.
                            </p>
                               
                            
                            
				            </div>
				            <div class="modal-footer">
                               
                                <button type="button" data-dismiss="modal" class="btn" data-toggle="modal">Cancel</button>
                                
                                <button onclick="location.href='transaction_purchase_request.html'" type="button" class="btn btn-primary" data-dismiss="modal">Create Purchase Request</button>
                                
				            </div>
				            </div>
										
					  </div>
                </div>
                
             <div id="add_modal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;">
                       <div class="modal-dialog modal-md">  											
                           <div class="modal-content">
                               <div class="modal-header">
                                   <button type="button" class="close" data-dismiss="modal">×</button>
                                   <h3 class="modal-title">Add New Item</h3>
                                   <p>Please fill the information needed.</p>
                               </div>
                               <div class="modal-body">
                                   <p>
                                   <label>Item Code</label>
                                    <input id="name12" name="name" type="text" class="form-control" placeholder="Item Code">
                                   </p>
                                   <p>
                                   <label>Item Name</label>
                                    <input id="name12" name="name" type="text" class="form-control" placeholder="Item Name">
                                   </p>
                                   <p>
                                   <label>Item Category</label>
                                    <input id="name12" name="name" type="text" class="form-control" placeholder="Item Category">
                                   </p>
                                   <p>
                                    <label>Quantity</label>
                                    <input id="name12" name="name" type="text" class="form-control" placeholder="Quantity">
                                   </p>
                                   <p>
                                    <label>Unit of Measurement</label>
                                                 <select id="single-prepend-text" class="form-control select2">
                                                <option value="1">ream(s)</option>
                                                <option value="2">piece(s)</option>
                                                <option value="3">box(es)</option>
                                            </select>
                                   </p>

                                    <button type="button" class="btn btn-success" data-dismiss="modal" data-toggle="modal" data-target="#warning_modal" style="margin-top: 20px; margin-bottom: 20px;">Save</button>



                                <div class="modal-footer">

                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                </div>
                                </div>

                          </div>
                    </div>
                </div>
            <div id="view_modal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;">
                   <div class="modal-dialog modal-lg">  													 
                       <div class="modal-content">
                           <div class="modal-header">
                               <button type="button" class="close" data-dismiss="modal">×</button>
                               <h3 class="modal-title">Warehouse Details</h3>
                               
                           </div>
                           <div class="modal-body">
                            
                    <div class="col-lg-0">
                        
                        <div class="panel panel-default filterable">
                            <div class="panel-body">
                            <button style="margin-top: 5px; margin-bottom: 20px" class="btn btn-effect btn-success" data-modal="modal-1" data-toggle="modal" data-dismiss="modal" href="#add_modal">
						<i class="fa fa-plus"></i>
					   Add New Item
						</button>
                                <table class="table table-striped table-bordered table-responsive" id="table1">
                                    <thead>
                                        <tr role="row">
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 30px;">Item Code</th>
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 30px;">Item Name</th>
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 30px;">Item Category</th>
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 20px;">Quantity</th>
                                            
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 5px;">UOM</th>
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 5px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr role="row" class="even">
                                            <td>AUG-2017-01</td>
                                            <td>Bond Paper</td>
                                            <td>Office Supplies</td>
                                            <td>200</td>
                                            <td>ream(s)</td>
                                            <td>
                                            <div align="center">
                                                     <button type="button" class="btn btn-info" data-toggle="modal" data-href="#transfer_modal" data-dismiss="modal" href="#transfer_modal" title="Transfer Item">
                                                  <span class="glyphicon glyphicon-map-marker"></span>
								              </button>
								              
                                                <button type="button" class="btn btn-effect btn-success" data-toggle="modal" data-dismiss="modal" href="#stack2"><span class="glyphicon glyphicon-log-out"></span></button>
								              
                                                
                                            </div>    
                                                </td>
                                                
                                               <tr role="row" class="even">
                                            <td>AUG-2017-01</td>
                                            <td>Ball Point Pen</td>
                                            <td>Office Supplies</td>
                                            <td>200</td>
                                            <td>ream(s)</td>
                                            <td>
                                            <div align="center">
                                                     <button type="button" class="btn btn-info" data-toggle="modal" data-href="#transfer_modal" data-dismiss="modal" href="#transfer_modal" title="Transfer Item">
                                                  <span class="glyphicon glyphicon-map-marker"></span>
								              </button>
								              
                                                <button type="button" class="btn btn-effect btn-success" data-toggle="modal" data-dismiss="modal" href="#stack2"><span class="glyphicon glyphicon-log-out"></span></button>
								              
                                                
                                            </div>    
                                                </td>
                                                 <tr role="row" class="even">
                                            <td>AUG-2017-01</td>
                                            <td>Coupon Bond</td>
                                            <td>Office Supplies</td>
                                            <td>200</td>
                                            <td>ream(s)</td>
                                            <td>
                                            <div align="center">
                                                     <button type="button" class="btn btn-info" data-toggle="modal" data-href="#transfer_modal" data-dismiss="modal" href="#transfer_modal" title="Transfer Item">
                                                  <span class="glyphicon glyphicon-map-marker"></span>
								              </button>
								              
                                                <button type="button" class="btn btn-effect btn-success" data-toggle="modal" data-dismiss="modal" href="#stack2"><span class="glyphicon glyphicon-log-out"></span></button>
								              
                                                
                                            </div>    
                                                </td>
                                                 <tr role="row" class="even">
                                            <td>AUG-2017-01</td>
                                            <td>Oslo Paper</td>
                                            <td>Office Supplies</td>
                                            <td>200</td>
                                            <td>ream(s)</td>
                                            <td>
                                            <div align="center">
                                                     <button type="button" class="btn btn-info" data-toggle="modal" data-href="#transfer_modal" data-dismiss="modal" href="#transfer_modal" title="Transfer Item">
                                                  <span class="glyphicon glyphicon-map-marker"></span>
								              </button>
								              
                                                <button type="button" class="btn btn-effect btn-success" data-toggle="modal" data-dismiss="modal" href="#stack2"><span class="glyphicon glyphicon-log-out"></span></button>
								              
                                                
                                            </div>    
                                                </td>
                                                 <tr role="row" class="even">
                                            <td>AUG-2017-01</td>
                                            <td>Marker</td>
                                            <td>Office Supplies</td>
                                            <td>200</td>
                                            <td>ream(s)</td>
                                            <td>
                                            <div align="center">
                                                     <button type="button" class="btn btn-info" data-toggle="modal" data-href="#transfer_modal" data-dismiss="modal" href="#transfer_modal" title="Transfer Item">
                                                  <span class="glyphicon glyphicon-map-marker"></span>
								              </button>
								              
                                                <button type="button" class="btn btn-effect btn-success" data-toggle="modal" data-dismiss="modal" href="#stack2"><span class="glyphicon glyphicon-log-out"></span></button>
								              
                                                
                                            </div>    
                                                </td>
                                          
                                            </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                                     </div>
                           <br>
				            <div class="modal-footer">
                               
                                <button type="button" class="btn btn-default" data-dismiss="modal" class="btn">OK</button>
                               
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
   <!-- editable table -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/select2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-editable.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/imgcrop/jquery.Jcrop.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/imgcrop/jquery.color.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/imgcrop/cropcustom.js"></script>
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