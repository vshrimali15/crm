<%@ page import="com.shrimali.crm.Customer" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="bootstrap">
    <g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>

<section class="content-header">
    <h1>
        User
        <small>User Customer</small>
    </h1>
</section>
<section class="content-header">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Search Form</h3>
        </div><!-- /.box-header -->
        <div class="box-body">
            <g:form controller="user" action="searchUser" method="post">
                <div class="col-md-12">
                    <div class="col-md-4">
                        <div class="form-group">

                            <g:textField name="search" class="form-control" required="" placeholder="User Id"/>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <g:submitButton name="Search" class="save btn btn-primary"
                                        value="${message(code: 'default.button.search.label', default: 'Search')}"/>
                    </div>
                </div>
            </g:form>
        </div>
    </div>
</section>
<div class="clearfix"></div>
</body>
</html>
