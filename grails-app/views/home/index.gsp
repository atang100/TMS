

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Homepage</title>
</head>

<body>
<g:if test="${userType == 'InstructorLayout'}">
    Login instructor

</g:if>
<g:else >
    Login student

    <g:link  controller="Home" action="joinTeam">
        Join Team
    </g:link>
</g:else>

</body>
</html>