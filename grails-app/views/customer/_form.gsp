<%@ page import="com.shrimali.crm.enums.InternetType; com.shrimali.crm.enums.CreditCardType; com.shrimali.crm.enums.Gender; com.shrimali.crm.enums.Salutation; com.shrimali.crm.Customer" %>

<div class="row">
    <div class="col-md-2">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'salutation', 'error')}">
            <label for="salutation">
                <g:message code="customer.salutation.label" default="Salutation"/>
                <span class="required-indicator">*</span>
            </label>
            <g:select class="form-control select2" name="salutation" from="${Salutation?.values()}"
                      keys="${Salutation.values()*.name()}" required=""
                      value="${customerInstance?.salutation?.name()}"/>
        </div>
    </div>

    <div class="col-md-3">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'firstname', 'error')}">
            <label for="firstname">
                <g:message code="customer.firstname.label" default="Firstname"/>
                <span class="required-indicator">*</span>
            </label>
            <g:textField name="firstname" class="form-control" required=""
                         value="${customerInstance?.firstname}"/>
        </div>
    </div>

    <div class="col-md-3">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'middlename', 'error')}">
            <label for="middlename">
                <g:message code="customer.middlename.label" default="Middlename"/>

            </label>
            <g:textField name="middlename" class="form-control" value="${customerInstance?.middlename}"/>
        </div>
    </div>

    <div class="col-md-3">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'lastname', 'error')}">
            <label for="lastname">
                <g:message code="customer.lastname.label" default="Lastname"/>
                <span class="required-indicator">*</span>
            </label>
            <g:textField name="lastname" class="form-control" required=""
                         value="${customerInstance?.lastname}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'gender', 'error')}">
            <label for="gender">
                <g:message code="customer.gender.label" default="Gender"/>
                <span class="required-indicator">*</span>
            </label>
            <g:select name="gender" class="form-control select2" from="${Gender?.values()}"
                      keys="${Gender.values()*.name()}" required=""
                      value="${customerInstance?.gender?.name()}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'addr1', 'error')}">
            <label for="addr1">
                <g:message code="customer.addr1.label" default="Addr1"/>
                <span class="required-indicator">*</span>
            </label>
            <g:textField name="addr1" class="form-control" required="" value="${customerInstance?.addr1}"/>
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'addr2', 'error')}">
            <label for="addr2">
                <g:message code="customer.addr2.label" default="Addr2"/>

            </label>
            <g:textField name="addr2" class="form-control" value="${customerInstance?.addr2}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'city', 'error')}">
            <label for="city">
                <g:message code="customer.city.label" default="City"/>
                <span class="required-indicator">*</span>
            </label>
            <g:textField name="city" class="form-control" required="" value="${customerInstance?.city}"/>
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'pincode', 'error')}">
            <label for="pincode">
                <g:message code="customer.pincode.label" default="Pincode"/>
            </label>
            <g:field name="pincode" class="form-control" type="number" value="${customerInstance.pincode}"/>
        </div>
    </div>

</div>

<div class="row">
    <div class="col-md-6">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'country', 'error')}">
            <label for="country">
                <g:message code="customer.country.label" default="Country"/>
                <span class="required-indicator">*</span>
            </label>
            <select name="country" class="countries form-control select2" id="countryId">
                <option value="">Select Country</option>
            </select>
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'state', 'error')}">
            <label for="state">
                <g:message code="customer.state.label" default="State"/>
            </label>
            <select name="state" class="states form-control select2" id="stateId">
                <option value="">Select State</option>
            </select>
        </div>
    </div>

</div>

<div class="row">
    <div class="col-md-6">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'email', 'error')}">
            <label for="email">
                <g:message code="customer.email.label" default="Email"/>
                <span class="required-indicator">*</span>
            </label>
            <g:field type="email" class="form-control" name="email" required=""
                     value="${customerInstance?.email}"/>
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'internetType', 'error')}">
            <label for="registrationDate">
                <g:message code="customer.internetType.label" default="Internet Type"/>
                <span class="required-indicator">*</span>
            </label><br>
            <g:select class="form-control select2" name="internetType" from="${InternetType?.values()}"
                      keys="${InternetType.values()*.name()}" required=""
                      value="${customerInstance?.internetType?.name()}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'mobileNo', 'error')} required">
            <label for="mobileNo">
                <g:message code="customer.mobileNo.label" default="Mobile No"/>
                <span class="required-indicator">*</span>
            </label>
            <g:field name="mobileNo" class="form-control" type="number" value="${customerInstance.mobileNo}"
                     required=""/>
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group${hasErrors(bean: customerInstance, field: 'landLineNo', 'error')}">
            <label for="landLineNo">
                <g:message code="customer.landLineNo.label" default="Land Line No"/>

            </label>
            <g:field name="landLineNo" class="form-control" type="number"
                     value="${customerInstance.landLineNo}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'officeNo', 'error')}">
            <label for="officeNo">
                <g:message code="customer.officeNo.label" default="Office No"/>

            </label>
            <g:field name="officeNo" class="form-control" type="number"
                     value="${customerInstance.officeNo}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'dateOfBirth', 'error')} required">
            <label for="dateOfBirth">
                <g:message code="customer.dateOfBirth.label" default="Date Of Birth"/>
                <span class="required-indicator">*</span>
            </label><br>
            <g:datePicker name="dateOfBirth" precision="day" value="${customerInstance?.dateOfBirth}"/>

        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-3">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'cardType', 'error')} required">
            <label for="cardType">
                <g:message code="customer.cardType.label" default="Card Type"/>
                <span class="required-indicator">*</span>
            </label>
            <g:select class="form-control select2" name="cardType" from="${CreditCardType?.values()}"
                      keys="${CreditCardType.values()*.name()}" required=""
                      value="${customerInstance?.cardType?.name()}"/>
        </div>
    </div>

    <div class="col-md-3">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'creditCardNo', 'error')} required">
            <label for="creditCardNo">
                <g:message code="customer.creditCardNo.label" default="Credit Card No"/>
                <span class="required-indicator">*</span>
            </label>
            <g:field name="creditCardNo" class="form-control" type="number"
                     value="${customerInstance.creditCardNo}" required=""/>

        </div>
    </div>

    <div class="col-md-3">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'expireDate', 'error')} required">
            <label for="expireDate">
                <g:message code="customer.expireDate.label" default="Expire Date"/>
                <span class="required-indicator">*</span>
            </label><br>
            <g:textField name="expireDate" class="form-control" value="${customerInstance?.expireDate}"/>
        </div>
    </div>

    <div class="col-md-2">
        <div class="form-group ${hasErrors(bean: customerInstance, field: 'cvv', 'error')} required">
            <label for="cvv">
                <g:message code="customer.cvv.label" default="Cvv"/>
                <span class="required-indicator">*</span>
            </label>
            <g:field name="cvv" class="form-control" type="number" value="${customerInstance.cvv}"
                     required=""/>

        </div>
    </div>
</div>


