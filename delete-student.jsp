<%@ page import="com.cemk.training.jdbc.StudentService" %>

<%
    String studentId = request.getParameter("id");

    StudentService service = new StudentService();
    String message = service.deleteStudent(studentId);
    service.deleteStudent(studentId);
%>
 <jsp:forward page="home.jsp"/>
