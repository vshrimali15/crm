<%@ page import="com.shrimali.crm.enums.IssueStatus; com.shrimali.crm.Customer; com.shrimali.crm.Issue" %>
<div class="col-md-12">

    <div class="form-group ${hasErrors(bean: issueInstance, field: 'customer', 'error')} required">
        <label for="customer" class="col-sm-3 control-label">
            <g:message code="issue.customer.label" default="Customer"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-sm-1 control-label">:</div>

        <div class="col-sm-5">
            <g:select class="form-control select2" id="customer" name="customer.id" from="${Customer.list()}"
                      optionKey="id" required=""
                      value="${issueInstance?.customer?.id}"/>
        </div>
    </div>
    <br><br>
</div>


<div class="col-md-12">
    <div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'description', 'error')} required">
        <label for="description" class="col-sm-3 control-label">
            <g:message code="issue.description.label" default="Description"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-sm-1 control-label">:</div>

        <div class="col-sm-5">
            <g:textArea class="form-control" name="description" required="" value="${issueInstance?.description}"/>
        </div>
    </div>
    <br><br><br><br>
</div>


<div class="col-md-12">
    <div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'status', 'error')} required">
        <label for="status" class="col-sm-3 control-label">
            <g:message code="issue.status.label" default="Status"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-sm-1 control-label">:</div>

        <div class="col-sm-5">
            <g:select name="status" class="form-control select2" from="${IssueStatus?.values()}"
                      keys="${IssueStatus.values()*.name()}" required=""
                      value="${issueInstance?.status?.name()}"/>
        </div>
    </div>
    <br><br>
</div>


