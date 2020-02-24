<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>My JSP 'insert.jsp' starting page</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>regist page</title>
		<link href="../css/regist.css" rel="stylesheet" type="text/css" />
		<script src="../js/jquery-1.8.3.min.js"></script>
</head>

<body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
	<%-- <s:form action="add_stu.jsp" method="post">
		<s:textfield name="student.SNo" label="学号"></s:textfield>
		<s:textfield name="student.SName" label="姓名"></s:textfield>
		<s:textfield name="student.SClass" label="班级"></s:textfield>
		<s:textfield name="student.SEmail" label="邮箱"></s:textfield>
		<s:textfield name="student.STel" label="电话"></s:textfield>
		<s:textfield name="student.SUsername" label="账号"></s:textfield>
		<s:textfield name="student.SPassword" label="密码"></s:textfield>
		<s:submit value="添加"></s:submit>
	</s:form> --%>
	<center>
			<form action="add_stu.jsp" method="post">
				<div class="window" align="left">

					<div class="tit">
						添加学生
					</div>
					<div class="main">
						<div align="left">
							学号：
							<input type="text" name="student.SNo" />
						</div>
						<div align="left">
							姓名：
							<input type="text" name="student.SName" />
						</div>
						<div align="left">
							性别：
							<input style="width: 20px; height: 20px" name="student.SSex" type="radio"
								value="男" checked="checked" />
							男 &nbsp;&nbsp;&nbsp;&nbsp;
							<input style="width: 20px; height: 20px" name="student.SSex" type="radio"
								value="女" />
							女
						</div>
						<div align="left">
							班级：<input type="text" name="student.SClass" />
						</div>
						<div align="left">
							电话：
							<input type="text" name="student.STel" />
						</div>
						<div align="left">
							邮箱：
							<input type="text" name="student.SEmail" />
						</div>
						<div align="left">
							账号：
							<input type="text" name="student.SUsername" />
						</div>
						<div align="left">
							密码：
							<input type="text" name="student.SPassword" />
						</div>
						<br />
						<div align="center">
							<input type="submit" value="添加"
								style="width: 65px; height: 35px; line-height: 35px; overflow: hidden; text-align: center; float: left; margin-left: 130px;" />
						</div>
					</div>
				</div>
			</form>
		</center>
</body>
</html>
