p<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
                                <div class="pull-right"></div></div>
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
                                        	
                                        	
                                          
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
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
