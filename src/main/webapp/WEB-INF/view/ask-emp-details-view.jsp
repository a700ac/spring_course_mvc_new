<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ivan.laukhin
  Date: 15.05.2024
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<body>

<h2>Dear employee, please enter yor details</h2>
<br>
<br>
<br>


<form:form action="showDetails"
           modelAttribute="employee">
    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
    </form:select>
    Which car do you want?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>
    Foreign language(s)
    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br><br>
    <input type="submit" value="ok">
</form:form>

</body>
</html>
