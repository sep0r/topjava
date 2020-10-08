<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/style.css">
    <title>Meals</title>
    <style>
        .normal {
            color: green
        }

        .excess {
            color: red
        }
    </style>
</head>
<body>
<section>
    <h2><a href="index.html">Home</a></h2>
    <h3>Meals</h3>
    <hr>
    <table border="1" cellpadding="8" cellspacing="0">
        <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Calories</th>
            <%--            <th>Update</th>--%>
            <%--            <th>Delete</th>--%>
        </tr>
        <c:forEach items="${mealTo}" var="meal">
            <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.MealTo"/>
            <tr class="${meal.excess ? 'excess':'normal'}">
                <td><%=TimeUtil.toString(meal.getDateTime())%>
                </td>
                <td>${meal.description}</td>
                <td>${meal.calories}</td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="4">
                <a href="resume?action=add"><img src="img/add.png">Add Meal</a>
            </td>
        </tr>
    </table>
</section>
</body>
</html>