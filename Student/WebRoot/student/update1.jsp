<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>My JSP 'insert.jsp' starting page</title>

  </head>
  <body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
  <center>
  <div style="margin-top: 150px">
    <s:form action="updateStudent1" method="post">
    	<s:hidden name="student.SNo"  value="%{student.SNo}"></s:hidden>
    	<s:hidden name="student.SName"  value="%{student.SName}"></s:hidden>
    	<s:hidden name="student.SClass"  value="%{student.SClass}"></s:hidden>
    	<s:hidden name="student.SSex"  value="%{student.SSex}"></s:hidden>
    	<s:hidden name="student.SUsername"  value="%{student.SUsername}"></s:hidden>
    	<s:hidden name="student.SPassword"  value="%{student.SPassword}"></s:hidden>
    	<table border="0" cellspacing="0">
    	
      	<s:textfield name="student.SEmail" label="邮箱" value="%{student.SEmail}"></s:textfield>
    
    	
    	<s:textfield name="student.STel" label="手机" value="%{student.STel}"></s:textfield>
    	 <s:submit style=""  value="修改"></s:submit>
    	</table>
        
       
    </s:form>
    </div>
    </center>
    
  </body>
</html>
