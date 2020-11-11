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
    <title>게시글 조회</title>

    <script type="text/javascript">
        $(document).ready(function (){
                var operForm=$("#operForm");
                $("button[data-oper='modify']").on('click', function (e){
                    operForm.attr("action","/board/modify").submit();
                })
                $("button[data-oper='list']").on('click', function (e){
                    operForm.find("#num").remove();
                    operForm.attr("action", "/board/list")
                    operForm.submit();
                })
            }
        )
    </script>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="form-group">
                    <label>글번호</label>
                    <input class="form-control" name="num" value='<c:out value="${board.num}"/>' readonly="readonly">
                </div>
                <div class="form-group">
                    <label>글제목</label>
                    <input class="form-control" name="title" value='<c:out value="${board.title}"/>' readonly="readonly">
                </div>
                <div class="form-group">
                    <label>글내용</label>
                    <textarea class="form-control" name="content" rows="5"readonly="readonly"><c:out value="${board.content}"/> </textarea>
                </div>
                <div class="form-group">
                    <label>작성자</label>
                    <input class="form-control" name="id" value='<c:out value="${board.id}"/>' readonly="readonly"/>
                </div>
                <div class="form-group">
                    <label>작성일</label>
                    <input class="form-control" name="regDate" value='<fmt:formatDate pattern="yyyy-MM-dd" value="${board.regDate}"/>' readonly="readonly"/>
                </div>
                <div class="form-group">
                    <label>수정일</label>
                    <input class="form-control" name="updateDate" value='<fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}"/>' readonly="readonly"/>
                </div>
                <button data-oper="modify" class="btn btn-default" >수정</button>
                <button data-oper="list" class="btn btn-info">목록으로</button>

                <form id='operForm' action="/board/modify" method="get">
                    <input type="hidden" id="num" name="num" value='<c:out value="${board.num}"/> '>
                </form>
        </div>
        </div>
    </div>
</body>

</html>
