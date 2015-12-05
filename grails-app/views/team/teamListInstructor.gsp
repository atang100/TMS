

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>
    <g:each in="${teamPoolList}" var="teamPool">
        <p>Team Pool ${teamPool.id}</p>
        <g:form action="viewParameters" controller="Team"
                name="TeamPool Parameters" >
            <g:textField style = "display:none" name = "teamPoolId" value = "${teamPool.id}">  </g:textField>
            <g:submitButton name="submitButton" value="Set Up Parameters" />
        </g:form>

        <table border="1">
            <td>TeamName</td>
            <td>TeamSize</td>
            <td>IsComplete</td>
            <td>Student Member</td>
            %{--<td>Date</td>--}%
            <g:each in="${teamPool.team}" var="team">
                <tr>
                    <td>${team.teamName}</td>
                    <td>${team.teamSize}</td>
                    <td>${team.isComplete}</td>
                    <td>
                        <ul>
                            <g:each in="${team.studentAccount}" var="student">
                                <li>${student.username}
                                </li>
                            </g:each>
                        </ul>
                    </td>
                    %{--<td>${date}</td>--}%
                </tr>
            </g:each>
        </table>
    </g:each>
</body>
</html>