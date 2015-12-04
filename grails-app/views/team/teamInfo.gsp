<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>
<table border="1">

    <td>TeamName</td>
    <td>TeamSize</td>
    <td>IsComplete</td>
    <td>Date</td>
    <g:each in="${teams}" var="team">
        <tr>
            <td>${team.teamName}</td>
            <td>${team.teamSize}</td>
            <td>${team.isComplete}</td>
            <td>${date}</td>
            <td><g:form action="joinTeam" controller="Team"
                        name="Join Team" >
                <g:textField style = "display:none" name = "teamId" value = "${team.id}">  </g:textField>
                <g:submitButton name="submitButton" value="Join Team" />

            </g:form></td>
        </tr>
    </g:each>
</table>
</body>
</html>