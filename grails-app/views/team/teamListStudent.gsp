<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title></title>
</head>
<body>
<table border="1">

    <td>Team Name</td>
    <td>Team Size</td>
    <td>Team Members</td>
    <td>Is Complete</td>
    %{--<td>Date</td>--}%
    <g:each in="${teams}" var="team">
        <tr>
            <td>${team.teamName}</td>
            <td>${team.teamSize}</td>
            <td>
                <ul>
                    <g:each in="${team.studentAccount}" var="student">
                        <li>${student.username}</li>
                    </g:each>
                </ul>
            </td>
            <td>${team.isComplete}</td>
            %{--<td>${team.dateCreated}</td>--}%
            <td><g:form action="joinTeam" controller="Team"
                        name="Join Team">
                    <g:textField style = "display:none" name = "teamId" value = "${team.id}">  </g:textField>
                    <g:submitButton name="submitButton" value="Join Team" />
                </g:form>
            </td>
        </tr>
    </g:each>
</table>
</body>
</html>