<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<style>

.round {
    width: 100%;
    border-radius: 15px;
    border: 1px #41625f solid;
    padding: 5px 5px 5px 10px;
    top: 0;
    left: 0;
    z-index: 5;
}

</style>

<header class="header">
        <a href="index" class="logo">
            <img src="${pageContext.request.contextPath}/resources/img/splash3.png" alt="Logo" height="38px" width="150px">
        </a>		
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
			<div>
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button" style="background-color:#515763;">
                    <div class="responsive_nav">
                    </div>
                </a>
            </div>
            <div class="navbar-right">
            
            
         	<form class="navbar-form navbar-left" role="search" style="width:325px; margin-right:250px;">
       		 	 <div class="form-group input-group">
                            <input type="text" class="form-control" placeholder="Search" style="width:250px;">
                            <span class="input-group-btn">
                                 <button class="btn btn-default" type="button">
                                     <i class="fa fa-search"></i>
                                 </button>
                           </span>
                  </div>
		         
		   </form>
		   
           <ul class="nav navbar-nav">
            <!--USER MENU-->
            					<li  class="dropdown-messages-menu">
										<a href="" class="dropdown-toggle" data-toggle="dropdown">
											<i class="livicon" data-name="message-flag" data-size="28" data-c="#ffffff" data-hc="#ffffff" data-loop="true" title="Messages"></i>
											<span class="label label-primary">4</span>
										</a>
								</li>	
								
								 <li  class="dropdown-messages-menu">
										<a href="" class="dropdown-toggle" data-toggle="dropdown">
											<i class="livicon" data-name="bell" data-size="28" data-c="#ffffff" data-hc="#ffffff" data-loop="true" title="Notifications"></i>
											<span class="label label-danger">5</span>
										</a>
								</li>	
								
			                     <li class="dropdown user user-menu">
			                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
			                            <img src="${pageContext.request.contextPath}/resources/img/PUPLogo.png" width="35" class="img-circle img-responsive pull-left" height="35" alt="riot">
			                            <div class="riot">
			                                <div>
			                                    Admin
			                                    <span>
			                                        <i class="caret"></i>
			                                    </span>
			                                </div>
			                            </div>
			                        </a>
			                        
			                        <ul class="dropdown-menu">
			                            <!-- User image -->
			                            <li class="user-header bg-light-blue">
			                                <img src="${pageContext.request.contextPath}/resources/img/PUPLogo.png" class="img-responsive img-circle" alt="User Image">
			                                <p class="topprofiletext"></p>
			                            </li>
			                            <!-- Menu Body -->
			                            <li>
			                                <a href="#">
			                                    <i class="livicon" data-name="user" data-s="18"></i>
			                                    My Profile
			                                </a>
			                            </li>
			                            <li role="presentation"></li>
			                            <li>
			                                <a href="#">
			                                    <i class="livicon" data-name="gears" data-s="18"></i>
			                                    Account Settings
			                                </a>
			                            </li>
			                            <!-- Menu Footer-->
			                            <li class="user-footer">
			                                <div class="pull-left">
			                                    <a href="lockscreen.html">
			                                        <i class="livicon" data-name="lock" data-s="18"></i>
			                                        Lock
			                                    </a>
			                                </div>
			                                <div class="pull-right">
			                                    <a href="login">
			                                        <i class="livicon" data-name="sign-out" data-s="18"></i>
			                                        Logout
			                                    </a>
			                                </div>
			                            </li>
			                        </ul>
			                    </li>
                    </ul>
            
            </div>
            
        </nav>
    </header>
    
    