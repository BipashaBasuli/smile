<%@page import="com.cemk.training.jdbc.StudentDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.cemk.training.jdbc.StudentService"%>
<% 
    StudentService studentService = new StudentService();
    List<StudentDTO>  listOfStudents = studentService.getAllStudents();
    
  %>
  
<table class="table table-dark" width="100%" align="center" border=1 cellspacing=0>
  <thead>
    <tr>
      <th scope="col">#ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">City</th>
      <th scope="col">Age</th>
      <th scope="col">Action-1</th>
      <th scope="col">Action-2</th>
      
    </tr>
  </thead>
  <tbody>
  
  <% for(StudentDTO  student:listOfStudents ){ %>
    <tr>
   
      <td ><%=student.getStudentId()%></td>
      <td><%=student.getStudentName()%></td>
      <td><%=student.getStudentEmail() %></td>
      <td><%=student.getStudentCity() %></td>
      <td><%=student.getStudentAge() %></td>
      <td><a href="edit-student.jsp?id=<%=student.getStudentId()%>"> Edit</a>
      <td><a href="delete-student.jsp?id=<%=student.getStudentId()%>"> Delete</a>
    </tr>
  
  <%} %>
  </tbody>
</table>