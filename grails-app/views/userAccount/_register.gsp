<g:form action="register" controller="UserAccount" method="post"
        name="register" id="myRegister">
    <g:textField placeholder="Username" name="username" value="">  </g:textField>
    <g:textField placeholder = "Password" name="password" value="" >  </g:textField>
    <g:textField placeholder="firstName" name="firstName" value="">  </g:textField>
    <g:textField placeholder = "lastName" name="lastName" value="" >  </g:textField>
    <g:textField placeholder="email" name="email" value="">  </g:textField>

    <g:select name="registrationType" from="${['Instructor', 'Student']}"/>
    <g:submitButton name="submitButton" value="register" />


</g:form>
