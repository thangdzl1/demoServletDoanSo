<%@ page isELIgnored="false" %>
<%@ page import="model.userInputServlet" %>
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
          <tr>
            <td class="number">1</td>
            <td class="name">Lee Taeyong</td>
            <td class="points">
              258.244 <img class="gold-medal" src="https://github.com/malunaridev/Challenges-iCodeThis/blob/master/4-leaderboard/assets/gold-medal.png?raw=true" alt="gold medal"/>
            </td>
          </tr>
          <tr>
            <td class="number">2</td>
            <td class="name">Mark Lee</td>
            <td class="points">258.242</td>
          </tr>
          <tr>
            <td class="number">3</td>
            <td class="name">Xiao Dejun</td>
            <td class="points">258.223</td>
          </tr>
          <tr>
            <td class="number">4</td>
            <td class="name">Qian Kun</td>
            <td class="points">258.212</td>
          </tr>
          <tr>
            <td class="number">5</td>
            <td class="name">Johnny Suh</td>
            <td class="points">258.208</td>
          </tr>
        </table>
        <div id="buttons">
        <form action="<%=contextPath%>/main" method="post">
          <button class="continue">Continue</button>
        </form>
        </div>
      </div>
    </main>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
