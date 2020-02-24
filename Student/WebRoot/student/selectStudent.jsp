<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<html>
  <head>
    <title>My JSP 'selectStudent.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>regist page</title>
		<link href="../css/regist.css" rel="stylesheet" type="text/css" />
		<script src="../js/jquery-1.8.3.min.js"></script>
  </head>
  
  <body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
  	<%-- <s:form action="getStudentBySNo">
    	<s:textfield name="student.SNo" label="学号"></s:textfield>
        <s:textfield name="student.SClass" label="班级"></s:textfield>
        <s:textfield name="student.SName" label="姓名"></s:textfield>
        <s:submit value="查询"></s:submit>
    </s:form> --%>
    <center>
			<form action="select.jsp">
				<div class="window" align="left">
					
					<div class="tit">
						查询学生
					</div>
					<div class="main">
					
						<div align="left">
							<h4>按条件查询：</h4>
							<select name="select" id="select" style="width: 65px; height: 31px; line-height: 35px; overflow: hidden; text-align: center; float: left; margin-left: 0px;"	>
					    		<option value ="SNo">学号</option>
					  			<option value ="SName">姓名</option>
					  			<option value ="SClass">班级</option>
					    	</select>
						
						&nbsp;&nbsp;&nbsp;	
    	
    	<input type="text" name="sel">
    	</div>
    	<div align="left">
    	<input type="submit" value="查询" style="width: 65px; height: 35px; line-height: 35px; overflow: hidden; text-align: center; float: left; margin-left: 0px;">
    	</div>
    	</div>
    	</div>
    </form>
    </center>
  </body>
</html>
