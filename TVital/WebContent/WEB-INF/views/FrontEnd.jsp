<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
<style>
table{
 border: 1px solid black;
}
</style>
<meta charset="UTF-8">
<title>JstlForm</title>
</head>
<body>
<table>
<tbody>
<form action = "add.html" method="post">
<tr><td>First Name:</td><td><input name="firstName"/></td></tr>
<tr><td>Last Name:</td><td><input name="lastName"/></td></tr>
<!--<tr><td>Employee ID:</td><td><input name="IDInput"/></td></tr>
<tr><td>National Insurance Number:</td><td><input name="NINInput"/></td></tr>
<tr><td>IBAN:</td><td><input name="IBANInput"/></td></tr>
<tr><td>BIC:</td><td><input name="BICInput"/></td></tr>
<tr><td>Salary:</td><td><input name="SalaryInput"/></td></tr>
<tr><td>City:</td><td><input name="CityInput"/></td></tr>
<tr><td>Country:</td><td><input name="CountryInput"/></td></tr>
<tr><td>Postcode:</td><td><input name="PostcodeInput"/></td></tr>
<tr><td>Address</td><td><input name="AddressInput"/></td></tr>
-->
<tr><td><input type ="submit" value="SUBMIT" ></td></tr>
</form>

<tr>
	<td>
		<form action = "HomePage.html" method ="get">
			<input type ="submit" value ="Home Page">
		</form>
	</td>
</tr>
</table>


</body>
</html>