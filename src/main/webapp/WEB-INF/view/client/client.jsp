<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Client page</title>
    <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="<c:url value="/css/index.css"/>">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon"/>
</head>

<body>
Введенный логин: ${userJSP.login};
<br/>
Введенный пароль: ${userJSP.password};
<br/>
Введенное имя: ${userJSP.name};
<br/>
Введенная фамилия: ${userJSP.surname};

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
                <li><img src="img/client.png" class="img-circle" style="width: 43px; height: 43px; margin-top: 4px"></li>
                <li><a href="#">Client</a></li>
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
        <h1 style="margin-bottom: 50px">Welcome to your account!</h1>
    </div>

    <hr>

    <div class="container" style="margin-top: 50px">
        <div class="row">
            <div class="col-xs-6">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="check1">Check in Date: </label>
                        <div class="col-xs-6">
                            <input class="form-control" id="check1" type="date" name="dateIn" min="2000-01-01" max="2100-12-31" value="" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="check2">Check out Date: </label>
                        <div class="col-xs-6">
                            <input class="form-control" id="check2" type="date" name="dateOut" min="2000-01-01" max="2100-12-31" value="" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="check3">Guests: </label>
                        <div class="col-xs-6">
                            <input class="form-control" id="check3" type="number" placeholder="guest's number" name="number" min="1" max="9" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-offset-3 col-xs-2">
                            <input type="submit" class="btn btn-success" value="Show existence">
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-xs-6">
                <ul class="list-unstyled pull-right" style="font-size: 150%">
                    <li><a href="tel: +375291234567">+375 (29) 123-45-67</a></li>
                    <li>hosteltravelbelarus@gmail.com</li>
                    <li>Skype: HostelTravel</li>
                    <li>Address: Belarus, Minsk, Kuprevicha street, 8</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div id="content">
    <h2 style="text-align: center; padding: 0 10px 20px 10px">History order</h2>
    <div class="container" style="padding: 0 10px 20px 10px">
        <table class="table">
            <thead>
            <tr>
                <th>Data</th>
                <th>Place(-s)</th>
                <th>Status</th>
                <th>Sale</th>
                <th>Total price</th>
                <th>Type of pay</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>12.02.2017<br>13.02.2017</td>
                <td>3</td>
                <td>new</td>
                <td></td>
                <td>50$</td>
                <td>booking</td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="btn btn-danger">DEL</a>
                        <a href="#" class="btn btn-warning">ARCHIVED</a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>15.02.2018<br>19.02.2018</td>
                <td>6</td>
                <td>confirm</td>
                <td>5%</td>
                <td>66.5%</td>
                <td>complete pay</td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="btn btn-danger">DEL</a>
                        <a href="#" class="btn btn-warning">ARCHIVED</a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>14.01.2018<br>19.01.2018</td>
                <td>2</td>
                <td>reject</td>
                <td></td>
                <td>33$</td>
                <td>booking</td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="btn btn-danger">DEL</a>
                        <a href="#" class="btn btn-warning">ARCHIVED</a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>01.01.2013<br>22.01.2013</td>
                <td>4</td>
                <td>archive</td>
                <td>5%</td>
                <td>20$</td>
                <td>complete pay</td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="btn btn-danger">DEL</a>
                        <a href="#" class="btn btn-warning">ARCHIVED</a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>22.02.2012<br>01.03.2012</td>
                <td>4</td>
                <td>archive</td>
                <td>3%</td>
                <td>22$</td>
                <td>booking</td>
                <td>
                    <div class="btn-group">
                        <a href="#" class="btn btn-danger">DEL</a>
                        <a href="#" class="btn btn-warning">ARCHIVED</a>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
        <!-- <div style="padding: 5px 57px 0 0">
            <a href="#" class="btn btn-success pull-right">Create new order</a>
        </div> -->
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
