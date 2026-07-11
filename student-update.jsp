<%@page import="com.cemk.training.jdbc.StudentService"%>
<%@page import="com.cemk.training.jdbc.StudentDTO"%>

<%
String StudentId = request.getParameter("id");
String StudentName = request.getParameter("name");
String StudentEmail = request.getParameter("email");
String StudentCity = request.getParameter("city");
String StudentAge = request.getParameter("age");

StudentService service = new StudentService();
StudentDTO studentDTO = new StudentDTO();

studentDTO.setStudentId(StudentId);
studentDTO.setStudentName(StudentName);
studentDTO.setStudentEmail(StudentEmail);
studentDTO.setStudentCity(StudentCity);
studentDTO.setStudentAge(Integer.parseInt(StudentAge));


String messege = service.updateStudent(studentDTO);

%>
<%=messege%>
 <jsp:forward page="home.jsp"/>
