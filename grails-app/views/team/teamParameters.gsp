<%--
  Created by IntelliJ IDEA.
  User: Robert
  Date: 12/4/2015
  Time: 6:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form action="setUpParameters" controller="Team" method="post"
        name="setUpParameters" id="mysetUpParameters">
    <g:textField placeholder="CourseCode" name="CourseCode">  </g:textField>
    <g:textField placeholder = "minimum" name="minimum" >  </g:textField>
    <g:textField placeholder="maximum" name="maximum">  </g:textField>
    <g:textField placeholder = "deadLine" name="deadLine" >  </g:textField>
    <g:submitButton name="submitButton" value="SetUpParameters" />

</g:form>
</body>
</html>