<%@page import="com.course.dao.Course"%>
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
    <s:form action="insertcourse.jsp" method="post">
     <div>
    	<table border="1" cellspacing="0" width="50%" cellpadding="10" bordercolor="#999999">
    	<div class="tit">学生信息表</div>
    		<tr align="center">
    			<td>课号</td><td>课程名</td><td>学期</td><td>学分</td><td>成绩</td>
    		</tr>
    		<tbody id="pageInfo">
	    	<s:iterator value="#request.courses" var="course">
	  
	    	<s:if test='#course[1].SNo==#session.username'> 
	    		<tr align="center">
		   	 		<td><s:property value="#course[0].CNo"/></td>
		    		<td><s:property value="#course[0].CName"/></td>
		    		<td><s:property value="#course[0].CTerm"/></td>
		    		<td><s:property value="#course[0].CCre"/></td>
		    		<td><s:property value="#course[1].Score"/></td>
		    		
	    		</tr>
    </s:if>
	     	</s:iterator>
	     	</tbody>
    	</table>
 <div id="pagination" style="margin-top: 10px;height: 35px;">
	<input type="button" id="firPage" onclick="firstPage()" style="margin-left: 0px;width: 35px;" value="首页"/>
	<input type="button" id="prePage" onclick="prevPage()" value="上一页"/>
	<input type="button" id="nexPage" onclick="pnextPage()" value="下一页"/>
	<input type="button" id="lasPage" onclick="lastPage()" style="width: 35px;" value="尾页"/>
	<input id="numPage" style="width: 50px;margin-left: 10px;height: 30px;" />
    </div> 
</div>
    	
    </s:form>
    </div>
    </center>
  </body>
  <script src="../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
var departmentInfo = document.getElementById("pageInfo");  /*获取table中的内容*/
var totalRow = departmentInfo.rows.length;
   /*计算出总条数(这种方法用来获取table行数，获取列数用var cells = departmentsInfo.rows[0].cells.length;*/
var pagesize = 3;   /*每页条数*/
var totalPage = Math.ceil(totalRow/pagesize);  /*计算出总页数*/
var currentPage;
var startRow;
var lastRow;
function pagination(i){
    currentPage = i;/*当前页*/
    document.getElementById("numPage").value="第"+currentPage+"页";   /*显示页码*/
    startRow = (currentPage-1)*pagesize;/*每页显示第一条数据的行数*/
    lastRow = currentPage*pagesize;/*每页显示的最后一条数据的行数,因为表头也算一行，所以这里不需要减1，这种情况以自己的实际情况为准*/
    if(lastRow>totalRow){
	lastRow=totalRow;/*如果最后一页的最后一条数据显示的行数大于总条数，那么就让最后一条的行数等于总条数*/
    }
    for(var i = 0;i<totalRow;i++){   /*将数据遍历出来*/
        var hrow = departmentInfo.rows[i];
	if(i>=startRow&&i<lastRow){
            hrow.style.display="table-row";
        }else{
	    hrow.style.display="none";
        }
    }
}
$(function(){

    firstPage();
});
function firstPage(){
    var i = 1;
    pagination(i);
}
function prevPage(){
    var i= currentPage-1;
    if(i<1){
	i=currentPage;
    }
    pagination(i);
}
function pnextPage(){
    var i= currentPage+1;
    if(i>totalPage){
	i= currentPage;
    }
    pagination(i);
}
function lastPage(){
    var i = totalPage;
    pagination(i);
}

</script>
</html>
