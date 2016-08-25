<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees By Department</title>
</head>
<body>
<table border=1>
<tr><th>Name</th><th>Department</th>
<#list emp as e>
<tr><td>
${e.getFirstName()} ${e.getLastName()}</td>
<td>${e.getDeptment().getDeptName()}
</td></tr>
</#list>
</table>
</body>
</html>