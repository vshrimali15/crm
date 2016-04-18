<%@ page import="com.shrimali.crm.constants.AppConstant; com.shrimali.crm.Customer" %>
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
        Customer
        <small>Show Customer</small>
    </h1>
</section>

<section class="content-header">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Customer Information</h3>
        </div><!-- /.box-header -->
        <div class="box-body">
            <div class="col-md-12">

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="salutation" class="col-sm-3 control-label">
                            <g:message code="customer.name.label" default="Customer Name"/>
                        </label>

                        <div class="col-sm-1 control-label">:</div>

                        <div class="col-sm-6">
                            <g:if test="${customerInstance?.salutation}">
                                <span class="product-description">
                                    <g:fieldValue bean="${customerInstance}" field="salutation"/>
                                </span>
                            </g:if>
                            <g:if test="${customerInstance?.firstname}">
                                <span class="product-description">
                                    <g:fieldValue bean="${customerInstance}" field="firstname"/>
                                </span>
                            </g:if>
                            <g:if test="${customerInstance?.middlename}">
                                <span class="product-description">
                                    <g:fieldValue bean="${customerInstance}" field="middlename"/>
                                </span>
                            </g:if>
                            <g:if test="${customerInstance?.lastname}">
                                <span class="product-description">
                                    <g:fieldValue bean="${customerInstance}" field="lastname"/>
                                </span>
                            </g:if>
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-md-12">
                <g:if test="${customerInstance?.gender}">

                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="gender" class="col-sm-3 control-label">
                                <g:message code="customer.gender.label" default="Gender"/>
                            </label>

                            <div class="col-sm-1 control-label">:</div>

                            <div class="col-sm-6">
                                <span class="product-description">
                                    <g:fieldValue bean="${customerInstance}" field="gender"/>
                                </span>
                            </div>
                        </div>
                    </div>
                </g:if>
            </div>

            <div class="col-md-12">
                <sec:ifAllGranted roles="${AppConstant.ROLE_ADMIN}">
                    <g:if test="${customerInstance?.email}">

                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="email" class="col-sm-3 control-label">
                                    <g:message code="customer.email.label" default="Email"/>
                                </label>

                                <div class="col-sm-1 control-label">:</div>

                                <div class="col-sm-6">
                                    <span class="product-description">
                                        <g:fieldValue bean="${customerInstance}" field="email"/>
                                    </span>
                                </div>
                            </div>
                        </div>

                    </g:if>
                </sec:ifAllGranted>
            </div>

            <div class="col-md-12">
                <g:if test="${customerInstance?.registrationDate}">

                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="registrationDate" class="col-sm-3 control-label">
                                <g:message code="customer.registrationDate.label" default="Registration Date"/>
                            </label>

                            <div class="col-sm-1 control-label">:</div>

                            <div class="col-sm-6">
                                <span class="product-description">
                                    <g:fieldValue bean="${customerInstance}" field="registrationDate"/>
                                </span>
                            </div>
                        </div>
                    </div>
                </g:if>

            </div>

            <div class="col-md-12">
                <g:if test="${customerInstance?.addr1}">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="addr1" class="col-sm-3 control-label">
                                <g:message code="customer.addr1.label" default="Addr1"/>
                            </label>

                            <div class="col-sm-1 control-label">:</div>

                            <div class="col-sm-6">
                                <span class="product-description">
                                    <g:fieldValue bean="${customerInstance}" field="addr1"/>
                                </span>
                            </div>
                        </div>
                    </div>
                </g:if>
            </div>

            <div class="col-md-12">
                <g:if test="${customerInstance?.addr2}">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="addr2" class="col-sm-3 control-label">
                                <g:message code="customer.addr2.label" default="Addr2"/>
                            </label>

                            <div class="col-sm-1 control-label">:</div>

                            <div class="col-sm-6">
                                <span class="product-description">
                                    <g:fieldValue bean="${customerInstance}" field="addr2"/>
                                </span>
                            </div>
                        </div>
                    </div>
                </g:if>
            </div>

            <div class="col-md-12">
                <g:if test="${customerInstance?.state}">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="city" class="col-sm-3 control-label">
                                <g:message code="customer.city.label" default="City"/>
                            </label>

                            <div class="col-sm-1 control-label">:</div>

                            <div class="col-sm-6">
                                <span class="product-description">
                                    <g:fieldValue bean="${customerInstance}" field="city"/>
                                </span>
                            </div>
                        </div>
                    </div>
                </g:if>
            </div>

            <div class="col-md-12">
                <g:if test="${customerInstance?.country}">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="country" class="col-sm-3 control-label">
                                <g:message code="customer.country.label" default="Country"/>
                            </label>

                            <div class="col-sm-1 control-label">:</div>

                            <div class="col-sm-6">
                                <span class="product-description">
                                    <g:fieldValue bean="${customerInstance}" field="country"/>
                                </span>
                            </div>
                        </div>
                    </div>
                </g:if>
            </div>

            <div class="col-md-12">
                <g:if test="${customerInstance?.pincode}">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="state" class="col-sm-3 control-label">
                                <g:message code="customer.state.label" default="State"/>
                            </label>

                            <div class="col-sm-1 control-label">:</div>

                            <div class="col-sm-6">
                                <span class="product-description">
                                    <g:fieldValue bean="${customerInstance}" field="city"/>
                                </span>
                            </div>
                        </div>
                    </div>
                </g:if>
            </div>

            <div class="col-md-12">
                <g:if test="${customerInstance?.pincode}">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="pincode" class="col-sm-3 control-label">
                                <g:message code="customer.pincode.label" default="Pincode"/>
                            </label>

                            <div class="col-sm-1 control-label">:</div>

                            <div class="col-sm-6">
                                <span class="product-description">
                                    <g:fieldValue bean="${customerInstance}" field="city"/>
                                </span>
                            </div>
                        </div>
                    </div>
                </g:if>
            </div>

            <sec:ifAllGranted roles="${AppConstant.ROLE_ADMIN}">
                <div class="col-md-12">
                    <g:if test="${customerInstance?.mobileNo}">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="mobileNo" class="col-sm-3 control-label">
                                    <g:message code="customer.mobileNo.label" default="Mobile No"/>
                                </label>

                                <div class="col-sm-1 control-label">:</div>

                                <div class="col-sm-6">
                                    <span class="product-description">
                                        <g:fieldValue bean="${customerInstance}" field="mobileNo"/>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </g:if>
                </div>

                <div class="col-md-12">
                    <g:if test="${customerInstance?.landLineNo}">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="landLineNo" class="col-sm-3 control-label">
                                    <g:message code="customer.landLineNo.label" default="Land Line No"/>
                                </label>

                                <div class="col-sm-1 control-label">:</div>

                                <div class="col-sm-6">
                                    <span class="product-description">
                                        <g:fieldValue bean="${customerInstance}" field="landLineNo"/>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </g:if>
                </div>

                <div class="col-md-12">
                    <g:if test="${customerInstance?.officeNo}">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="officeNo" class="col-sm-3 control-label">
                                    <g:message code="customer.officeNo.label" default="Office No"/>
                                </label>

                                <div class="col-sm-1 control-label">:</div>

                                <div class="col-sm-6">
                                    <span class="product-description">
                                        <g:fieldValue bean="${customerInstance}" field="officeNo"/>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </g:if>
                </div>
            </sec:ifAllGranted>

            <sec:ifAllGranted roles="${AppConstant.ROLE_ADMIN}">
                <div class="col-md-12">

                    <g:if test="${customerInstance?.cardType}">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="cardType" class="col-sm-3 control-label">
                                    <g:message code="customer.cardType.label" default="Card Type"/>
                                </label>

                                <div class="col-sm-1 control-label">:</div>

                                <div class="col-sm-6">
                                    <span class="product-description">
                                        <g:fieldValue bean="${customerInstance}" field="cardType"/>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </g:if>
                </div>

                <div class="col-md-12">
                    <g:if test="${customerInstance?.creditCardNo}">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="creditCardNo" class="col-sm-3 control-label">
                                    <g:message code="customer.creditCardNo.label" default="Credit Card No"/>
                                </label>

                                <div class="col-sm-1 control-label">:</div>

                                <div class="col-sm-6">
                                    <span class="product-description">
                                        <g:fieldValue bean="${customerInstance}" field="creditCardNo"/>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </g:if>
                </div>

                <div class="col-md-12">
                    <g:if test="${customerInstance?.expireDate}">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="expireDate" class="col-sm-3 control-label">
                                    <g:message code="customer.expireDate.label" default="Expire Date"/>
                                </label>

                                <div class="col-sm-1 control-label">:</div>

                                <div class="col-sm-6">
                                    <span class="product-description">
                                        <g:fieldValue bean="${customerInstance}" field="expireDate"/>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </g:if>
                </div>

                <div class="col-md-12">
                    <g:if test="${customerInstance?.cvv}">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="cvv" class="col-sm-3 control-label">
                                    <g:message code="customer.cvv.label" default="Cvv"/>
                                </label>

                                <div class="col-sm-1 control-label">:</div>

                                <div class="col-sm-6">
                                    <span class="product-description">
                                        <g:fieldValue bean="${customerInstance}" field="cvv"/>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </g:if>
                </div>
            </sec:ifAllGranted>
            <div class="col-md-12">
                <g:if test="${customerInstance?.dateOfBirth}">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="cvv" class="col-sm-3 control-label">
                                <g:message code="customer.cvv.label" default="Date of Birth"/>
                            </label>

                            <div class="col-sm-1 control-label">:</div>

                            <div class="col-sm-6">
                                <span class="product-description">
                                    <g:formatDate date="${customerInstance?.dateOfBirth}"/>
                                </span>
                            </div>
                        </div>
                    </div>
                </g:if>
            </div>

            <div class="col-md-12">
                <g:if test="${customerInstance?.createdBy}">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="cvv" class="col-sm-3 control-label">
                                <g:message code="customer.cvv.label" default="Created By"/>
                            </label>

                            <div class="col-sm-1 control-label">:</div>

                            <div class="col-sm-6">
                                <span class="product-description">
                                    <g:link controller="user" action="show"
                                            id="${customerInstance?.createdBy?.id}">${customerInstance?.createdBy?.username?.encodeAsHTML()}</g:link>
                                </span>
                            </div>
                        </div>
                    </div>
                </g:if>
            </div>

            <div class="col-md-12">

                <div class="col-md-12">
                    <sec:ifAllGranted roles="${AppConstant.ROLE_ADMIN}">
                        <g:form url="[resource: customerInstance, action: 'delete']" method="DELETE">
                            <div class="col-md-6">
                                <g:link class="edit btn btn-primary" action="edit" resource="${customerInstance}"><g:message
                                        code="default.button.edit.label"
                                        default="Edit"/></g:link>

                                <g:actionSubmit class="btn btn-danger" action="delete"
                                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                            </div>
                        </g:form>
                    </sec:ifAllGranted>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="clearfix"></div>
</body>
</html>
