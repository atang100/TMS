<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Homepage</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>

<body>

<div class="container" style="margin-top:70px">
    <div class="jumbotron">
        <h1>Welcome to Home Page</h1>

        <p>Do the shit you need to do.</p>
    </div>
</div>

<div class="container" style="font-size: 2em;">
    <g:if test="${userType == 'Instructor'}">
        <g:render template="/home/instructorLayout"/>
    </g:if>
    <g:else>
        <g:render template="/home/studentLayout"/>
    </g:else>
</div>
</body>
</html>