<%@ page import="com.shrimali.crm.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="bootstrap">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<section class="content-header">
    <h1>
        User
        <small>Show User</small>
    </h1>
</section>

<section class="content-header">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">User Information</h3>
        </div><!-- /.box-header -->
        <div class="box-body">
            <div class="col-md-12">

                <g:if test="${userInstance?.email}">
                    <div class="form-group">
                        <label for="email" class="col-sm-3 control-label">
                            <g:message code="user.email.label" default="Email"/>
                        </label>

                        <div class="col-sm-1 control-label">:</div>

                        <div class="col-sm-5">
                            <g:fieldValue bean="${userInstance}" field="email"/>
                        </div>
                    </div>
                </g:if>
                <br>
                <g:if test="${userInstance?.username}">
                    <div class="form-group">
                        <label for="username" class="col-sm-3 control-label">
                            <g:message code="user.username.label" default="Username"/>
                        </label>

                        <div class="col-sm-1 control-label">:</div>

                        <div class="col-sm-5">
                            <g:fieldValue bean="${userInstance}" field="username"/>
                        </div>
                    </div>
                </g:if>
                <br>
                <g:if test="${userInstance?.dateCreated}">
                    <div class="form-group">
                        <label for="password" class="col-sm-3 control-label">
                            <g:message code="user.password.label" default="Created On"/>
                        </label>

                        <div class="col-sm-1 control-label">:</div>

                        <div class="col-sm-5">
                            <g:formatDate date="${userInstance?.dateCreated}"/>
                        </div>

                    </div>
                </g:if>
                <br>
                <g:if test="${roleType}">
                    <div class="form-group required">
                        <label for="roleType" class="col-sm-3 control-label">
                            Role
                        </label>

                        <div class="col-sm-1 control-label">:</div>

                        <div class="col-sm-5">
                            <p>${roleType.roleType}</p>
                        </div>
                    </div>
                </g:if>
                <br><br>

                <div class="col-md-12">
                    <g:form url="[resource: userInstance, action: 'delete']" method="DELETE">
                        <fieldset class="buttons">
                            <g:link class="edit btn btn-primary" action="edit" resource="${userInstance}"><g:message
                                    code="default.button.edit.label"
                                    default="Edit"/></g:link>
                            <g:actionSubmit class="delete btn btn-danger" action="delete"
                                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                        </fieldset>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="clearfix"></div>
</body>

</html>
