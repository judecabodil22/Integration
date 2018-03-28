<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <!-- Left side column. contains the logo and sidebar -->
	<aside class="left-side sidebar-offcanvas offcanvas-left" style="background-color:#515763;">
            <section class="sidebar">
                <div class="page-sidebar  sidebar-nav" style="background-color:#515763;">
                    <div class="clearfix"></div>
                    
                     &nbsp;
                     <div align="center">
                     <img src="${pageContext.request.contextPath}/resources/img/PUPLogo.png" width="70" class="img-circle img-responsive" height="70" alt="admin">
                     <h5 class="topprofiletext" style="color:white; padding-left:15px;"></h5>
                     <p>
                     <span class="topprofiletext" style="color:white; font-size:11px; padding-left:15px;">Administrator</span>
                     </div>
                   	 &nbsp;  
                   	 <h6 style="color:white">&nbsp;&nbsp;General</h6>
                    
                    <!-- BEGIN SIDEBAR MENU -->
					<ul id="menu" class="page-sidebar-menu">
    
                        
                        <li>
                            <a href="">
                                <i  class="livicon"  data-name="gears" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">System Configuration</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                    <li>
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Human Resource</span>
                                        </a>
                                        </li>
                                        </ul>
                            <ul class="sub-menu">
                                    <li>
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Logistics</span>
                                        </a>
                                        
                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="add-asset">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Add Asset</span>
                                            </a>
                                            </li>
                                            
                                            <li>
                                                <a href="add-custodian">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Add Custodian</span>
                                            </a>
                                            </li>
                                            
                                            <li>
                                                <a href="add-costgroup">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Add Cost Group</span>
                                            </a>
                                            </li>
                                            
                                            
                                            <li>
                                                <a href="warehouse-setup">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Setup Warehouse</span>
                                            </a>
                                            </li>
                                            
                                       <li>
                                                <a href="item-category">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Item Category</span>
                                            </a>
                                            </li>
                                               
                                            <li>
                                                <a href="unit-of-measurement">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Unit of Measurement</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="item">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Item</span>
                                            </a>
                                            </li>


                                            <li>
                                                <a href="supplier">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Supplier</span>
                                            </a>
                                            </li>
                                            
                                          </ul>
                                        </li>
                                        </ul>
                            <ul class="sub-menu">
                                    <li>
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Financials</span>
                                        </a>
                                        </li>
                                        </ul>
                        </li>
                        
                            
                        <li>
                             <a href="">
                                <i class="livicon"  data-name="settings" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">User Management</span>
                            </a>
                        </li>

                        
                        <li>
                             <a href="">
                                <i class="livicon" data-name="wrench" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">Settings</span>
                            </a>
                        </li>

                        <br>
                        <h6 style="color:white">&nbsp;&nbsp;Modules</h6>

                        <li>
                            <a href="">
                                <i class="livicon" data-name="users" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">Human Resource</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                    <li>
                                        <a href="ss_manage evaluators.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Core HR</span>
                                        </a>

                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Core Human Capital Management</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>
                                        
                                        </ul>

                                    </li>
                                </ul>
                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_manage evaluations criteria.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Time and Attendance</span>
                                        </a>


                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Time and Attendance</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Leave Management</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Shift and Scheduling</span>
                                            </a>
                                            </li>

                                            <li >
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Claims and Reimbursements</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Timesheet Management</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>

                                        </ul>
                                    </li>                                       
                                </ul>


                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_manage evaluations criteria.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Payroll</span>
                                        </a>


                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Payroll</span>
                                            </a>
                                            </li>


                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Compensation Planning and Administration</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>

                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_manage evaluations criteria.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Talent Management</span>
                                        </a>
                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Competency Management</span>
                                            </a>
                                            </li>


                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Training Management</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Succession Planning</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Performance Management</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Social Recognition</span>
                                            </a>
                                            </li>
                                            
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>

                                        </ul>
                                    </li>                                       
                                </ul>


                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_manage evaluations criteria.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Recruitment</span>
                                        </a>


                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Recruitment</span>
                                            </a>
                                            </li>


                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Applicant Management</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">New Hire on Board</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>

                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_manage evaluations criteria.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Planning and Analytics</span>
                                        </a>


                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Succession Planning</span>
                                            </a>
                                            </li>


                                            <li >
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">HR Analytics</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            </a>
                                            </li>

                                        </ul>
                                    </li>                                       
                                </ul>
                       </li>
                       
                        
                       <li>
                            <a href="">
                                <i class="livicon" data-name="truck" data-size="18"  data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">Logistics</span>
                                <span class="fa arrow"></span>
                            </a>
                             <ul class="sub-menu">
                                    <li class="">
                                        <a href="ss_manage evaluators.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Procurement</span>
                                        </a>
                                        <ul class = "sub-menu">
                                           <li>
                                                <a href="prtry">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Purchase Request Form</span>
                                            </a>
                                            </li>
                                             <li>
                                                <a href="P-R-Approve">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Approved Purchase Request</span>
                                            </a>
                                            </li>
                                          
                                           
                                                <li>
                                                <a href="bidding">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Bidding</span>
                                            </a>
                                            </li>
                                       
                                            <li>
                                                <a href="bids">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Bids</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="notice-of-award">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Notice of Awards</span>
                                            </a>
                                            </li>
                                              <li>
                                                <a href="purchase-order">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Purchase Order Form</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_manage evaluations criteria.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Warehouse Management</span>
                                        </a>
                                        <ul class = "sub-menu">
                                           
                                            
                                            <li>
                                                <a href="warehouse-list">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Warehouse Items</span>
                                            </a>
                                            </li>
											<li>
                                                <a href="transaction-receive2">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Item Delivery</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="transaction-inspect2">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Item Inspection</span>
                                            </a>
                                            </li>
                                                 </ul>
                                    </li>                                       
                                </ul>

                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_users.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Asset Management</span>
                                        </a>
                                    <ul class = "sub-menu">
                                            <li>
                                                <a href="adding-asset">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Add Asset</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="assign-asset">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Request Asset</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="receive-asset">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Request for inspection</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="for-inspections">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">For Inspection</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="transfer-asset">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Transfer Asset</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="repair-asset">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Repair Asset</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="pullout-asset">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Pull Out Asset</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>
                                 <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_users.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Queries</span>
                                        </a>
                                        <ul class = "sub-menu">
                                           <li>
                                                <a href="list-of-purchase-request">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">List of Purchase Request </span>
                                            </a>
                                            </li>
                                             <li>
                                                <a href="List-of-Biddings">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">List of Bidding </span>
                                            </a>
                                            </li>
                                              <li>
                                                <a href="list-of-purchase-order">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">List of Purchase Order </span>
                                            </a>
                                            </li>
                                              <li>
                                                <a href="List-of-Supplier">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">List of Supplier </span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="assetinventory">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Asset Inventory</span>
                                            </a>
                                            </li>
                                            
                                        </ul>
                                    </li>                           
                                </ul>
                                 <ul class="sub-menu">   
                                    <li class="">
                                        <a href="ss_users.html">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Reports</span>
                                        </a>
                                    <ul class = "sub-menu">
                                            <li>
                                                <a href="pr-report">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">List of Purchase Request </span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="report">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">List of Purchase Order</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Fast-Moving Items</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Slowing-Moving Items</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Item History</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Acquisition Summary</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Work Order Summary</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Transfer Summary</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Disposal Summary</span>
                                            </a>
                                            </li>
                                            <li>
                                                <a href="ss_manage evaluators.html">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Retirement Summary</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>                                       
                                </ul>
                       </li>
                       
                            
                        <li>
                            <a href="">
                                <i class="livicon" data-name="money" data-size="18"  data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">Financials</span>
                                <span class="fa arrow"></span>
                            </a>
                            
                               <ul class="sub-menu">   
                                    <li class="">
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Journal Entry Voucher</span>
                                        </a>

                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Create JEV</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Review JEV</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>

                                 <ul class="sub-menu">
                                    <li class="">
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Collections</span>
                                        </a>

                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Accounts Receivable</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Collection</span>
                                            </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>

                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Disbursement</span>
                                        </a>

                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Accounts Payable</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Disbursement</span>
                                            </a>
                                            </li>
                                         </ul>
                                    </li>
                                </ul>
                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Queries</span>
                                        </a>
                                    </li>
                                 </ul>
                                
                                <ul class="sub-menu">   
                                    <li class="">
                                        <a href="">
                                        <i class="fa fa-angle-double-right"></i>
                                        <span class="title">Reports</span>
                                        </a>

                                        <ul class="sub-menu">   
                                            <li class="">
                                            <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Trial Balance</span>
                                            </a>

                                        <ul class = "sub-menu">
                                            <li>
                                                <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Unadjasted Trial Balance</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Pre-Closing Trial Balance</span>
                                            </a>
                                            </li>

                                            <li>
                                                <a href="">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Post-Closing Trial Balance</span>
                                            </a>
                                            </li>
                                         </ul>
                                    </li>
                                </ul>
                                    </li>
                                </ul>      
                            
                       </li>
                        </ul>
                       
                        
                        
                       
					
                     <!-- END SIDEBAR MENU -->
                    
                </div>
            </section>
            <!-- /.sidebar -->
        </aside>