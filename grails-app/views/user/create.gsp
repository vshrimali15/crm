<%@ page import="org.springframework.validation.FieldError" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="bootstrap">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body class="skin-blue sidebar-mini">
<section class="content-header">
    <h1>
        User
        <small>Create User</small>
    </h1>

</section>

<g:hasErrors bean="${userInstance}">
    <ul class="errors" role="alert">
        <g:eachError bean="${userInstance}" var="error">
            <li <g:if test="${error in FieldError}">data-field-id="${error.field}"</g:if>><g:message
                    error="${error}"/></li>
        </g:eachError>
    </ul>
</g:hasErrors>
<section class="content-header">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">User Information</h3>
        </div><!-- /.box-header -->
        <div class="box-body">
            <div class="col-md-12">
                <g:form url="[resource: userInstance, action: 'save']">
                    <g:render template="form"/>
                    <div class="col-md-12">
                        <br><br>
                            <g:submitButton name="create" class="save btn btn-primary"
                                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                            <button type="reset" class="btn btn-default">Reset</button>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</section>
<div class="clearfix"></div>
</body>
</html>
