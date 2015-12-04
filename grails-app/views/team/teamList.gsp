

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>
    <table border="1">
        <g:each in="${teams}" var="team">
            <tr>
                <td>${team.teamName}</td>
                <td>${team.teamSize}</td>
                <td>${team.isComplete}</td>
           </tr>
        </g:each>
    </table>
</html>