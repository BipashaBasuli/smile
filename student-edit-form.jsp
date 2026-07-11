<%@page import="com.cemk.training.jdbc.StudentService"%>
<%@page import="com.cemk.training.jdbc.StudentDTO"%>
<%
String studentId = request.getParameter("id");
StudentService service = new StudentService();

StudentDTO studentObj = service.getSingleStudent(studentId);


%>


<form action="student-update.jsp" method="get">
	<table border=2 align=center>
		<tr>

			<td colspan=2><font style="font-weight: bold; color: blue">
					Update Student Data</font>
			<td>
		<tr>
		<tr>
			<td>ID :</td>
			<td><input type="text" name="id"value="<%=studentObj.getStudentId()%>" readonly /></td>
		</tr>

		<tr>
			<td>Name :</td>
			<td><input type="text" name="name"value="<%=studentObj.getStudentName()%>" /></td>
		</tr>

		<tr>
			<td>Email :</td>
			<td><input type="text" name="email"	value="<%=studentObj.getStudentEmail()%>" /></td>
		</tr>

		<tr>
			<td>City :</td>
			<td><input type="text" name="city"value="<%=studentObj.getStudentCity()%>" /></td>
		</tr>

		<tr>
			<td>Age :</td>
			<td><input type="text" name="age"value="<%=studentObj.getStudentAge()%>" /></td>
		</tr>

		<tr>
			<td><input type="submit" value="Update" /></td>
			<td><input type="reset" value="Reset" /></td>
		</tr>