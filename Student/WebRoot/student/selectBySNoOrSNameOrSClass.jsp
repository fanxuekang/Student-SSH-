<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<html>
  <head>
    <title>My JSP 'main.jsp' starting page</title>
	<script type="text/javascript">
		function del()
		{
			if(confirm("确认删除吗？"))
			{
				return true;
			}
			return false;
		}
	</script>
	<link href="../css/regist.css" rel="stylesheet" type="text/css" />
	<script src="../js/jquery-1.8.3.min.js"></script>
	
 </head>
  <body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
  <center>
  <s:form action="insert.jsp" method="post">
			 <div>
				<table id="table" width="670px" border="1" cellspacing="0"
					cellpadding="5" bordercolor="#999999">
					<br><br><br>
						<div class="tit">学生信息</div>
    
    		<tr align="center">
    			<td>学号</td><td>姓名</td><td>班级</td><td>性别</td><td>邮箱</td><td>电话</td><td>用户名</td><td>密码</td>
    		</tr >
	    		<tr align="center">
		   	 		<s:iterator value="#request.students" var="student">
		   	 		<s:if test='(#student.SNo==#session.sel&&#session.select=="SNo")||(#student.SName==#session.sel&&#session.select=="SName")||(#student.SClass==#session.sel&&#session.select=="SClass")'>
			   	 		<td align="center"><s:property value="#student.SNo"/></td>
			    		<td align="center"><s:property value="#student.SName"/></td>
			    		<td align="center"><s:property value="#student.SClass"/></td>
			    		<td align="center"><s:property value="#student.SSex"/></td>
			    		<td align="center"><s:property value="#student.SEmail"/></td>
			    		<td align="center"><s:property value="#student.STel"/></td>
			    		<td align="center"><s:property value="#student.SUsername"/></td>
			    		<td align="center"><s:property value="#student.SPassword"/></td>
			    	</s:if>
	    		</tr>
	     	</s:iterator>
    	</table >
    	</div>
    </s:form>
    </center>
  </body>
</html>
