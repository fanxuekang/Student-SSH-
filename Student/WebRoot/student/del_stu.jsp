<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'del_stu.jsp' starting page</title>
  </head>
  
  <body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
  <jsp:useBean id="operator" class="entity.Operator"></jsp:useBean>
  	<jsp:useBean id="operimpl" class="impl.OperatorImpl"></jsp:useBean>
  	<jsp:useBean id="role" class="entity.Role"></jsp:useBean>
  	<%
  		operator.setName(request.getParameter("student.SNo"));
  		operimpl.delete(operator);
  		String s = request.getParameter("student.SNo");
  	 %>
  	 <jsp:forward page="deleteStudent.action?student.SNo=<%=s %>"></jsp:forward>
  </body>
</html>
