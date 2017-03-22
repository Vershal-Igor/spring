<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Hostel</title>
    <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--IMPORTANT-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <!--Подключаю скрипт moment-with-locales.min.js для работы с датами -->
    <script type="text/javascript" src="js/moment-with-locales.min.js"></script>
    <!--Подключаю скрипт виджета "Bootstrap datetimepicker" -->
    <script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
    <!-- Подключаю CSS виджета "Bootstrap datetimepicker" -->
    <link rel="stylesheet" type="text/css" href="<c:url value="css/bootstrap-datetimepicker.min.css"/>">

    <!-- IMPORTANT -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/index.css"/>">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon"/>


    <!-- верхний бар-->
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
            <a href="#" class="navbar-brand">HOSTEL</a>
        </div>
        <spring:form method="post" modelAttribute="userJSP" action="sign-in">
            <div id="nbC" class="collapse navbar-collapse">
                <div class="navbar-form navbar-right">
                    <a href="#" type="submit" class="btn btn-success">EN</a>
                    <a href="#" type="submit" class="btn btn-success" style="margin-right: 80px">BY</a>
                    <spring:input path="login" type="text" class="form-control" placeholder="Login" required="required"/>
                    <spring:input path="password" type="password" class="form-control" placeholder="Password" required="required"/>
                    <spring:button type="submit" class="btn btn-success">Sign in</spring:button>
                </div>
            </div>
        </spring:form>
    </div>
</div>

<div class="jumbotron">

    <div class="container" style="text-align: center">
        <h1 style="margin-bottom: 50px">Welcome to our Hostel!</h1>
    </div>

    <hr>

    <div class="container" style="margin-top: 50px">
        <div class="row">
            <div class="col-xs-6">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="datetimepicker1">Check in Date: </label>
                        <div class="col-xs-6">
                            <div class="input-group date" id="datetimepicker1">
                                <input type="text" class="form-control" placeholder="Check in Date:" name="dateIn" required="required"/>
                                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                  </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="datetimepicker2">Check out Date: </label>
                        <div class="col-xs-6">
                            <div class="input-group date" id="datetimepicker2">
                                <input type="text" class="form-control" placeholder="Check out Date:" name="dateOut" required="required" />
                                <span class="input-group-addon">
                  <span class="glyphicon glyphicon-calendar"></span>
                </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="check3">Guests: </label>
                        <div class="col-xs-6">
                            <input class="form-control" id="check3" type="number" placeholder="guest's number" name="numOfClient" min="1" max="15" required="required">
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


<!--Расценки на комнаты-->
<div class="container">

    <h1 style="text-align: center; padding: 10px">FREE ROOMS</h1>

    <table>
        <thead>
        <tr>
            <th>Room type</th>
            <th>Average price per night</th>
            <th>Choose</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Single</td>
            <td>10$</td>
            <td>
                <input type="radio" name="rb" value="option1">
            </td>
        </tr>
        <tr>
            <td>Double</td>
            <td>20$</td>
            <td>
                <input type="radio" name="rb" value="option2">
            </td>
        </tr>
        <tr>
            <td>Tripe</td>
            <td>30$</td>
            <td>
                <input type="radio" name="rb" value="option3">
            </td>
        </tr>
        <tr>
            <td>4 places room</td>
            <td>40$</td>
            <td>
                <input type="radio" name="rb" value="option4">
            </td>
        </tr>
        <tr>
            <td>5 places room</td>
            <td>50$</td>
            <td>
                <input type="radio" name="rb" value="option5">
            </td>
        </tr>
        <tr>
            <td>6 places room</td>
            <td>60$</td>
            <td>
                <input type="radio" name="rb" value="option6">
            </td>
        </tr>
        <tr>
            <td>7 places room</td>
            <td>70$</td>
            <td>
                <input type="radio" name="rb" value="option7">
            </td>
        </tr>
        <tr>
            <!--После тотал в спане будет появляться посчитаное значение (с js легко выводится)-->
            <td colspan="3" style="text-align: left; color: orange">
                TOTAL: <span></span>
            </td>
        </tr>
        </tbody>
    </table>



    <%--<a href="/views/payment.jsp" class="btn btn-warning pull-right" style="margin-bottom: 45px">Proceed to checkout
        <span class="glyphicon glyphicon-chevron-right"></span></a>--%>

<spring:form method="post" modelAttribute="userJSP" action="check-out">
    <spring:button type="submit" class="btn btn-warning pull-right" style="margin-bottom: 45px">Proceed to checkout
        <span class="glyphicon glyphicon-chevron-right"></span>
    </spring:button>
</spring:form>

</div>

<!--Footer-->
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
                <i class="fa fa-instagram fa-stack-1x" style="color: #8fbc8f; margin-top: -1px"></i>
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

<!-- Script for Datetimepicker  -->
<script>

    $(function () {

        var todayDate = new Date();

        var checkInPicker = $('#datetimepicker1').datetimepicker({
            pickTime: false,
            language: 'ru',
            minDate: todayDate
        });
        var checkOutPicker = $('#datetimepicker2').datetimepicker({
            pickTime: false,
            language: 'ru',
            minDate: todayDate
        });

        checkInPicker.on('dp.change', function(e) {
            checkOutPicker.data('DateTimePicker').setMinDate(e.date);
        });


        checkOutPicker.on('dp.change', function(e) {
            checkInPicker.data('DateTimePicker').setMaxDate(e.date);
        });

    });

</script>

</body>

</html>
