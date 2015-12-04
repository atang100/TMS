

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Homepage</title>
</head>

<body>
<g:if test="${userType == 'Instructor'}">
    <g:render template="/home/instructorLayout" />
</g:if>
<g:else >
    <g:render template="/home/studentLayout" />
</g:else>

</body>
</html>