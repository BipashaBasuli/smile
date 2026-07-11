<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="LoginServlet" method="post">
		<fieldset>
			<legend> Login Form</legend>
			
			<table align="center">
			<tr>
			  <td colspan="1">
			   <%
			     String message =(String)request.getAttribute("message");  //->type casting
		//	     out.print("message =>"+message);
			     if(message!=null){
			   
			   %>
			   
			   <font style="color:red"><%=message %></font>
			   <%}%>
			  </td>
			</tr>
				<tr>
					<td>User Id</td>
					<td><input type="text" name="user" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Role</td>
					<td><select name="role">
							<option value="">-: Select :-></option>
							<option value="admin">Admin</option>
							<option value="member">Member</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="submit"
						value="Login"> <input type="reset" name="reset"
						value="Reset"></td>
				</tr>

			</table>
		</fieldset>

	</form>
</body>
</html>