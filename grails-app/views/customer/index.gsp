<%@ page import="com.shrimali.crm.Customer" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="bootstrap">
    <g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<section class="content-header"></section>
<section class="content-header">

    <div class="box box-primary">
        <div class="box-header with-border">
            <div class="col-md-3">
                <h3 class="box-title"><b>Users</b></h3>
            </div>

            <div class="box-tools pagination pagination-sm no-margin pull-right">
                <ul class="dark-theme pull-right">
                    <li><g:paginate total="${customerInstanceCount ?: 0}"/></li>
                </ul>
            </div>

            <br><br>

            <table id="a" class="table table-responsive table-striped table-hover table-bordered">
                <thead>
                <tr class="bg-black">

                    <g:sortableColumn property="firstname"
                                      title="${message(code: 'customer.firstname.label', default: 'Firstname')}"/>

                    <g:sortableColumn property="email"
                                      title="${message(code: 'customer.email.label', default: 'Email')}"/>
                    <g:sortableColumn property="userStatus"
                                      title="${message(code: 'customer.status.label', default: 'Is Enabled')}"/>
                    <g:sortableColumn property="registrationDate"
                                      title="${message(code: 'customer.email.label', default: 'Registration Date')}"/>
                    <g:sortableColumn property="dateOfBirth"
                                      title="${message(code: 'customer.email.label', default: 'Date of Birth')}"/>

                </tr>
                </thead>
                <tbody>
                <g:each in="${customerInstanceList}" status="i" var="customerInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td>
                            <g:link action="show" id="${customerInstance.id}">
                                ${fieldValue(bean: customerInstance, field: "salutation")} &nbsp;
                                ${fieldValue(bean: customerInstance, field: "firstname")} &nbsp;
                                ${fieldValue(bean: customerInstance, field: "middlename")} &nbsp;
                                ${fieldValue(bean: customerInstance, field: "lastname")} &nbsp;
                            </g:link>
                        </td>

                        <td>${fieldValue(bean: customerInstance, field: "email")}</td>
                        <td>${fieldValue(bean: customerInstance, field: "userStatus")}</td>
                        <td>${fieldValue(bean: customerInstance, field: "registrationDate")}</td>
                        <td>${fieldValue(bean: customerInstance, field: "dateOfBirth")}</td>

                    </tr>
                </g:each>
                </tbody>
            </table>

        </div>
    </div>
</section>

<div class="clearfix"></div>
</body>
</html>
