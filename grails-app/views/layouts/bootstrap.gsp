<%@ page import="com.shrimali.crm.constants.AppConstant" contentType="text/html;charset=UTF-8" %>
<g:set var="currentUser" value="${applicationContext.springSecurityService.currentUser}"/>
<html>
<head>
    <meta charset="UTF-8">
    <title>CRM</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    %{--<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>--}%
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}">
    <!-- FontAwesome 4.3.0 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css"/>

    <!-- Theme style -->
    %{--<link href="../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css"/>--}%
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'AdminLTE.min.css')}">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
     folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${resource(dir: 'css', file: '_all-skins.min.css')}">
    %{--<link href="../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css"/>--}%
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
</head>

<body class="skin-blue sidebar-mini">
<div class="wrapper">
    <header class="main-header">
        <!-- Logo -->
        <a href="#" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>C</b><small>RM</small></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>CRM</b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->

                    <!-- Notifications: style can be found in dropdown.less -->

                    <!-- Tasks: style can be found in dropdown.less -->

                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="hidden-xs">${currentUser?.username}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="${resource(dir: 'images', file: 'default_avatar.jpg')}" class="img-circle"
                                     alt="User Image"/>

                                <p>
                                    ${currentUser?.username}
                                </p>
                            </li>
                            <!-- Menu Body -->

                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>

                                <div class="pull-right">
                                    <g:form controller="logout" method="post">
                                        <button type="submit" class="btn btn-default btn-flat">Sign out</button>
                                    </g:form>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->

                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel"></div>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">Activities</li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-users"></i> <span>Customer Module</span> <i
                            class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><g:link controller="customer" action="index"><i
                                class="fa fa-list-alt"></i> List Customers</g:link></li>
                        <li><g:link controller="customer" action="search"><i
                                class="fa fa-search"></i> Search Customer</g:link></li>
                        <li><g:link controller="customer" action="create"><i
                                class="fa fa-plus"></i> New Customer</g:link></li>
                        <sec:ifAllGranted roles="${AppConstant.ROLE_ADMIN}">
                            <li><g:link controller="customer" action="search"><i
                                    class="fa fa-edit"></i> Update Customer</g:link></li>
                            <li><g:link controller="customer" action="search"><i
                                    class="fa fa-trash-o"></i> Delete Customer</g:link></li>
                        </sec:ifAllGranted>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>Master Module</span> <i
                            class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><g:link controller="issue" action="create"><i
                                class="fa  fa-mail-forward"></i> Transfer Case</g:link></li>
                        <li><a href="#"><i class="fa fa-question"></i> Case Status</a></li>
                        <li><a href="#"><i class="fa fa-file-o"></i> My Cases</a></li>
                        <li><a href="#"><i class="fa fa-folder-open-o"></i> My Open Cases</a></li>
                        <li><a href="#"><i class="fa fa-file"></i> All Cases</a></li>
                        <li><a href="#"><i class="fa fa-folder-open"></i> All Open Cases</a></li>
                    </ul>
                </li>
                <sec:ifAllGranted roles="${AppConstant.ROLE_ADMIN}">
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-user"></i> <span>User Module</span> <i
                                class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><g:link controller="user" action="index"><i
                                    class="fa fa-list-alt"></i> List Users</g:link></li>
                            <li><g:link controller="user" action="search"><i class="fa fa-search"></i> Search User</g:link></li>
                            <li><g:link controller="user" action="create"><i class="fa fa-plus"></i> New User</g:link>
                            </li>
                            <li><g:link controller="user" action="search"><i class="fa fa-edit"></i> Update User</g:link></li>
                            <li><g:link controller="user" action="search"><i class="fa fa-trash-o"></i> Delete User</g:link></li>
                        </ul>
                    </li>
                </sec:ifAllGranted>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <g:layoutBody/>

    </div><!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0
        </div>
        <strong>Copyright &copy; 2016-2017 <a href="#">Vinay Shrimali</a>.
        </strong> All rights reserved.
    </footer>

    <!-- Control Sidebar -->

</div><!-- ./wrapper -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://lab.iamrohit.in/js/location.js"></script>
<!-- jQuery 2.1.4 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js" type="text/javascript"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.2 JS -->
%{--<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>--}%
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}" type="text/javascript"></script>
<!-- AdminLTE App -->
<script src="${resource(dir: 'js', file: 'app.min.js')}" type="text/javascript"></script>
%{--<script src="../dist/js/app.min.js" type="text/javascript"></script>--}%
<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        <g:if test="${flash.message}">
        toastr.info('${flash.message}');
        </g:if>
    });
</script>
</body>
</html>