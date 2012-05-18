<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <title><g:message code="default.dashboard.label" default="Weather Dashboard" /></title>
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
            <h1><g:message code="default.dashboard.label" default="Weather Dashboard" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
              
            <ul class="property-list weather">
                <g:if test="${weatherCommand?.city}">
                <li class="fieldcontain">
                    <span id="city-label" class="property-label"><g:message code="dashboard.city.label" default="City" /></span>
                    <span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${weatherCommand}" field="city"/></span>
                </li>
                </g:if>
                
                <g:if test="${(weatherCommand?.currentConditions)}">
                <li class="fieldcontain">
                    <span id="currentConditions-label" class="property-label"><g:message code="dashboard.currentConditions.label" default="Current Conditions" /></span>
                    <span class="property-value" aria-labelledby="currentConditions-label"><g:fieldValue bean="${weatherCommand}" field="currentConditions"/></span>
                </li>
                </g:if>
                
                <g:if test="${weatherCommand?.conditionImgUrl}">
                <li class="fieldcontain">
                    <span id="conditionImage-label" class="property-label">&nbsp;</span>
                    <span class="property-value"> <g:img uri="${weatherCommand.conditionImgUrl}" /></span>
                </li>
                </g:if>   
            </ul>
              
        </div>
        <fieldset class="buttons">
             <span>&nbsp;</span>
        </fieldset>
    </body>
</html>