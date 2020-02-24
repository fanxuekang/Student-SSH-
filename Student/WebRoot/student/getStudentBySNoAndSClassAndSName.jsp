<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<html>
  <head >
    <title>My JSP 'main.jsp' starting page</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	  <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	  <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
  <body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
	<s:if test="#request.student.size()!=0">
    	  <table border="1" cellspacing="0" width="80%" class = "table table-striped table-bordered">
    		<tr class = "success">
    			<td>学号</td><td>姓名</td><td>班级</td><td>性别</td><td>邮箱</td><td>电话</td><td>用户名</td><td>密码</td><td>操作</td>
    		</tr>
	    		<tr>
		   	 		<s:iterator value="#request.student" var="student1">
		   	 		<td><s:property value="#student1.SNo"/></td>
		    		<td><s:property value="#student1.SName"/></td>
		    		<td><s:property value="#student1.SClass"/></td>
		    		<td><s:property value="#student1.SSex"/></td>
		    		<td><s:property value="#student1.SEmail"/></td>
		    		<td><s:property value="#student1.STel"/></td>
		    		<td><s:property value="#student1.SUsername"/></td>
		    		<td><s:property value="#student1.SPassword"/></td>
	    		</tr>
	     	</s:iterator>
    	</table> 
    	</s:if>
    	<s:else>未查询到数据！</s:else>
  </body>
</html>
