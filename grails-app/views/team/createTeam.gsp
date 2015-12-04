

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>
<g:form action="createTeam" controller="team" method="post" name="createTeam" id="myCreateTeam">
    <g:textField placeholder="teamName" name="teamName" value="">  </g:textField>

    <g:select name="teamPoolId" from="${teamPoolListId.id}" ></g:select>
    <g:submitButton name="submitButton" value="login" />

</g:form>
</body>
</html>