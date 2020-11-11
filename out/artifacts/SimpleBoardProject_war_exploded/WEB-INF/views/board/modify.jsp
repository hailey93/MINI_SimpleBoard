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
    <title>글수정</title>

    <script type="text/javascript">
        $(document).ready(function (){
            var formObj=$("form");
            $('button').on('click', function (e){
                //기본동작 막기
                e.preventDefault();
                var operation=$(this).data('oper');
                console.log(operation);
                if(operation==='remove'){
                    formObj.attr('action', '/board/remove');
                } else if(operation==='list'){
                    formObj.attr("action", "/board/list").attr("method", "get");
                    formObj.empty();
                }
                formObj.submit();
            })
            }
        )
    </script>

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <form role="form" action="/board/modify" method="post">
                <div class="form-group">
                    <label>글번호</label>
                    <input class="form-control" name="num" value='<c:out value="${board.num}"/>' readonly="readonly">
                </div>
                <div class="form-group">
                    <label>글제목</label>
                    <input class="form-control" name="title" value='<c:out value="${board.title}"/>'>
                </div>
                <div class="form-group">
                    <label>글내용</label>
                    <textarea class="form-control" name="content" rows="5"><c:out value="${board.content}"/> </textarea>
                </div>
                <div class="form-group">
                    <label>작성자</label>
                    <input class="form-control" name="id" value='<c:out value="${board.id}"/>' readonly="readonly"/>
                </div>

                <button type="submit" data-oper="modify" class="btn btn-default">수정</button>
                <button type="submit" data-oper="remove" class="btn btn-danger">삭제</button>
                <button type="submit" data-oper="list" class="btn btn-info">목록으로</button>

            </form>
        </div>
    </div>
</div>
</body>

</html>
