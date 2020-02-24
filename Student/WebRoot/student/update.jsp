<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>update page</title>
<link href="../css/regist.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery-1.8.3.min.js">	
</script>
</head>

<body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
	<form action="updateStudent.action" enctype="multipart/form-data" method="post">
			<div class="window" align="left">
				<div class="tit">修改个人信息</div>
				<div class="main">
					<div align="left">
    					<s:hidden name="student.SNo" value="%{student.SNo}"></s:hidden>
					</div>
					<div align="left">
						<s:textfield name="student.SName" label="姓名" value="%{student.SName}"></s:textfield>
					</div>
					<div align="left">
						 <s:textfield name="student.SClass" label="班级" value="%{student.SClass}"></s:textfield>
					</div>
					<div align="left">
						<s:textfield name="student.SSex" label="性别" value="%{student.SSex}"></s:textfield>
					</div>
					<div align="left">
						<s:textfield name="student.SEmail" label="邮箱" value="%{student.SEmail}"></s:textfield>
					</div>
					<div align="left">
						<s:textfield name="student.STel" label="手机" value="%{student.STel}"></s:textfield>
					</div>
					<div align="left">
						<s:textfield name="student.SUsername" label="账号" value="%{student.SUsername}"></s:textfield>
					</div>
					<div align="left">
						<s:textfield name="student.SPassword" label="密码" value="%{student.SPassword}"></s:textfield>
					</div>
					
					
					<br />
					<div align="right">
						<input type="submit" value="修改" style="width: 65px; height: 35px; line-height: 35px; overflow: hidden; text-align: center; float: left; margin-left: 270px;" />
					</div>
				</div>
			</div>
		</form><center>
		
	</center>
</body>
</html>

<%-- <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'insert.jsp' starting page</title>

  </head>
  <body>
    <s:form action="updateStudent" method="post">
    	<s:hidden name="student.SNo"  value="%{student.SNo}"></s:hidden>
      	<s:textfield name="student.SName" label="姓名" value="%{student.SName}"></s:textfield>
        <s:textfield name="student.SClass" label="班级" value="%{student.SClass}"></s:textfield>
        <s:submit value="修改"></s:submit>
    </s:form>
  </body>
</html> --%>