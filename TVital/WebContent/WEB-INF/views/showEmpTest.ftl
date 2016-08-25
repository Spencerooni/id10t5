<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test</title>
</head>
<body>
<table border=1>
<#list emps as e>
<tr><td>
${e.getFName()}</td> <td>${e.getLName()}
</td></tr>
</#list>
</table>
</body>
</html>