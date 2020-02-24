<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>My JSP 'select.jsp' starting page</title>
  </head>
  
  <body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
  	<%
  		String sel = request.getParameter("sel");
  		String select = request.getParameter("select");
  		session.setAttribute("sel", sel);
  		session.setAttribute("select", select);
  	%>
  	<jsp:forward page="select.action"></jsp:forward>
  </body>
</html>
