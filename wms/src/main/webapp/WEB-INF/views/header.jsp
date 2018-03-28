<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <header class="header">
        <a href="index" class="logo">
            
            
            <img src="${pageContext.request.contextPath}/resources/img/splash3.png" height="38px" width="150px">
        </a>        
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <div>
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <div class="responsive_nav"></div>
                </a>
            </div>
            <div class="navbar-right">
                <ul class="nav navbar-nav">
                        <!--NAVIGATION DASHBOARD-->
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="livicon" data-name="home" data-size="28" data-c="#ec7f7d" data-hc="#ec7f7d" data-loop="true" title="Human Resource"></i>
                            </a>
                        </li>               
                
                        <!--NAVIGATION REQUISITION AND SELECTION-->
                        
                        <!--NAVIGATION REPORTS-->                               
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="livicon" data-name="barchart" data-size="28" data-c="#5b9cd2" data-hc="#5b9cd2" data-loop="true" title="Reports"></i>
                            </a>
                        </li>

                    <!--USER MENU-->
                     <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="${pageContext.request.contextPath}/resources/img/PUPLogo.png" width="35" class="img-circle img-responsive pull-left" height="35" alt="riot">
                            <div class="riot">
                                <div>
                                    User
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
                                <p class="topprofiletext">User</p>
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
                                    <a href="login.html">
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