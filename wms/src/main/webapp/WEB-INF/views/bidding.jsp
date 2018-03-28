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
                                <div class="pull-right"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modaladd"><span ></span> Add Bidding</a></div></div>
                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table1">
                                  <thead>
                                        <tr>
                                        	
                                        	
                                        	<th>Id</th>
                                            <th>Pr Code</th>
                                            <th>Set Date</th>
                                          
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="b" items="${list}">
                                        <tr>
                                        
                                        	<td>${b.biddingId}</td>
                                        	<td>${b.prId }</td>
                                        	
                                        	<td>${b.startDate}</td>
                                        	
                                        	
                                        	<td style="width: 20px;"><a href="#" class="btn btn-warning" data-toggle="modal" data-target="#modalupdate" bidding-desc="${b.biddingDesc}" start-date="${b.startDate }" end-date="${b.endDate }" bidding-details="${b.biddingDetails }" bidding-id="${b.biddingId }"><span class="glyphicon glyphicon-pencil"></span> </a></td>
                                        	
                                        	<td style="width: 20px;"> <a href="#"  class="btn btn-danger" onclick="confirmDelete(${b.biddingId})"><span class="glyphicon glyphicon-trash" ></span> </a></td>
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
                                               Bidding
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                    
                                                <form:form class="form-horizontal" method="post" action="bidding/save" modelAttribute="bidding">
                                                <fieldset>

                                                 <!-- Form Name -->
                                                <legend>Add Bidding</legend>
                                                
                                                   <!-- select PR CODE -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptdesc">PR Code</label>
                                                   <div class="col-md-6"> <form:select path="prId" id="prid" name="prid" class="form-control">
                                                          <c:forEach var="s" items="${list2 }">
                                                          <option value="${s.prId }">${s.prId}</option>
                                                          </c:forEach>
                                                        </form:select></div>
                                                </div>
										
                                                 <!-- Text input Item-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Set Date</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="startdate" name="desc" type="Date" placeholder="start date" class="form-control input-md" required="" path="startDate"/>
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
                                                Bidding
                                                </h4>
                                            </div>
                                            
                                             
                                            <div class="modal-body">
                    
                                                <form:form class="form-horizontal" id="updateForm" method="post" action="bidding/edit" modelAttribute="bidding">
                                                <fieldset>
                                                <!-- Form Name -->
                                                <legend>Update Bidding</legend>
												<form:hidden path="biddingId" id="biddingid"></form:hidden>
                                               
  											<!-- Textarea -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptdesc">Description</label>
                                                  <div class="col-md-6">                     
                                                    <form:textarea  rows="5" cols="200" class="form-control" id="biddingdesc" name="biddingdesc" path="biddingDesc"/>
                                                  </div>
                                                </div>
										
                                                 <!-- Text input Item-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Start Date</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="startdate" name="desc" type="date" placeholder="start date" class="form-control input-md" required="" path="startDate"/>
                                                  </div>
                                                </div>
                                                
                                              
                                                
                                                 <!-- Text input quantity-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">End Date</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="enddate" name="enddate" type="date" placeholder="End Date" class="form-control input-md" required="" path="endDate"/>
                                                  </div>
                                                </div>
                                                
                                         
                                             
                                                
                                                        <!-- Textarea -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptdesc">Details</label>
                                                  <div class="col-md-6">                     
                                                    <form:textarea  rows="5" cols="200" class="form-control" id="biddingdetails" name="biddingdetails" path="biddingDetails"/>
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
