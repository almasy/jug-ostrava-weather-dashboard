<%@ page import="cz.jug.weather.UserAccount" %>



<div class="fieldcontain ${hasErrors(bean: userAccountInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="userAccount.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" maxlength="15" required="" value="${userAccountInstance?.userName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userAccountInstance, field: 'profile', 'error')} ">
	<label for="profile">
		<g:message code="userAccount.profile.label" default="Profile" />
		
	</label>
	<g:select id="profile" name="profile.id" from="${cz.jug.weather.UserProfile.list()}" optionKey="id" value="${userAccountInstance?.profile?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

