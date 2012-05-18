<%@ page import="cz.jug.weather.UserAccount" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userAccount.label', default: 'UserAccount')}" />
		<title><g:message code="default.login.label" default="Weather Dashboard Login"/></title>
	</head>
	<body>
		<a href="#login-userAccount" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li>&nbsp;</li>
			</ul>
		</div>
		<div id="login-userAccount" class="content scaffold-create" role="main">
			<h1><g:message code="default.login.label" default="Weather Dashboard Login" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userAccountInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userAccountInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="authenticate" >
				<fieldset class="form">
				<div class="fieldcontain ${hasErrors(bean: userAccountInstance, field: 'userName', 'error')} required">
					<label for="userName"> <g:message code="userAccount.userName.label" default="User Name" /> 
					   <span class="required-indicator">*</span>
					</label>
					<g:textField name="userName" maxlength="15" required="" value="${userAccountInstance?.userName}" />
				</div>
			    </fieldset>
				<fieldset class="buttons">
					<g:submitButton name="login" class="save" value="${message(code: 'default.button.login.label', default: 'Login')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
