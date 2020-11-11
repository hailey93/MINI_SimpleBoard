<%--
  Created by IntelliJ IDEA.
  User: gkgus
  Date: 2020-11-09
  Time: 오후 4:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="utf-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <%@include file="../includes/header.jsp"%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" type="text/css" href="/css/form.css">
    <title>글쓰기</title>

    <script type="text/javascript">
        $(function (){
            $("#register").click(function (e){
                if($("#title").val()==''){
                    alert('제목을 작성해주세요!');
                    e.preventDefault();
                } else if($("#content").val()==''){
                    alert('글내용을 작성해주세요!');
                    e.preventDefault();
                } else if ($("#id").val()==''){
                    alert('작성자를 작성해주세요!');
                    e.preventDefault();
                }
            })
        })
    </script>

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <form id="operForm" role="form" action="/board/register" method="post">
                <div class="form-group">
                    <label>글제목</label>
                    <input class="form-control" id="title" name="title">
                </div>
                <div class="form-group">
                    <label>글내용</label>
                    <textarea class="form-control" id="content" name="content" rows="5"></textarea>
                </div>
                <div class="form-group">
                    <label>작성자</label>
                    <input class="form-control" id="id" name="id"/>
                </div>
                <button id="register" type="submit" class="btn btn-default">작성하기</button>
                <button type="reset" class="btn btn-default">리셋</button>

            </form>
        </div>
    </div>
</div>
</body>

</html>
