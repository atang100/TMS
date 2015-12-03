

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<g:form action="createTeam" controller="team" method="post" name="createTeam" id="myCreateTeam">
    <g:textField placeholder="teamName" name="teamName" value="">  </g:textField>
    <g:textField placeholder = "teamId" name="teamId" value="" >  </g:textField>
    <g:submitButton name="submitButton" value="login" />

</g:form>

</html>