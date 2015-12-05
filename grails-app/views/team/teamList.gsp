

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>
    <table border="1">
        <p>Set Up Parameters</p>
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
                <td><g:form action="viewParameters" controller="Team"
                            name="Team Parameters" >
                    <g:textField style = "display:none" name = "teamId" value = "${team.id}">  </g:textField>
                    <g:if test="${userType == 'Instructor'}">
                        <g:render template="/home/instructorLayout" />
                    </g:if>
                    <g:else >
                        <g:render template="/home/studentLayout" />
                    </g:else>
                    <g:submitButton name="submitButton" value="Set Up Parameters" />
                </g:form></td>
           </tr>
        </g:each>
    </table>
</body>
</html>