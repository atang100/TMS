

<g:form action="login" controller="UserAccount" method="post"
      name="login" id="myLogin">
    <g:textField placeholder="Username" name="username">  </g:textField>
    <g:textField placeholder = "Password" name="password" >  </g:textField>
    <g:submitButton name="submitButton" value="login" />

</g:form>


<g:link  controller="UserAccount" action="showRegister">
    register
</g:link>