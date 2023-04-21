<%@ page isELIgnored="false" %>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Đoán Số</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<div class="container">
  <div class="row mt-5">
    <div class="col-md-5 m-auto mt-5">
      <h3 class="text-center">GAME ĐOÁN SỐ</h3>
      <div class="p-4 border mt-4">

        <% String contextPath = request.getContextPath(); %>
        <h3 style = "color: rebeccapurple;">${msg}</h3>

        <c:if test="${msg != 'Số vừa đoán chính xác !'}">
        <form action="<%=contextPath%>/main" method="post">
            <div class="form-group">
                <label>Nhập số</label>
                <input type="number" class="form-control" name="input">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </c:if>

        <c:if test="${msg == 'Số vừa đoán chính xác !'}">
                <div class="form-group">
                    <label style = "color: red;">Nhập tên</label>
                    <input type="String" class="form-control" name="name">
                </div>
            <form action="leaderboard.jsp" method="post">
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </c:if>

      </div>
      </div>
  </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
