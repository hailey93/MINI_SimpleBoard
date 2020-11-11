<%--
  Created by IntelliJ IDEA.
  User: gkgus
  Date: 2020-11-09
  Time: 오전 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="/image/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="/css/animate.css">
    <link rel="stylesheet" type="text/css" href="/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="/css/perfect-scrollbar.css">
    <link rel="stylesheet" type="text/css" href="/css/util.css">
    <link rel="stylesheet" type="text/css" href="/css/main.css">

    <script src="js/select2.min.js"></script>
    <script src="js/main.js"></script>
    <%@include file="../includes/header.jsp"%>
    <title>게시판</title>
    <script type="text/javascript">
        $(document).ready(function (){
            var result='<c:out value="${result}"/> ';
            checkModal(result);

            history.replaceState({}, null, null);
            function checkModal(result){
                if(result===' '||history.state){
                    return;
                }
                if(parseInt(result)>0){
                    $(".modal-body").html("게시글 "+parseInt(result)+" 번이 등록되었습니다.");
                }
                $("#myModal").modal('show');
            }

            $("#regBtn").on("click", function (){
                self.location="/board/register";
            });

        });
    </script>
</head>
<body>

<div class="limiter">
    <div class="container-table100">
        <div class="wrap-table100">
            <div class="panel-heading" style="width: 100%; font-size: 20px; color: white">게시판
                <button id="regBtn" type="button" class="btn pull-right" style="background-color: #333; color:white">게시글 작성</button>
            </div>
            <div class="table100">
                <table>
                    <thead>
                    <tr class="table100-head">
                        <th class="column1">글번호</th>
                        <th class="column2">제목</th>
                        <th class="column3">작성자</th>
                        <th class="column4">작성일</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="board">
                        <tr>
                            <td class="column1"><c:out value="${board.num}"/></td>
                            <td class="column2"><a href='/board/get?num=<c:out value="${board.num}"/>'><c:out value="${board.title}"/></a></td>
                            <td class="column3"><c:out value="${board.id}"/></td>
                            <td class="column4"><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regDate}"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Modal Title</h4>
                            </div>
                            <div class="modal-body">처리가 완료되었습니다.</div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
