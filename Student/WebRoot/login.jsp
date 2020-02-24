<%-- <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>学生信息管理系统</title>
<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="js/login.js" type="text/javascript"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">



</head>
<body style="background-image:url(images/05.jpg)" >
<center> 
		<div class="login">
			<div class="login_head">
				<h3>欢迎登陆学生信息管理系统</h3>
			</div>
			<div class="login_window" style="height:360px;">
				<div>
					<label>账号:</label> <br> <input type="text" name="ope_name" id="ope_name">
				</div>
				<div>
					<label>密码:</label> <br> <input  type="password" name="ope_pwd" id="ope_pwd">
				</div>
				<div>
				
				<label>验证码:</label><br>
					<input type="text" name="number" id="number" style="float:left; margin-left:20px; margin-top:0px; width:90px">
  					<img style="height:35px; float:right;margin-right:20px;" src="./image" onclick="this.src='./image?'+new Date().getTime();"><br>
				</div>
				<div>
				<input
					style="width:60px;height:30px;"
					type="radio" name="ope_usertype" value="1" ><font size="5"  >管理员登录</font>
				<input
					style="width:60px;height:30px;"   
					type="radio" name="ope_usertype" value="3" ><font size="5"  >学生登录</font><br>
				<input
					style="width:60px; float:right; margin-top:10px;margin-right:20px;"
					type="button" value="登录" onclick="login()">
					</div>
			</div>
		</div>
	</center>
</body>
</html> --%>


<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>学生信息管理系统</title>
<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="js/login.js" type="text/javascript"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">

<style>
button { font-family:"Arial", "宋体"; border:0;
 vertical-align:middle; margin:8px; line-height:18px; font-size:18px } 
.btns { width:143px; height:40px; background:url("../images/b01.jpg") no-repeat left top; color:#FFF; } 
</style>

</head>
<body>
<center> 
		<div class="login">
			<div class="login_head">
				<h1 style="margin-left: 10px;margin-top: 30px;color:white;">欢迎登陆学生成绩管理系统</h1>
			</div>
			<div class="login_window" style="height:360px;">
				<div>
					<label>账号:</label> <br> <input type="text" name="ope_name" id="ope_name">
				</div>
				<div>
					<label>密码:</label> <br> <input  type="password" name="ope_pwd" id="ope_pwd">
				</div>
				
				<div>
				<label>验证码:</label>
					<input type="text" name="number" id="number" style="float:left; margin-left:20px; margin-top:0px; width:150px">
  					<img style="height:35px; float:left; margin-left:40px;" src="./image" onclick="this.src='./image?'+new Date().getTime();"><br>
				</div>
				<br>
				<div>
				<input style="width:15px;height:10px;"
					type="radio" name="ope_usertype" id="ope_usertype1" value="1" >					
					<font>管理员登录</font>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input style="width:15px;height:10px;"
					type="radio" name="ope_usertype" id="ope_usertype2" value="3">					
					<font>学生登录</font><br><br>
				<input style="width:150px; float:center; margin-top:10px;margin-right:20px; font-family:'宋体';font-size:16px; background-color: rgba(60,64,73,0.5);" 
					   class="btns" onmouseover="this.style.backgroundPosition='left -40px'"
 					   onmouseout="this.style.backgroundPosition='left top'"
					type="button" value="登录" onclick="login()" >
					</div>
			</div>
		</div>
	</center>
</body>
</html>