<%@ page import="com.shrimali.crm.User" %>
<div class="col-md-12">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
        <label for="username" class="col-sm-3 control-label">
            <g:message code="user.email.label" default="Email"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-sm-1 control-label">:</div>

        <div class="col-sm-5">
            <g:textField class="form-control" name="email" required="" value="${userInstance?.email}"/>
        </div>
    </div>
    <br><br>
    <div class="form-group ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
        <label for="username" class="col-sm-3 control-label">
            <g:message code="user.username.label" default="Username"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-sm-1 control-label">:</div>

        <div class="col-sm-5">
            <g:textField class="form-control" name="username" required="" value="${userInstance?.username}"/>
        </div>
    </div>
    <br><br>
    <div class="form-group ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
        <label for="password" class="col-sm-3 control-label">
            <g:message code="user.password.label" default="Password"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-sm-1 control-label">:</div>

        <div class="col-sm-5">
            <g:passwordField class="form-control" name="password" required="" value=""/>
        </div>

    </div>
    <br><br>
    <div class="form-group required">
        <label for="roleType" class="col-sm-3 control-label">
            Role
            <span class="required-indicator">*</span>
        </label>

        <div class="col-sm-1 control-label">:</div>

        <div class="col-sm-5">
            <g:select name="roleType" from="${roleTypes?.roleType}" keys="${roleTypes}" id="roleType"
                      class="form-control select2" required=""
                      value="${currentRoles}"></g:select>
        </div>

    </div>
    <br>
</div>



