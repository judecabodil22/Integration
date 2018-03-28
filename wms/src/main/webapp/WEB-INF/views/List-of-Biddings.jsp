<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<%@include file="head.jsp" %>

<body class="skin-josh">
   
    <%@include file="header.jsp" %>
    
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <%@include file="includes/sidebar.jsp" %>
        
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Bidding</h1>
				<p> Please fill-out the information needed. </p>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="truck" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Logistics - Procurement
                        </a>
                    </li>
                                 <li class="active">
                        <a href="item-category">
                            <i class="livicon" data-name="gears" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            System Setup - Bidding
                        </a>
                    </li>
                </ol>
            </section>
           
           <section class="content paddingleft_right15">
            	<div class="row">
                    <div class="col-lg-15">
                        <div class="panel panel-success filterable">
                            <div class="panel-heading clearfix  ">
                               
                                <div class="panel-title pull-left">
                                       <div class="caption">
                                    <i class="livicon" data-name="thumbnails-big" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Bidding
                                    </div>
                                </div>
                                <div>
                                <div class="pull-right"></div></div>
                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table1">
                                  <thead>
                                        <tr>
                                        	
                                        	
                                        		<th>Id</th>
                                            <th>Pr Code</th>
                                            <th>Set Date</th>
                                          
                                        
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="b" items="${list}">
                                        <tr>
                                        
                                        	<td>${b.biddingId}</td>
                                        	<td>${b.prId }</td>
                                        	
                                        	<td>${b.startDate}</td>
                                        	
                                        	
                                        	  </tr>
                                        </c:forEach>
                                       
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    
                
                <!--/row-->
            </section>                        
                    </div>
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
    <!-- end of page level js -->
    
    <script>
    
    $('#modalupdate').on('show.bs.modal', function (e) {
    	  // get information to update quickly to modal view as loading begins
    	  var opener=e.relatedTarget;//this holds the element who called the modal
    	   
    	  //we get details from attributes
    	  var biddingdesc=$(opener).attr('bidding-desc');
    	  var startdate=$(opener).attr('start-date');
    	  var enddate=$(opener).attr('end-date');
    	  var biddingdetails=$(opener).attr('bidding-details');
    	  var biddingid=$(opener).attr('bidding-id');

    	  //set what we got to our form
      	$('#updateForm').find('[id="biddingdesc"]').val(biddingdesc);
      	$('#updateForm').find('[id="startdate"]').val(startdate);
      	$('#updateForm').find('[id="enddate"]').val(enddate);
      	$('#updateForm').find('[id="biddingdetails"]').val(biddingdetails);
    	  
    	  
    	});
    
    function confirmDelete(x){
		if(confirm("Are you sure you want to delete this bidding?") == true){
			window.location.href = 'bidding/delete/'+x;
		}
		else{
			
		}
	}
    
    </script>
        
    </div>  
</body>
</html>
