<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>
<table border="1">


    <td>IsComplete</td>
    <td>Date</td>
    <g:each in="${studentAccount}" var="studentAccount">
        <tr>
            <td>${studentAccount.studentName}</td>
            <td><g:form action="joinTeam" controller="Team"
                        name="Join Team" >
                <g:submitButton name="submitButton" value="Accept" />

            </g:form></td>
        </tr>
    </g:each>
</table>
</body>
</html>