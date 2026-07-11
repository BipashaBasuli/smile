<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table width= "100%" border=2>
<tr>
<td>

<%@include file ="header.jsp"%>

</td>
</tr>


<tr>
<td>

<%@include file ="navbar.jsp"%>

</td>
</tr>

<tr>
<td>

	<h1 style="color: red">
		<marquee> We are entering Exciting world web application !!</marquee>
	</h1>
	
	<form action="views-all-students.jsp" method="get">
		<table border=2 align=center>
			<tr>

				<td colspan=2><font style="font-weight: bold; color: blue">Student
						Registration Form</font>
				<td>
			<tr>
			<tr>
				<td>ID :</td>
				<td><input type="text" name="id" /></td>

			</tr>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" /></td>

			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="text" name="email" /></td>

			</tr>
			<tr>
				<td>City :</td>
				<td><input type="text" name="city" /></td>

			</tr>
			<tr>
				<td>Age :</td>
				<td><input type="text" name="age" /></td>

			</tr>
			<tr>
				<td><input type="submit" name="Click Me" /></td>
				<td><input type="reset" name="reset" /></td>

			</tr>

		</table>

	</form>

</body>
</html>
</td>
</tr>

<tr>
<td>

<%@include file ="footer.jsp"%>

</td>
</tr>

</table>


</body>
</html>