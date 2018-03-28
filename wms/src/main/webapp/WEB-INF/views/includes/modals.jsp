<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


			    <!--- assignshift model -->
                <div class="modal fade in" id="request" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title">File Requests</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-12">
                                          <div class="panel panel-primary" id="hidepanel1">
                         
                            <div class="panel-body">
                                <form class="form-horizontal" action="#" method="post">
                                    <fieldset>
                                     
										<!-- Email input-->
                                        <div class="form-group">
                                            <label class="col-md-3 control-label" for="email">Emp. No</label>
                                            <div class="col-md-7">
                                                <input id="email" name="email" type="text" placeholder="Employee No" class="form-control"></div>
                                        </div>
										
                                        <!-- Email input-->
                                        <div class="form-group">
                                            <label class="col-md-3 control-label" for="email">Name</label>
                                            <div class="col-md-7">
                                                <input id="email" name="email" type="text" placeholder="Name" class="form-control"></div>
                                        </div>
                                  
                                        <!-- Form actions -->
										  <div class="form-group">
                                            <label class="col-md-3 control-label" for="email">Department</label>
                                            <div class="col-md-7">
                                                <input id="email" name="email" type="text" placeholder="Department" class="form-control"></div>
                                        </div>
										
										      <!-- Message body -->
                                       <div class="form-group">
                                            <label class="col-md-3 control-label" for="email">Shift Type</label>
                                            <div class="col-md-7">
                                                <input id="email" name="email" type="text" placeholder="Shift Type" class="form-control"></div>
                                        </div>
										
										  <div class="form-group">
                                            <label class="col-md-3 control-label" for="email">Shift Time</label>
                                            <div class="col-md-7">
                                                <input id="email" name="email" type="text" placeholder="Shift Time" class="form-control"></div>
                                        </div>
                                      
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END modal-->
                			
   		 <div class="modal fade in" id="listsched" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">SCHEDULES</h4>
                            </div>
                            <div class="modal-body">
                            <table>
                            <thead>
                          			     <div class="btn-group">
                           				
                           				    <button type="button" class="btn btn-default" style="margin-bottom:7px;">Last Week</button>
		                                    <button type="button" class="btn btn-default" style="margin-bottom:7px;">This Week</button>
		                                    <button type="button" class="btn btn-default" style="margin-bottom:7px;">Next Week</button>
                           				 
                                		 </div>
                                		 <div class="btn-group">
                           				 <label class="col-md-12" for="email">Schedule for Sept 22 - Sept 29, 2017 </label>
                                		 </div>
                            </thead>
                            <tbody>
                            <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        <thead>
                                            <tr role="row">
	                                            <th style="width:150px">Sunday</th>
												<th style="width:150px">Monday</th>
                                                <th style="width:150px">Tuesday</th>
												<th style="width:150px">Wednesday</th>
												<th style="width:150px">Thursday</th>
												<th style="width:150px">Friday</th>
												<th style="width:150px">Saturday</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                        
                                                <td></td>
                                                <td>
                                                Office work<br>
                                                09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												<td>
												Office work<br>
												09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												<td>
												Office work<br>
												09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												<td>
												Office work<br>
												09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												<td>
												Office work<br>
												09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												 <td>
                                                </td>
                                            </tr>
                                            
                                        
                            			 </tbody>
	                           		 </table>		 
	                            </tbody>
                            </table>
                            
                            </div>
							
							 <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                            </div>
							
                        </div>
                    </div>
                </div>
                <!-- END modal-->
                
                <div class="modal fade in" id="listshift" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">SHIFTS</h4>
                            </div>
                            <div class="modal-body">
                            <table>
                            <thead>
                          			     <div class="btn-group">
                           				
                           				 <button type="button" class="btn btn-default" style="margin-bottom:7px;">Last Week</button>
		                                    <button type="button" class="btn btn-default" style="margin-bottom:7px;">This Week</button>
		                                    <button type="button" class="btn btn-default" style="margin-bottom:7px;">Next Week</button>
                           				 
                                		 </div>
                                		 <div class="btn-group">
                           				 <label class="col-md-12" for="email">Schedule for Sept 22 - Sept 29, 2017 </label>
                                		 </div>
                            </thead>
                            <tbody>
                            <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        <thead>
                                            <tr role="row">
	                                            <th style="width:150px">Sunday</th>
												<th style="width:150px">Monday</th>
                                                <th style="width:150px">Tuesday</th>
												<th style="width:150px">Wednesday</th>
												<th style="width:150px">Thursday</th>
												<th style="width:150px">Friday</th>
												<th style="width:150px">Saturday</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                        
                                                <td></td>
                                                <td>
                                                Office work<br>
                                                09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												<td>
												Office work<br>
												09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												<td>
												Office work<br>
												09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												<td>
												Office work<br>
												09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												<td>
												Office work<br>
												09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												 <td>
                                                </td>
                                            </tr>
                                            
                                        
                            			</tbody>
	                           		 </table>
	                            </tbody>
                            </table>
                            
                            </div>
							
							 <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                            </div>
							
                        </div>
                    </div>
                </div>
                <!-- END modal-->
    
   
            <div class="modal fade in" id="queries" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">QUERIES</h4>
                            </div>
                            <div class="modal-body">
                            <table>
                            <thead>
                          			     <div class="btn-group">
                           				
                           				 <button type="button" class="btn btn-default" style="margin-bottom:7px;">Last Week</button>
		                                    <button type="button" class="btn btn-default" style="margin-bottom:7px;">This Week</button>
		                                    <button type="button" class="btn btn-default" style="margin-bottom:7px;">Next Week</button>
                           				 
                                		 </div>
                                		 <div class="btn-group">
                           				 <label class="col-md-12" for="email">Schedule for Sept 22 - Sept 29, 2017 </label>
                                		 </div>
                            </thead>
                            <tbody>
                            <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        <thead>
                                            <tr role="row">
	                                            <th style="width:150px">Sunday</th>
												<th style="width:150px">Monday</th>
                                                <th style="width:150px">Tuesday</th>
												<th style="width:150px">Wednesday</th>
												<th style="width:150px">Thursday</th>
												<th style="width:150px">Friday</th>
												<th style="width:150px">Saturday</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                        
                                                <td></td>
                                                <td>
                                                Office work<br>
                                                09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												<td>
												Office work<br>
												09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												<td>
												Office work<br>
												09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												<td>
												Office work<br>
												09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												<td>
												Office work<br>
												09/23/2017<br>
                                                8:00am-4:00pm<br>
                                                <a href="#" class="text text-primary" >Details</a>
                                                </td>
												 <td>
                                                </td>
                                            </tr>
                                            
                                        
                            			</tbody>
                            </table>
                            			
                           				 
                            </tbody>
                            </table>
                            
	                           
                            </div>
							
							 <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                            </div>
							
                        </div>
                    </div>
                </div>
                <!-- END modal-->
                
                