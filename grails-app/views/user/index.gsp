<%@ page import="com.shrimali.crm.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="bootstrap">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
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
                    <li><g:paginate total="${userInstanceCount ?: 0}"/></li>
                </ul>
            </div>

            <br><br>

            <table id="a" class="table table-responsive table-striped table-hover table-bordered">
                <thead>
                <tr class="bg-black">
                    <g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}"/>
                    <g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}"/>
                    <g:sortableColumn property="dateCreated"
                                      title="${message(code: 'user.dateCreated.label', default: 'Date Created')}"/>
                    <g:sortableColumn property="enabled" title="${message(code: 'user.enabled.label', default: 'Enabled')}"/>
                </tr>
                </thead>
                <tbody>
                <g:each in="${userInstanceList}" status="i" var="userInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show"
                                    id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>

                        <td><g:fieldValue bean="${userInstance}" field="email"/></td>

                        <td><g:formatDate date="${userInstance.dateCreated}"/></td>

                        <td><g:formatBoolean boolean="${userInstance.enabled}"/></td>

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
