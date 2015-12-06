

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title> User Account</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>

<body>


<div class="container" style="margin-top:40px">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <strong>Register</strong>
                </div>

                <div class="panel-body">
                    <g:form action="register" controller="UserAccount" method="post"
                            name="register" id="myRegister">
                        <fieldset>
                            <div class="row">
                                <div class="col-sm-12 col-md-10  col-md-offset-1 ">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <g:textField class="form-control" placeholder="Username" name="username" value=""></g:textField>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="input-group">
                                            <g:textField class="form-control" placeholder="Password" name="password" value=""></g:textField>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="input-group">
                                            <g:textField class="form-control" placeholder="firstName" name="firstName"
                                                         value=""></g:textField>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="input-group">
                                            <g:textField class="form-control" placeholder="lastName" name="lastName" value=""></g:textField>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="input-group">
                                            <g:textField class="form-control" placeholder="email" name="emailAddress" value=""></g:textField>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="input-group">

                                            <g:select name="registrationType" from="${['Instructor', 'Student']}"/>
                                        </div>
                                    </div>

                                    <div class="form-group">

                                        <g:submitButton class="btn btn-lg btn-primary btn-block" name="submitButton" value="Register"/>

                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>