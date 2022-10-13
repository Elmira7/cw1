<%--
  Created by IntelliJ IDEA.
  User: Elmira
  Date: 13.10.2022
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>авторизация</title>
  <style> <%@include file="style.css"%></style>
<%--  <link rel="stylesheet" href="../style.css">--%>
<body>
<div class="block">
  <form class="foorm" action="/authorization/order" method="get">
  <h2 class="authorization">Aвторизация</h2>
  <div class="container">
    <label ><b>Логин</b></label>
    <input name="login" type="text" placeholder="введите логин" >

    <label ><b>Пароль</b></label>
    <input type="password" placeholder="введите пароль" >

    <button type="submit">Вход</button>
    <label>
      <input name="password" type="checkbox" checked="checked" > запомнить меня
    </label>
  </div>

  <div class="container">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
  </form>
</div>

</body>
</html>
