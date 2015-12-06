<div class="container" style="margin-top:40px">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <strong>Sign in to continue</strong>
                </div>

                <div class="panel-body">
                    <g:form action="login" controller="UserAccount" method="post" name="login" id="myLogin">
                        <fieldset>
                            <div class="row">
                                <div class="col-sm-12 col-md-10  col-md-offset-1 ">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="glyphicon glyphicon-user"></i>
                                            </span>
                                            <input class="form-control" placeholder="Username" name="username"
                                                   type="text" autofocus>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="glyphicon glyphicon-lock"></i>
                                            </span>
                                            <input class="form-control" placeholder="Password" name="password"
                                                   type="password" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <g:submitButton name="submitButton" class="btn btn-lg btn-primary btn-block"  value="Login"/>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </g:form>

                    <div style="width: 50%; margin: 0 auto; text-align: center;">
                        <g:link controller="UserAccount" action="showRegister">
                            register
                        </g:link>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
