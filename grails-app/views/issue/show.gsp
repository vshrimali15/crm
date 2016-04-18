<%@ page import="com.shrimali.crm.Issue" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="bootstrap">
    <g:set var="entityName" value="${message(code: 'issue.label', default: 'Issue')}"/>
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
                <g:if test="${issueInstance?.createdBy}">
                    <div class="form-group">
                        <label for="email" class="col-sm-3 control-label">
                            <g:message code="issue.createdBy.label" default="Created By"/>
                        </label>

                        <div class="col-sm-1 control-label">:</div>

                        <div class="col-sm-5">
                            <g:link controller="user" action="show"
                                    id="${issueInstance?.createdBy?.id}">${issueInstance?.createdBy?.encodeAsHTML()}</g:link>
                        </div>
                    </div>
                </g:if>
                <br>
                <g:if test="${issueInstance?.customer}">
                    <div class="form-group">
                        <label for="email" class="col-sm-3 control-label">
                            <g:message code="issue.customer.label" default="Customer"/>
                        </label>

                        <div class="col-sm-1 control-label">:</div>

                        <div class="col-sm-5">
                            <g:link controller="customer" action="show"
                            id="${issueInstance?.customer?.id}">${issueInstance?.customer?.encodeAsHTML()}</g:link>
                        </div>
                    </div>
                </g:if>
                <br>
                <g:if test="${issueInstance?.dateCreated}">
                    <div class="form-group">
                        <label for="email" class="col-sm-3 control-label">
                            <g:message code="issue.dateCreated.label" default="Date Created"/>
                        </label>

                        <div class="col-sm-1 control-label">:</div>

                        <div class="col-sm-5">
                            <g:fieldValue bean="${issueInstance}" field="dateCreated"/>
                        </div>
                    </div>
                </g:if>
                <br>
                <g:if test="${issueInstance?.description}">
                    <div class="form-group">
                        <label for="email" class="col-sm-3 control-label">
                            <g:message code="issue.description.label" default="Description"/>
                        </label>

                        <div class="col-sm-1 control-label">:</div>

                        <div class="col-sm-5">
                            <g:fieldValue bean="${issueInstance}" field="description"/>
                        </div>
                    </div>
                </g:if>
                <br>
                <g:if test="${issueInstance?.lastUpdated}">
                    <div class="form-group">
                        <label for="email" class="col-sm-3 control-label">
                            <g:message code="issue.lastUpdated.label" default="Last Updated"/>
                        </label>

                        <div class="col-sm-1 control-label">:</div>

                        <div class="col-sm-5">
                            <g:fieldValue bean="${issueInstance}" field="lastUpdated"/>
                        </div>
                    </div>
                </g:if>
                <br>
                <g:if test="${issueInstance?.status}">
                    <div class="form-group">
                        <label for="email" class="col-sm-3 control-label">
                            <g:message code="issue.status.label" default="Status"/>
                        </label>

                        <div class="col-sm-1 control-label">:</div>

                        <div class="col-sm-5">
                            <g:fieldValue bean="${issueInstance}" field="status"/>
                        </div>
                    </div>
                </g:if>
                <br><br>
                <g:form url="[resource: issueInstance, action: 'delete']" method="DELETE">
                    <fieldset class="buttons">
                        <g:link action="#" class="btn bg-navy btn-flat margin">Transfer Case</g:link>
                        <g:link class="edit btn btn-primary" action="edit" resource="${issueInstance}"><g:message code="default.button.edit.label"
                                                                                                                  default="Edit"/></g:link>
                        <g:actionSubmit class="delete btn btn-danger" action="delete"
                                        value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
</section>


</body>
</html>
