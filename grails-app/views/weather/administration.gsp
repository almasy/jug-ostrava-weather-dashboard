<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <title><g:message code="default.administration.label" default="Weather Dashboard - Administration" /></title>
    </head>
    <body>
        <a href="#show-weather" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><g:link class="home" action="dashboard"><g:message code="default.home.label" /></g:link></li>
                <li><g:link class="create" action="administration"><g:message code="default.administration.label" default="Administration" /></g:link></li>
                <li><g:link class="list" controller="userAccount" action="logout"><g:message code="default.logout.label" default="Logout" /></g:link></li>
            </ul>
        </div>
        <div id="show-weather" class="content scaffold-show" role="main">
            <h1><g:message code="default.administration.label" default="Administration" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ul class="property-list">
                <li><g:link controller="locality" action="list">Manage localities</g:link></li>
                <li><g:link controller="userProfile" action="list">Manage user profiles</g:link></li>
                <li><g:link controller="userAccount" action="list">Manage user accounts</g:link></li>
            </ul>         
        </div>
        <fieldset class="buttons">
             <span>&nbsp;</span>
        </fieldset>
    </body>
</html>