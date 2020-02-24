<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'insert.jsp' starting page</title>
    <link href="../css/regist.css" rel="stylesheet" type="text/css" />
	<script src="../js/jquery-1.8.3.min.js"></script>
  </head>
  
  <body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
  <center>
			
				<div class="window" align="left">

					<div class="tit">
						添加成绩
						</div>
						</div>
	</center>	
	<s:form action="insertCourse.action" method="post" cssStyle="margin-left:250px;">			
    <s:textfield name="course.CNo" label="课号" cssStyle="border:hidden; size:10px; width:145px;height:30px;background-color:rgba(255,255,255,0.5)"	></s:textfield>
      <s:textfield name="course.CName" label="课程名" cssStyle="border:hidden; size:10px; width:145px;height:30px;background-color:rgba(255,255,255,0.5)"></s:textfield>
        <s:textfield name="course.CTerm" label="学期" cssStyle="border:hidden; size:10px; width:145px;height:30px;background-color:rgba(255,255,255,0.5)"></s:textfield>
         <s:textfield name="course.CCre" label="学分" cssStyle="border:hidden; size:10px; width:145px;height:30px;background-color:rgba(255,255,255,0.5)"></s:textfield>
    <s:textfield name="grade.SCNo" label="学号课号" cssStyle="border:hidden; size:10px; width:145px;height:30px;background-color:rgba(255,255,255,0.5)"></s:textfield>
      <s:textfield name="grade.SNo" label="学号" cssStyle="border:hidden; size:10px; width:145px;height:30px;background-color:rgba(255,255,255,0.5)"></s:textfield>
        <s:textfield name="grade.CNo" label="课号" cssStyle="border:hidden; size:10px; width:145px;height:30px;background-color:rgba(255,255,255,0.5)"></s:textfield>
         <s:textfield name="grade.Score" label="成绩" cssStyle="border:hidden; size:10px; width:145px;height:30px;background-color:rgba(255,255,255,0.5)"></s:textfield>
        <s:submit value="添加" cssStyle="border:hidden; size:10px; width:90px;height:50px"></s:submit>
        </div>
        </div>
    </s:form>

  </body>
</html>
