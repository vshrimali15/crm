<%@ page import="grails.plugin.springsecurity.SpringSecurityUtils; org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes" %>
<g:set var="currentUser" value="${applicationContext.springSecurityService.currentUser}"/>
<g:set var="config" value="${SpringSecurityUtils.securityConfig}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AdminLTE 2 | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}">
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- Theme style -->
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'AdminLTE.min.css')}">
    <!-- iCheck -->
    <link rel="stylesheet" href="${resource(dir: 'css', file: '_all-skins.min.css')}">
</head>

<body class="login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="#"><b>CRM</b></a>
    </div><!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>

        <div class="login-box-msg">
            <g:if test='${flash.message}'>
                <div style="color: red">${flash.message}</div>
            </g:if>
        </div>

        <form action='${request.contextPath}${config.apf.filterProcessesUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
            <div class="form-group has-feedback">
                <input type="email" class="form-control" placeholder="Username" name='j_username' id='username'/>
            </div>

            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="Password" name='j_password' id='password'/>
            </div>

            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox" name='${rememberMeParameter}' id='remember_me'
                                   <g:if test='${hasCookie}'>checked='checked'</g:if>/> Remember Me
                        </label>
                    </div>
                </div><!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                </div><!-- /.col -->
            </div>
        </form>


        <a href="#">I forgot my password</a><br>

    </div><!-- /.login-box-body -->
</div><!-- /.login-box -->

<!-- jQuery 2.1.4 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}" type="text/javascript"></script>
<!-- iCheck -->
<script src="${resource(dir: 'js', file: 'icheck.min.js')}" type="text/javascript"></script>
<script>
    $(function () {
        document.forms['loginForm'].elements['j_username'].focus();
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>
</html>