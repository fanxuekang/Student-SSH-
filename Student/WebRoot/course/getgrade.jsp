<%@page import="com.course.dao.Course"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'getgrade.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
    	 <s:set var="SCNo" value="%{grade.SCNo}" scope="session"></s:set>
    	 <s:set var="SNo" value="%{grade.SNo}" scope="session"></s:set>
    	 <s:set var="CNo" value="%{grade.CNo}" scope="session"></s:set>
    	 <s:set var="Score" value="%{grade.Score}" scope="session"></s:set>
    	 <%-- <s:a href="course/getCourse.action?course.CNo=<%=session.getAttribute(\"CNo\") %>">test</s:a> --%>
    	<jsp:forward  page="getCourse.action">
    	 	<jsp:param value='<%=session.getAttribute("CNo") %>' name="course.CNo"/>
    	 </jsp:forward>
  </body>
</html>
