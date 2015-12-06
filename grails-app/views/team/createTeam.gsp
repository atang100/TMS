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

<div class="container" style="margin-top:40px">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <strong>Create Team</strong>
                </div>

                <div class="panel-body">

                    <g:form action="createTeam" controller="team" method="post" name="createTeam" id="myCreateTeam">
                        <fieldset>
                            <div class="row">
                                <div class="col-sm-12 col-md-10  col-md-offset-1 ">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <strong>Team Name:</strong><g:textField class="form-control"
                                                                                    placeholder="teamName"
                                                                                    name="teamName"
                                                                                    value=""></g:textField>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <strong>Team Pool Id:</strong>
                                        <div class="input-group">

                                            <g:select class="form-control"
                                                      style="width:100px;"
                                                      name="teamPoolId"
                                                      from="${teamPoolListId.id}"></g:select>
                                        </div>
                                    </div>

                                    <div class="form-group">

                                        <g:submitButton class="btn btn-lg btn-primary btn-block" name="submitButton"
                                                        value="Create Team"/>
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