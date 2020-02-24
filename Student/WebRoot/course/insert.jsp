<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'insert.jsp' starting page</title>
  </head>
  
  <body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
   <s:form action="insertCourse" method="post">
    <s:textfield name="course.CNo" label="课号"></s:textfield>
      <s:textfield name="course.CName" label="课程名"></s:textfield>
        <s:textfield name="course.CTerm" label="学期"></s:textfield>
         <s:textfield name="course.CCre" label="学分"></s:textfield>
        <s:submit value="添加"></s:submit>
      </s:form>
      <s:form action="insertGrade" method="post">
    <s:textfield name="grade.SCNo" label="学号课号"></s:textfield>
      <s:textfield name="grade.SNo" label="学号"></s:textfield>
        <s:textfield name="grade.CNo" label="课号"></s:textfield>
         <s:textfield name="grade.Score" label="成绩"></s:textfield>
        <s:submit value="添加"></s:submit>
    </s:form>
  </body>
</html>
