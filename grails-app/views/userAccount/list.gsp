
<%@ page import="cz.jug.weather.UserAccount" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userAccount.label', default: 'UserAccount')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userAccount" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-userAccount" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="userName" title="${message(code: 'userAccount.userName.label', default: 'User Name')}" />
					
						<th><g:message code="userAccount.profile.label" default="Profile" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userAccountInstanceList}" status="i" var="userAccountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userAccountInstance.id}">${fieldValue(bean: userAccountInstance, field: "userName")}</g:link></td>
					
						<td>${fieldValue(bean: userAccountInstance, field: "profile")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userAccountInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
