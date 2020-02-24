<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
  </head>
  <body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
  	<jsp:useBean id="operator" class="entity.Operator"></jsp:useBean>
  	<jsp:useBean id="operimpl" class="impl.OperatorImpl"></jsp:useBean>
  	<jsp:useBean id="role" class="entity.Role"></jsp:useBean>
  	<%
  		operator.setName(request.getParameter("student.SUsername"));
  		operator.setPwd(request.getParameter("student.SPassword"));
  		operator.setRole(role);
  		operimpl.add(operator);
  	 %>
  	 <jsp:forward page="insertStudent.action"></jsp:forward>
  </body>
</html>
