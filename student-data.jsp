<%@page import="java.util.List"%>
<%@page import="com.cemk.training.jdbc.StudentDTO"%>
<%@page import="com.cemk.training.jdbc.StudentService"%>
<%
       String studentId = request.getParameter("id");
       String studentName = request.getParameter("name");
       String studentEmail  = request.getParameter("email");
       String studentCity = request.getParameter("city");
       String studentAge = request.getParameter("age");
  
  %>
  
  <%
    
    StudentService studentService = new StudentService();

	StudentDTO st = new StudentDTO();

	
	st.setStudentId(studentId);	
	st.setStudentName(studentName);
	st.setStudentEmail(studentEmail);	
	st.setStudentCity(studentCity);	
	st.setStudentAge(Integer.parseInt(studentAge));
	String message = studentService.createStudent(st);
    out.println("Message: " + message);
  List<StudentDTO> listOfStudent=studentService.getAllStudents();
  
    
  %>
 
 
 <jsp:forward page="home.jsp"/>
   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  