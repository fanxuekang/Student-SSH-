<%@page import="com.course.dao.Course"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'insert.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="../css/regist.css" rel="stylesheet" type="text/css" />
	<script src="../js/jquery-1.8.3.min.js"></script>
  </head>
  
  <body style="
	background-image: url(../images/05.jpg);
	background-size:100%;">
	<center>
	
					<br><br><br>
						<div class="tit">课程信息表</div>
    <s:form action="course/updateGrade.action" method="post">
    <s:textfield name="course.CNo" label="课号" value="%{#session.CNo}"></s:textfield>
      <s:textfield name="course.CName" label="课程名" value="%{course.CName}"></s:textfield>
        <s:textfield name="course.CTerm" label="学期" value="%{course.CTerm}"></s:textfield>
        <s:textfield name="course.CCre" label="学分" value="%{course.CCre}"></s:textfield>
    	<s:textfield name="grade.SCNo" label="序号" value="%{#session.SCNo}"></s:textfield>
      <s:textfield name="grade.SNo" label="学号" value="%{#session.SNo}"></s:textfield>
        <s:textfield name="grade.CNo" label="课程号" value="%{#session.CNo}"></s:textfield>
        <s:textfield name="grade.Score" label="成绩" value="%{#session.Score}"></s:textfield>
        <s:submit value="修改"></s:submit>
    </s:form>
    </center>
  </body>
</html>
