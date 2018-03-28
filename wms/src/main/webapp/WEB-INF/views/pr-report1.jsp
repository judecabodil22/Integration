<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<style type="text/css">
	 table.center {
    margin-left: auto;
    margin-right: auto;
}

	
	td { 
    padding: 10px;
}
	
	
	</style>
	
	<title> List of Approved</title>
	   
</head>

<body onload="window.print();">

   
    

              <section class="content paddingleft_right15">
            	<div class="row">
                    <div class="col-lg-15">
                        <div class="panel panel-success filterable">
                          
                            <div class="panel-body">
                                <table class="center" >
                                   <thead>
                                      
                                      <tr>
                                        	
                                        	<th>PR Code.</th>
                                       
                                        	<th>Item Name</th>
                                        
                                        	<th>Quantity</th>
                                            <th>Unit Cost</th>
                                            <th>Total Cost</th>
                                            <th>Requested By:</th>
                                            <th>Request Date</th>
                                            <th>Purpose</th>
                                         
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="r" items="${list}">
                                        <tr>
                                        
                                        	<td>${r.prCode}</td>
                                       
                                        	<td>${r.itemName}</td>
                                       
                                        	<td>${r.uomQty}</td>                                
                                        	<td>${r.unitCost}</td>
                                        	<td>${r.totalCost}</td>
                                        	<td>${r.requestedBy}</td>
                                        	<td>${r.requestDate}</td>
                                        	<td>${r.purpose}</td>

                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                        </div>
                            </div>
                        
                        
                        <!-- END SAMPLE TABLE PORTLET-->
                       
                        
                        
                     
                    
                    </div>
                    
                 </section>   
        </aside>
        <!-- right-side -->
    </div>
    
 
    
    
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
    <!-- end of page level js -->
    
    

   
  
</body>
</html>
