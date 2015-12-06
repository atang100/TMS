

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
    <g:each in="${teamPoolList}" var="teamPool">
        <h1>Team Pool ${teamPool.id}</h1>
        <g:form action="viewParameters" controller="Team"
                name="TeamPool Parameters" >
            <g:textField style = "display:none" name = "teamPoolId" value = "${teamPool.id}">  </g:textField>
            <g:submitButton class="btn btn-primary" name="submitButton" value="Set Up Parameters" />
        </g:form>

        <table class="table" border="1">
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

                            <g:each in="${team.teamStudentAssociation}" var="tsAssocation">
                                <p>
                                    <b>Username:</b> ${tsAssocation.studentAccount.username}
                                    <g:if test="${tsAssocation.isAccepted == true}">
                                        <br><b>JOINED</b>
                                    </g:if>
                                    <g:else>
                                        <g:form action="acceptNewStudent" controller="Team"
                                                name="Join Team">
                                            <g:textField style = "display:none" name = "userId" value = "${tsAssocation.studentAccount.id}">  </g:textField>
                                            <g:textField style = "display:none" name = "teamId" value = "${tsAssocation.team.id}">  </g:textField>
                                            <g:submitButton class="btn btn-primary" name="submitButton" value="Accept Student" />
                                        </g:form>
                                    </g:else>
                                </p>
                            </g:each>

                    </td>
                    %{--<td>${date}</td>--}%
                </tr>
            </g:each>
        </table>
    </g:each>
</body>
</html>