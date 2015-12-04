<g:link  controller="Team" action="createTeam">
    Create Team
</g:link>
<br>
<g:link  controller="Team" action="teamInfo">
    View Team Info
</g:link>
<br>
<g:link  controller="Team" action="teamList">
    View Team List
</g:link>
<br>
<g:each in="${teams}" var="team">
    <p>${team.teamName}</p>
</g:each>




%{--<g:link  controller="UserAccount" action="showParameter">--}%
    %{--Create Team--}%
%{--</g:link>--}%

%{--<g:link  controller="UserAccount" action="visualizeStudent">--}%
    %{--show student teams--}%
%{--</g:link>--}%

%{--<g:link  controller="UserAccount" action="showParameter">--}%
    %{--Accept New Student--}%
%{--</g:link>--}%

%{--<g:link  controller="UserAccount" action="logout">--}%
    %{--logout--}%
%{--</g:link>--}%



