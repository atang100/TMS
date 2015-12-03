<%--
  Created by IntelliJ IDEA.
  User: Andy
  Date: 12/1/2015
  Time: 9:20 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Homepage</title>
</head>

<body>
<g:if test="${userType == 'Instructor'}">

</g:if>
<g:else >
    Dev mode - debug: $someDebug
</g:else>

</body>
</html>