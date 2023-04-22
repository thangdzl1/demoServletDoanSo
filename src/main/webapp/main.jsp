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
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <script src="https://unpkg.com/@phosphor-icons/web"></script>
  <link
      href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="style.css">
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
            <form action="leaderboard" method="post">
                <div class="form-group">
                    <label style = "color: red;">Nhập tên</label>
                    <input type="String" class="form-control" name="name">
                    <input type="hidden" name="count" value="${count}">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </c:if>

      </div>
      </div>
  </div>
</div>

<div class="container">
  <div class="row mt-5">
    <div class="col-md-7 m-auto mt-5">
  <main>
      <div id="header">
        <h1>Ranking</h1>
        <button class="share">
          <i class="ph ph-share-network"></i>
        </button>
      </div>
      <div id="leaderboard">
        <div class="ribbon"></div>
        <table>
            <c:forEach items = "${list}" var="o" varStatus="status" >
          <tr>
            <td class="number">${status.index+1}</td>
            <td class="name">${o.name}</td>
            <td class="points">${o.count}</td>
          </tr>
          </c:forEach>
        </table>
      </div>
    </main>
  </div>
  </div>
</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
