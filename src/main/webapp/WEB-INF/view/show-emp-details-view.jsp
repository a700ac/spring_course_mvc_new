
<!DOCTYPE html>
<html>
<body>
<h2> Dear employee, you are Welcome!!!</h2>
<br>
<br>
Your Name is: ${employee.name}
<br><br>

Your Surname is: ${employee.surname}
<br><br>
Your Salary is Eur: ${employee.salary}
<br><br>
Yor Department is: ${employee.department}
<br><br>
Yor Car is: ${employee.carBrand}
<br><br>
Language(s):
<ul>
    <c:forEach var = "lang" items = "${employee.languages}">
        <li> ${lang} </li>
    </c:forEach>
</ul>
</body>

</html>