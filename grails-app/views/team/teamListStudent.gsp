<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<table class="table" border="1">

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

                <g:each in="${team.teamStudentAssociation}" var="tsAssociation">
                    <p><b>Username:</b> ${tsAssociation.studentAccount.username}<br>
                        <b>Acceptance Status:</b> ${tsAssociation.isAccepted}<br>
                    </p>
                </g:each>

            </td>
            <td>${team.isComplete}</td>
            %{--<td>${team.dateCreated}</td>--}%
            <td>
                <g:form action="joinTeam" controller="Team"
                        name="Join Team">
                    <g:textField style = "display:none" name = "teamId" value = "${team.id}">  </g:textField>
                    <g:submitButton class="btn btn-primary" name="submitButton" value="Join Team" />
                </g:form>
            </td>
        </tr>
    </g:each>
</table>
</body>
</html>