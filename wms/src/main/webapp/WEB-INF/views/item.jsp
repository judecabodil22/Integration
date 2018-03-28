<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>

	<%@include file="head.jsp" %>

<body class="skin-josh">

    <%@include file="header.jsp" %>
    
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <%@include file="includes/sidebar.jsp" %>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Item</h1>
				
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="truck" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                           	Logistics - Procurement
                        </a>
                    </li>
                   
                    <li class="active">
                        <a href="item.html">
                            <i class="livicon" data-name="gears" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            System Setup - Item
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
                                    Item
                                    </div>
                                </div>
                                <div>
                                <div class="pull-right"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modaladd"><span ></span> Add Item </a></div></div>
                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table1">
                                     <thead>
                                        <tr>
                                        	
                                        	<th>Stock No.</th>
                                        	<th>Item</th>
                                        
                                        	<th>Quantity</th>
                                        
                                        	<th>Critical</th>
                                        	<th>Category</th>
                                        <!-- <th>Warehouse</th> -->	
                                            <th></th>
                                            <th></th>
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="i" items="${list}">
                                        <tr>
                                        
                                        	<td>${i.itemId}</td>
                                        	<td>${i.itemName}</td>
                                        	
                                        	<td>${i.uomQty}</td>
                                        	
                                        	<td>${i.qtyCritical}</td>
                                        	<td>${i.itemCategory}</td>
                                        	<!-- <td>${i.warehouseName }</td> -->
                                        	<td style="width: 20px;"><a href="#" class="btn btn-warning" data-toggle="modal" data-target="#modalupdate" item-name="${i.itemName }" item-desc="${i.itemDesc }" item-qty="${i.itemQty }" item-uom="${i.uomId }" qty-critical="${i.qtyCritical }" item-category="${i.categoryId }" item-id="${i.itemId }" ><span class="glyphicon glyphicon-pencil"></span> </a></td>	                                     
                                          
                                            <td style="width: 20px;"> <a href="#"  class="btn btn-danger" onclick="confirmDelete(${i.itemId})"><span class="glyphicon glyphicon-trash" ></span> </a></td>
                         
                                          
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
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
                                               Item
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                    
                                                <form:form class="form-horizontal" method="post" action="item/save" modelAttribute="item">
                                                <fieldset>

                                                <!-- Form Name -->
                                                <legend>Add Item</legend>
										
                                                 <!-- Text input Item-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Item</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="item" name="item" type="text" placeholder="Item name" class="form-control input-md" required="" path="itemName"/>
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
                                                  <form:input id="quantity" name="quantity" type="number" placeholder="Quantity" class="form-control input-md" required="" path="itemQty"/>
                                                  </div>
                                                </div>
                                                
                                            
                                                
                                                     <div class="form-group">
                                                      <label class="col-md-4 control-label" for="dept">Unit of Measurement</label>
                                                      <div class="col-md-5">
                                                      	
                                                        <form:select path="uomId" id="itemuom" name="itemuom" class="form-control">
                                                          <c:forEach var="u" items="${list2 }">
                                                          <option value="${u.uomId }">${u.uomName }</option>
                                                          </c:forEach>
                                                        </form:select>
                                                        
                                                      </div>
                                                    </div>
                                                
                                                 <!-- Text input critical-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Critical</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="qtycritical" name="qtycritical" type="number" placeholder="Critical" class="form-control input-md" required="" path="qtyCritical"/>
                                                  </div>
                                                </div>
                                                
                                                 <!-- Text input category
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Category</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="category" name="category" type="text" placeholder="Category" class="form-control input-md" required="" path="categoryId"/>
                                                  </div>
                                                </div>
                                                -->
                                               
                                                     <div class="form-group">
                                                      <label class="col-md-4 control-label" for="dept">Category</label>
                                                      <div class="col-md-5">
                                                      	
                                                        <form:select path="categoryId" id="category" name="category" class="form-control">
                                                          <c:forEach var="u" items="${list1 }">
                                                          <option value="${u.categoryId }">${u.categoryName }</option>
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
                                
                                
                                <div class="modal fade" id="modalupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    <i class="fa fa-plus"></i>
                                                Item 
                                                </h4>
                                            </div>
                                            
                                            <div class="modal-body">
                    
                                                <form:form class="form-horizontal" id="updateForm" method="post" action="item/edit" modelAttribute="item">
                                                <fieldset>
                                                <!-- Form Name -->
                                                <legend>Update Item</legend>
												<form:hidden path="itemId" id="itemid"></form:hidden>
                                          
                                                 <!-- Text input Item-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Item</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="itemname" name="item" type="text" placeholder="Item name" class="form-control input-md" required="" path="itemName"/>
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
                                                  <form:input id="itemqty" name="quantity" type="number" placeholder="Quantity" class="form-control input-md" required="" path="itemQty"/>
                                                  </div>
                                                </div>
                                                
                                                
                                                
                                                 <!-- Text input uom
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Unit of Measurement</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="itemuom" name="uom" type="text" placeholder="Unit of Measurement" class="form-control input-md" required="" path="uomId"/>
                                                  </div>
                                                </div>
                                                -->
                                                
                                                     <div class="form-group">
                                                      <label class="col-md-4 control-label" for="dept">Unit of Measurement</label>
                                                      <div class="col-md-5">
                                                        <form:select path="uomId" id="itemuom" name="itemuom" class="form-control">
                                                          <c:forEach var="u" items="${list2 }">
                                                          <option value="${u.uomId }">${u.uomName }</option>
                                                          </c:forEach>
                                                        </form:select>
                                                      </div>
                                                    </div>
                                                
                                                    <!-- Text input critical-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Critical</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="qtycritical" name="qtycritical" type="number" placeholder="Critical" class="form-control input-md" required="" path="qtyCritical"/>
                                                  </div>
                                                </div>
                                                
                                                 <!-- Text input category
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Category</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="itemcategory" name="category" type="text" placeholder="Category" class="form-control input-md" required="" path="categoryId"/>
                                                  </div>
                                                </div>
                                                -->
                                                
                                                     <div class="form-group">
                                                      <label class="col-md-4 control-label" for="dept">Category</label>
                                                      <div class="col-md-5">
                                                        <form:select path="categoryId" id="category" name="category" class="form-control">
                                                          <c:forEach var="u" items="${list1 }">
                                                          <option value="${u.categoryId }">${u.categoryName }</option>
                                                          </c:forEach>
                                                        </form:select>
                                                      </div>
                                                    </div>
                                                    
                                                    <!--  
                                                     <div class="form-group">
                                                      <label class="col-md-4 control-label" for="dept">Department</label>
                                                      <div class="col-md-5">
                                                        <form:select path="warehouseId" id="warehouseid" name="warehouse" class="form-control">
                                                          <c:forEach var="w" items="${list3 }">
                                                          <option value="${w.warehouseId }">${w.warehouseName }</option>
                                                          </c:forEach>
                                                        </form:select>
                                                      </div>
                                                    </div>
														-->


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
                <!--/row-->
            </section>
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

   	  	  var itemname=$(opener).attr('item-name');
   	  	  var itemdesc=$(opener).attr('item-desc');
		  var itemqty=$(opener).attr('item-qty');
		  var itemuom=$(opener).attr('item-uom');
		  var qtycritical=$(opener).attr('qty-critical');
		  var itemcategory=$(opener).attr('item-category');
		  var warehouseid=$(opener).attr('warehouseid');
		  var itemid=$(opener).attr('item-id');
		  

   	  //set what we got to our form
	  	 
		  $('#updateForm').find('[id="itemname"]').val(itemname);
		  $('#updateForm').find('[id="itemdesc"]').val(itemdesc);
		  $('#updateForm').find('[id="itemqty"]').val(itemqty);
		
			 $('#updateForm').find('[id="itemuom"] option[value="'+itemuom+'"]').val(itemuom).attr("selected","selected");
		  $('#updateForm').find('[id="qtycritical"]').val(qtycritical);
		
			 $('#updateForm').find('[id="itemcategory"] option[value="'+itemcategory+'"]').val(itemcategory).attr("selected","selected");
     	$('#updateForm').find('[id="itemid"]').val(itemid);
     	 $('#updateForm').find('[id="warehouseid"] option[value="'+warehouseid+'"]').attr("selected","selected");
     });
     
   
    function confirmDelete(x){
			if(confirm("Are you sure you want to delete this item?") == true){
				window.location.href = 'item/delete/'+x;
			}
			else{
				
			}
		}
    </script>
  
    </div>
 	
</body>
</html>
