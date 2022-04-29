<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<style type="text/css">
    TABLE {
        width: 400px; /* Ширина таблицы */
        border-collapse: collapse; /* Убираем двойные линии между ячейками */
    }
    TD, TH {
        padding: 3px; /* Поля вокруг содержимого таблицы */
        border: 1px solid black; /* Параметры рамки */
    }
    TH {
        background: #b0e0e6; /* Цвет фона */
    }
</style>

<body>
<h2>All Employees</h2>
<br>
<table>
    <tr>
        <th><h4>Name</h4></th>
        <th><h4>Surname</h4></th>
        <th><h4>Department</h4></th>
        <th><h4>Salary</h4></th>
        <th><h4>Operations</h4></th>
    </tr>
    <c:forEach var="emp" items="${allEmps}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
    <tr>
        <td>${emp.name}</td>
        <td>${emp.surname}</td>
        <td>${emp.department}</td>
        <td>${emp.salary}</td>
        <td>
            <input type="button" value="Update" onclick="window.location.href='${updateButton}'">
            <input type="button" value="Delete" onclick="window.location.href='${deleteButton}'">
        </td>
    </tr>
    </c:forEach>
</table
    <br><br>
<input type="button" value="Add" onclick="window.location.href='addNewEmployee'"/>
</body>
</html>
