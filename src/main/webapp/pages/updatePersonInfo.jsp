<%@ page import="nju.wjw.vo.StudentCardVO" %>
<%@ page import="nju.wjw.vo.StudentVO" %><%--
  Created by IntelliJ IDEA.
  User: wangjiawei
  Date: 2017/2/13
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>学员卡信息修改</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Learn Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="/css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <!-- Custom Theme files -->
    <link href="/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="/css/jquery.countdown.css" />

    <!----font-Awesome----->
    <link href="/css/font-awesome.css" rel="stylesheet">
    <!----font-Awesome----->
    <script>
        $(document).ready(function(){
            $(".dropdown").hover(
                    function() {
                        $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
                        $(this).toggleClass('open');
                    },
                    function() {
                        $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
                        $(this).toggleClass('open');
                    }
            );
        });
    </script>
</head>
<body>

<jsp:include page="header.jsp" />

<div class="courses_banner">
    <div class="container">
        <h3>学员卡信息修改</h3>
        <p class="description">
            请按照格式修改学员卡信息
        </p>
        <div class="breadcrumb1">
            <ul>
                <li class="icon6"><a href="/">主页</a></li>
                <li class="icon6"><a href="/student/studentService">学员管理平台</a></li>
                <li class="current-page">学员卡信息修改</li>
            </ul>
        </div>
    </div>
</div>
<%
    StudentVO studentVO = (StudentVO)request.getAttribute("studentVO");
    StudentCardVO studentCardVO = (StudentCardVO) request.getAttribute("studentCardVO");
%>
<!-- //banner -->
<div class="courses_box1">
    <div class="container">
        <form class="login" action="/student/updatePersonalInfoPost" method="post">
            <p class="lead">学员卡号：<%=studentVO.studentCardID%>的信息</p>
            <div class="form-group">
                <input type="text" autocomplete="new-password" class="required form-control" placeholder="姓名 *" name="name" value="<%=studentVO.name%>">
            </div>
            <div class="form-group">
                <input type="text" autocomplete="new-password" class="required form-control" placeholder="年龄 *" name="age" value="<%=studentVO.age%>">
            </div>
            <div class="form-group">
                <input type="password" autocomplete="new-password" class="required form-control" placeholder="密码 *" name="password" value="<%=studentVO.password%>">
            </div>
            <div class="form-group">
                <input type="text" autocomplete="new-password"  class="required form-control" placeholder="Email *" name="email" value="<%=studentVO.email%>">
            </div>
            <div class="form-group">
                <input type="text" disabled="true" class="required form-control" value="余额：<%=studentVO.balance%>元">
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary btn-lg1 btn-block" name="submit" value="提交修改">
            </div>
        </form>
    </div>
</div>

</div>
</body>
</html>