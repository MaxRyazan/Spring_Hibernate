<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Employee info</h2>

<form:form action="saveEmployee" modelAttribute="employee">
    <form:hidden path="id"/>
    Name<form:input path="name"  cssStyle="position: absolute;left:6%;"/>
    <br><br>
    Surname<form:input path="surname"  cssStyle="position: absolute;left:6%;"/>
    <br><br>
    Department<form:input path="department"  cssStyle="position: absolute;left:6%;"/>
    <br><br>
    Salary<form:input path="salary"  cssStyle="position: absolute;left:6%;"/>
    <br><br>
    <input type="submit" value="Ok">
</form:form>
</body>
</html>
