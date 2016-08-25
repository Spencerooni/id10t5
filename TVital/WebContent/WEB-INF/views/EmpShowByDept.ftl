<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees By Department</title>
</head>
<body>
<table border=1>
<tr><th>Name</th><th>Department</th>
<#list emps as e>
<tr><td>
${e.getFirstName()} ${e.getLastName()}</td>
<td>${e.getDepartmentName()}
</td></tr>
</#list>
</table>
</body>
</html>