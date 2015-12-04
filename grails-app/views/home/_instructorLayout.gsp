<g:link  controller="Team" action="createTeam">
    Create Team
</g:link>
<br>

<g:link  controller="Team" action="viewTeamList">
    View Team List
</g:link>
<br>

<g:link  controller="Team" action="viewNewStudents">
    Accept New Students
</g:link>

<br>
<g:each in="${teams}" var="team">
    <p>${team.teamName}</p>
</g:each>

%{--<g:link  controller="UserAccount" action="showParameter">--}%
%{--Accept New Student--}%
%{--</g:link>--}%
<br>
<g:link  controller="UserAccount" action="logout">
    logout
</g:link>


