<%@page import="oracle.net.aso.s"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<html>
  <head>
    <title>My JSP 'main.jsp' starting page</title>
	<link href="../css/regist.css" rel="stylesheet" type="text/css" />
	<script src="../js/jquery-1.8.3.min.js"></script>
 </head>
  <body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
  <center>
  <div style="margin-top: 50px">
  
  
    	<table border="1" cellspacing="0" width="400px" height="500px" cellpadding="5" bordercolor="#999999">
						<div class="tit">我的资料</div>
    	<s:iterator value="#request.students" var="student">
		   	 		<%-- <s:debug></s:debug> --%>
		   	 		<s:if test='#student.SNo==#session.username'> 
    	<tr align="center">
    		<td>学号</td><td><s:property value="#student.SNo"/></td>
    	</tr>
    	<tr align="center">
    		<td>姓名</td><td><s:property value="#student.SName"/></td>
    	</tr>
    	<tr align="center">
    		<td>班级</td><td><s:property value="#student.SClass"/></td>
    	</tr>
    	<tr align="center">
    		<td>性别</td><td><s:property value="#student.SSex"/></td>
    	</tr>
    	<tr align="center">
    		<td>邮箱</td><td><s:property value="#student.SEmail"/></td>
    	</tr>
    	<tr align="center">
    		<td>手机号</td><td><s:property value="#student.STel"/></td>
    	</tr>
    	<tr align="center">
    		<td>用户名</td><td><s:property value="#student.SUsername"/></td>
    	</tr>
    	<tr align="center">
    		<td>密码</td><td><s:property value="#student.SPassword"/></td>
    	</tr>
    		</s:if>
	    		
	    		
	     	</s:iterator>
    	
		  <tr><td colspan="2" align="center">
		  <s:a href="getStudentBySNo1.action?student.SNo=%{#session.username}"><button>修改</button></s:a></td></tr>
		    	
    	</table>
    	

    
    </div>
    </center>
  </body>
</html>
