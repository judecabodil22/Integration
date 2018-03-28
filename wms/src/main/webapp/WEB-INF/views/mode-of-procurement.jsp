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
        
       <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
           <section class="content-header">
                <!--section starts-->
                <h1>Mode of Procurement</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="index">
                            <i class="livicon" data-name="truck" data-size="15" data-loop="true"></i>
                            Logistics - Procurement
                        </a>
                    </li>
                    <li>
                                     <li class="active">
                        <a href="item-category">
                            <i class="livicon" data-name="gears" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            System Setup - Mode of Procurement
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
                                    Mode of Procurement
                                    </div>
                                </div>
                                <div>
                                <div class="pull-right"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modaladd"><span ></span> Add Mode of Procurement</a></div></div>
                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="table1">
                                    <thead>
                                        <tr>
                                        	
                                        	<th>Mode of Procurement</th>
                                            <th>Action</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="m" items="${list}">
                                        <tr>
                                        	
                                        	<td>${m.mopType}</td>
 											 <td style="width: 20px;"><a href="#" class="btn btn-warning" data-toggle="modal" data-target="#modalupdate" procurement-mode="${m.mopType}" mop-id="${m.mopId }"><span class="glyphicon glyphicon-pencil"></span> </a></td>	                                     
                                                                             
                                            <td style="width: 20px;"> <a href="#"  class="btn btn-danger" onclick="confirmDelete(${m.mopId})"><span class="glyphicon glyphicon-trash" ></span> </a></td>
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
                                               Mode of Procurement
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                    
                                                <form:form class="form-horizontal" method="post" action="mode-of-procurement/save" modelAttribute="mop">
                                                <fieldset>

                                                <!-- Form Name -->
                                                <legend>Add Mode of Procurement</legend>

                                                <!-- Text input-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Mode of Procurement</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="procurementmode" name="procurementmode" type="text" placeholder="Mode of Procurement" class="form-control input-md" required="" path="mopType"/>
                                                  </div>
                                                </div>

                                         

                                                <!-- Button (Double) -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                                  <div class="col-md-8">
                                                    <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">Submit</button>
                                                    
                                                  </div>
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
                                                Mode of Procurement
                                                </h4>
                                            </div>
                                            
                                            <div class="modal-body">
                    
                                                <form:form class="form-horizontal" id="updateForm" method="post" action="mode-of-procurement/edit" modelAttribute="mop">
                                                <fieldset>
                                                <!-- Form Name -->
                                                <legend>Update Mode of Procurement</legend>
												<form:hidden path="mopId" id="mopid"></form:hidden>
                                                 <!-- Text input-->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="deptname">Mode of Procurement</label>  
                                                  <div class="col-md-6">
                                                  <form:input id="procurementmode" name="procurementmode" type="text" placeholder="Mode of Procurement" class="form-control input-md" required="" path="mopType"/>
                                                  </div>
                                                </div>


                                              
                                                    
                                              

                                                <!-- Button (Double) -->
                                                <div class="form-group">
                                                  <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                                  <div class="col-md-8">
                                                    <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">Update</button>
                                                  </div>
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
  	  var procurementmode=$(opener).attr('procurement-mode');
  	  var mopid=$(opener).attr('mop-id');

  	  //set what we got to our form
	  	  $('#updateForm').find('[id="procurementmode"]').val(procurementmode);
    	$('#updateForm').find('[id="mopid"]').val(mopid);
  	});
    
    function confirmDelete(x){
			if(confirm("Are you sure you want to delete this mode of procurement?") == true){
				window.location.href = 'mode-of-procurement/delete/'+x;
			}
			else{
				
			}
		}
    </script>
    
	
	</div>
</body>
</html>