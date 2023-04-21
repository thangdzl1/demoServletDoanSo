<%@ page isELIgnored="false" %>
<%@ page import="model.userInputServlet" %>
<%@ page contentType="text/html; charset=UTF-8"%>
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
        <% userInputServlet input = new userInputServlet(); %>
        <% String contextPath = request.getContextPath(); %>
        <h3>${msg}</h3>
        <form action="<%=contextPath%>/main" method="post">
            <div class="form-group">
              <label>Nhập số</label>
              <input type="integer" class="form-control" name="input">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
      </div>
      </div>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
