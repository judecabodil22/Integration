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
                <h1>Supplier</h1>
				
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="truck" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Logistics - Procurement
                        </a>
                    </li>
                   
                    <li class="active">
                        <a href="supplier">
                            <i class="livicon" data-name="gears" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            System Setup - Supplier
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
                                    Supplier
                                    </div>
                                </div>
                                <div>
                                <div class="pull-right"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modaladd"><span ></span> Add Supplier </a></div></div>
                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>
                                        	
                                        	<th>Supplier Name</th>
                                        	<th>Contact Person Name</th>
                                        	<th>Position</th>
                                            <th>Email</th>
                                            <th>Contact No.</th>
                                            <th>Line of Business</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="s" items="${list}">
                                        <tr>
                                        
                                        	<td>${s.supplierName}</td>
                                        	<td>${s.supplierContactName}</td>
                                        	<td>${s.contactPosition}</td>
                                        	<td>${s.supplierEmail}</td>
                                        	<td>${s.supplierNumber}</td>
                                        	<td>${s.lineOfBusiness}</td>
                                        	
                                        	<td style="width: 20px;"><a href="#" class="btn btn-warning" data-toggle="modal" data-target="#modalupdate" supplier-name="${s.supplierName }" supplier-tin="${s.supplierTin }" contact-person="${s.supplierContactName }" contact-position="${s.contactPosition }" supplier-address="${s.supplierAddress }" supplier-email="${s.supplierEmail }" supplier-number="${s.supplierNumber }" line-business="${s.lineOfBusiness }" supplier-id="${s.supplierId }"><span class="glyphicon glyphicon-pencil"></span> </a></td>	                                     
                                          
                                            <td style="width: 20px;"> <a href="#"  class="btn btn-danger" onclick="confirmDelete(${s.supplierId})"><span class="glyphicon glyphicon-trash" ></span> </a></td>
                         
                                          
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
                                               Supplier
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                    
                                                <form:form class="form-horizontal" method="post" action="supplier/save" modelAttribute="supplier">
                                                <fieldset>

                                                <!-- Form Name -->
                                                <legend>Add Supplier</legend>
												
                                                
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Supplier Name</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="suppliername" name="suppliername" type="text" placeholder="Supplier Name" class="form-control input-md" required="" path="supplierName"/>
                                                  </div>
                                                </div>
                                               		
                                               		   <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Tin No.</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="suppliertin" name="suppliertin" type="text" required="" pattern="[0-9]{3}-[0-9]{2}-[0-9]{4}" placeholder="XXX-XX-XXXX"  class="form-control input-md" path="supplierTin"/>
                                                  </div>
                                                </div>
                                        
                                             
                                             
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Contact Person</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="contactperson" name="contactperson" type="text" required=""  placeholder="Contact Person" class="form-control input-md" path="supplierContactName"/>
                                                  </div>
                                                </div>
                                                
                                              
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Position</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="contactposition" name="contactposition" type="text" placeholder="Position" class="form-control input-md" required="" path="contactPosition"/>
                                                  </div>
                                                </div>
                                                
                                                 
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Address</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="supplieraddress" name="supplieraddress" type="text" placeholder="Address" class="form-control input-md" required="" path="supplierAddress"/>
                                                  </div>
                                                </div>
                                                
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Email</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="supplieremail" name="supplieremail" type="text" placeholder="Email" class="form-control input-md" required="" path="supplierEmail"/>
                                                  </div>
                                                </div>
                                                
                                               
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Contact Number</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="suppliernumber" name="suppliernumber" type="number" placeholder="Contact Number" class="form-control input-md" required="" path="supplierNumber"/>
                                                  </div>
                                                </div>
                                                
                                                 
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Line of Business</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="linebusiness" name="linebusiness" type="text" placeholder="Line of Business" class="form-control input-md" required="" path="lineOfBusiness"/>
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
                                                Supplier
                                                </h4>
                                            </div>
                                            
                                            <div class="modal-body">
                    
                                                <form:form class="form-horizontal" id="updateForm" method="post" action="supplier/edit" modelAttribute="supplier">
                                                <fieldset>
                                                <!-- Form Name -->
                                                <legend>Update Supplier</legend>
												<form:hidden path="supplierId" id="supplierid"></form:hidden>
                                          
                                                 <!-- Text input suppliername-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Supplier Name</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="suppliername" name="supplier" type="text" placeholder="Supplier name" class="form-control input-md" required="" path="supplierName"/>
                                                  </div>
                                                </div>
                                                
                                                
                                                
                                                 <!-- Text input tin-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">TIN</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="suppliertin" name="tin" type="text" placeholder="Tin" class="form-control input-md" required="" path="supplierTin"/>
                                                  </div>
                                                </div>
                                                
                                                
                                                
                                                 <!-- Text input contact person-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Contact Person</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="contactperson" name="contactperson" type="text" placeholder="Contact Person" class="form-control input-md" required="" path="supplierContactName"/>
                                                  </div>
                                                </div>
                                                
                                                    <!-- Text input position-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Position</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="contactposition" name="position" type="text" placeholder="Position" class="form-control input-md" required="" path="contactPosition"/>
                                                  </div>
                                                </div>
                                                
                                                 <!-- Text input address-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Address</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="supplieraddress" name="address" type="text" placeholder="Address" class="form-control input-md" required="" path="supplierAddress"/>
                                                  </div>
                                                </div>
                                                
                                                <!-- Text input email-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Email</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="supplieremail" name="email" type="text" placeholder="Email" class="form-control input-md" required="" path="supplierEmail"/>
                                                  </div>
                                                </div>
                                                
                                                <!-- Text input number-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Contact No.</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="suppliernumber" name="number" type="number" placeholder="Number" class="form-control input-md" required="" path="supplierNumber"/>
                                                  </div>
                                                </div>
                                                
                                                <!-- Text input line of business-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Line of Business</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="linebusiness" name="linebusiness" type="text" placeholder="Line of business" class="form-control input-md" required="" path="lineOfBusiness"/>
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
   	  	  var suppliername=$(opener).attr('supplier-name');
   	  	  var suppliertin=$(opener).attr('supplier-tin');
		  var contactperson=$(opener).attr('contact-person');
		  var contactposition=$(opener).attr('contact-position');
		  var supplieraddress=$(opener).attr('supplier-address');
		  var supplieremail=$(opener).attr('supplier-email');
		  var suppliernumber=$(opener).attr('supplier-number');
		  var linebusiness=$(opener).attr('line-business');
		  var supplierid=$(opener).attr('supplier-id');
		  

   	  //set what we got to our form
	  	  $('#updateForm').find('[id="suppliername"]').val(suppliername);
		  $('#updateForm').find('[id="suppliertin"]').val(suppliertin);
		  $('#updateForm').find('[id="contactperson"]').val(contactperson);
		  $('#updateForm').find('[id="contactposition"]').val(contactposition);
		  $('#updateForm').find('[id="supplieraddress"]').val(supplieraddress);
		  $('#updateForm').find('[id="supplieremail"]').val(supplieremail);
		  $('#updateForm').find('[id="suppliernumber"]').val(suppliernumber);
		  $('#updateForm').find('[id="linebusiness"]').val(linebusiness);
     	$('#updateForm').find('[id="supplierid"]').val(supplierid);
   	});
     
    function confirmDelete(x){
			if(confirm("Are you sure you want to delete this supplier?") == true){
				window.location.href = 'supplier/delete/'+x;
			}
			else{
				
			}
		}
    </script>
  
    </div>
 	
</body>
</html>
