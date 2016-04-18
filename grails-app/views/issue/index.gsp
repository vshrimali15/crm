
<%@ page import="com.shrimali.crm.Issue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'issue.label', default: 'Issue')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-issue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-issue" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="issue.createdBy.label" default="Created By" /></th>
					
						<th><g:message code="issue.customer.label" default="Customer" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'issue.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'issue.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'issue.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'issue.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${issueInstanceList}" status="i" var="issueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${issueInstance.id}">${fieldValue(bean: issueInstance, field: "createdBy")}</g:link></td>
					
						<td>${fieldValue(bean: issueInstance, field: "customer")}</td>
					
						<td><g:formatDate date="${issueInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: issueInstance, field: "description")}</td>
					
						<td><g:formatDate date="${issueInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: issueInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${issueInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
