<%@ page import="org.springframework.validation.FieldError" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="bootstrap">
    <g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body class="skin-blue sidebar-mini">
<section class="content-header">
    <h1>
        Customer
        <small>Create Customer</small>
    </h1>

</section>
<g:hasErrors bean="${customerInstance}">
    <section>
        <ul class="errors" role="alert">
            <g:eachError bean="${customerInstance}" var="error">
                <li <g:if test="${error in FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </section>
</g:hasErrors>

<section class="content-header">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Customer Information</h3>
        </div><!-- /.box-header -->
        <div class="box-body">
            <div class="col-md-12">
                <g:form url="[resource: customerInstance, action: 'save']">
                    <g:render template="form"/>

                    <div class="col-md-12">
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
