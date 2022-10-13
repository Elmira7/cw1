<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<style><%@include file="/css/home.css" %></style>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>
<body>
    <h1>${requestScope.time}</h1>
    <c:out value="${requestScope.time}"/>
    <c:if test="${10 > 5}">
        <h1>Yes</h1>
    </c:if>
</body>
</html>
