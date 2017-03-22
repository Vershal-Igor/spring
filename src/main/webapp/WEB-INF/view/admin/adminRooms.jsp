<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>Admin Managment</title>
    <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <link href="<c:url value="css/index.css" />" rel="stylesheet"/>
    <script src="js/index.js"></script>
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon"/>

    <style>
        .col-xs-4 {
            text-align: center;
        }
    </style>
</head>
<body>

<div class="navbar navbar-inverse navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="submit" data-target="#nbC" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="index.html" class="navbar-brand">HOSTEL</a>
        </div>
        <div id="nbC" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><img src="img/admin.png" class="img-circle" style="width: 43px; height: 43px; margin-top: 4px"></li>
                <li><a href="#">Admin</a></li>
                <li style="margin-top: 6px"><a href="index.html" type="submit" class="the_lame_button plavno1">Sign Out</a></li>
            </ul>
            <div class="navbar-form navbar-right">
                <a href="#" type="submit" class="btn btn-success">EN</a>
                <a href="#" type="submit" class="btn btn-success" style="margin-right: 240px">BY</a>
            </div>
        </div>
    </div>
</div>

<div class="jumbotron">
    <div class="container" style="text-align: center">
        <h2 style="margin-bottom: 50px"><i class="fa fa-arrow-down"></i> Choose your managment <i class="fa fa-arrow-down"></i></h2>
    </div>
    <div class="container" style="margin-top: 20px">
        <div class="row">
            <div class="col-xs-4">
                <a href="/views/adminRooms.jsp" class="btn btn-success btn-lg">Rooms Managment</a>
            </div>
            <div class="col-xs-4">
                <a href="views/adminUsers.jsp" class="btn btn-success btn-lg">Users Managment</a>
            </div>
            <div class="col-xs-4">
                <a href="views/adminOrders.jsp" class="btn btn-success btn-lg">Orders Managment</a>
            </div>
        </div>
    </div>
</div>

<div id="content">
    <h2 style="text-align: center; padding: 0 10px 20px 10px">Rooms Managment</h2>
    <div class="container" style="padding: 0 10px 20px 10px">
        <table class="table">
            <thead>
            <tr>
                <th>Room ID</th>
                <th>Places</th>
                <th>Status</th>
                <th>Price</th>
                <th>M. Buttons</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>3</td>
                <td>FREE</td>
                <td>15$</td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="btn btn-danger">DEL</a>
                        <a href="#" class="btn btn-warning">EDIT</a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>2</td>
                <td>BOOKED</td>
                <td>10$</td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="btn btn-danger">DEL</a>
                        <a href="#" class="btn btn-warning">EDIT</a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>3</td>
                <td>4</td>
                <td>FREE</td>
                <td>40$</td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="btn btn-danger">DEL</a>
                        <a href="#" class="btn btn-warning">EDIT</a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>4</td>
                <td>3</td>
                <td>BOOKED</td>
                <td>35$</td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="btn btn-danger">DEL</a>
                        <a href="#" class="btn btn-warning">EDIT</a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>5</td>
                <td>4</td>
                <td>TAKEN</td>
                <td>50$</td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="btn btn-danger">DEL</a>
                        <a href="#" class="btn btn-warning">EDIT</a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>6</td>
                <td>1</td>
                <td>FREE</td>
                <td>10$</td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="btn btn-danger">DEL</a>
                        <a href="#" class="btn btn-warning">EDIT</a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>7</td>
                <td>2</td>
                <td>TAKEN</td>
                <td>20$</td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="btn btn-danger">DEL</a>
                        <a href="#" class="btn btn-warning">EDIT</a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>8</td>
                <td>1</td>
                <td>BOOKED</td>
                <td>12$</td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="btn btn-danger">DEL</a>
                        <a href="#" class="btn btn-warning">EDIT</a>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
        <div style="padding: 5px 57px 0 0">
            <a href="addNewRoom.html" class="btn btn-success pull-right">Add New Room</a>
        </div>
    </div>
</div>

<div id="footer1" style="background-color: #dcdcdc; font-family: calibri; font-size: 120%">
    <div class="container">
        <div class="row" style="height: 50px; color: #2f4f4f; margin-top: 25px">
            <div class="col-xs-3">
                <ul class="list-unstyled list-inline pull-left">
                    <li><a href="#">For users</a></li>
                    <li><a href="#">Privacy</a></li>
                </ul>
            </div>
            <div class="col-xs-4">
                <ul class="list-unstyled list-inline">
                    <li>
                        <a href="https://www.facebook.com" target="_blank">
                            <span class="fa-stack fa-1x plavno1">
                                <i class="fa fa-facebook fa-stack-1x" style="color: #4169e1"></i>
                                <i class="fa fa-square-o fa-stack-2x" style="color: #4169e1"></i>
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.instagram.com" target="_blank">
                            <span class="fa-stack fa-1x plavno1">
                                <i class="fa fa-instagram fa-stack-1x" style="color: #8fbc8f; margin-top:    -1px"></i>
                                <i class="fa fa-square-o fa-stack-2x" style="color: #8fbc8f"></i>
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.twitter.com" target="_blank">
                            <span class="fa-stack fa-1x plavno1">
                                <i class="fa fa-twitter fa-stack-1x" style="color: #00bfff"></i>
                                <i class="fa fa-square-o fa-stack-2x" style="color: #00bfff"></i>
                            </span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-xs-5">
                <p class="pull-right">Copyright © 2017 Igor Vershal.</p>
            </div>
        </div>
    </div>
</div>

</body>
</html>
