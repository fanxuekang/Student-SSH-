<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
		<link href="../css/regist.css" rel="stylesheet" type="text/css" />
		<script src="../js/jquery-1.8.3.min.js"></script>
<title>My JSP 'main.jsp' starting page</title>
<script type="text/javascript">
	function del() {
		if (confirm("确认删除吗？")) {
			return true;
		}
		return false;
	}
</script>
</head>
<body style="margin: 50px 20px auto 20px;
	background-image: url(../images/05.jpg);
	background-size:100%;">
	<center>
		<center id="center">
			<s:form action="insert.jsp" method="post">
			 <div >
				<table id="table" width="670px" border="1" cellspacing="0"
					cellpadding="5" bordercolor="#999999">
					<br><br><br>
						<div class="tit">学生信息表</div>
					<tr align="center">
						<td>学号</td>
						<td>姓名</td>
						<td>班级</td>
						<td>性别</td>
						<td>邮箱</td>
						<td>电话</td>
						<td>用户名</td>
						<td>密码</td>
						<td>操作</td>
						<tbody id="pageInfo">
						<s:iterator value="#request.students" var="student">
					<tr align="center">
						
							<td><s:property value="#student.SNo" /></td>
							<td><s:property value="#student.SName" /></td>
							<td><s:property value="#student.SClass" /></td>
							<td><s:property value="#student.SSex" /></td>
							<td><s:property value="#student.SEmail" /></td>
							<td><s:property value="#student.STel" /></td>
							<td><s:property value="#student.SUsername" /></td>
							<td><s:property value="#student.SPassword" /></td>
							<td><s:a href="getStudentBySNo.action?student.SNo=%{#student.SNo}">修改&nbsp;&nbsp;</s:a>
								<s:a href="del_stu.jsp?student.SNo=%{#student.SNo}"
									onclick="return del()">删除&nbsp;&nbsp;</s:a>
								<s:a href="getOneCourses1.action?student.SNo=%{#student.SNo}">查看成绩</s:a></td>
					</tr>
					</s:iterator>
					</tbody>
				</table>
			</s:form>
		</center>
		<div id="pagination" style="margin-top: 10px;height: 35px;">
	<input type="button" id="firPage" onclick="firstPage()" style="margin-left: 0px;width: 35px;" value="首页"/>
	<input type="button" id="prePage" onclick="prevPage()" value="上一页"/>
	<input type="button" id="nexPage" onclick="pnextPage()" value="下一页"/>
	<input type="button" id="lasPage" onclick="lastPage()" style="width: 35px;" value="尾页"/>
	<input id="numPage" style="width: 50px;margin-left: 10px;height: 30px;" />

    </div> 
</div>
		
</body>
<script src="../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
var departmentInfo = document.getElementById("pageInfo");  /*获取table中的内容*/
var totalRow = departmentInfo.rows.length;
   /*计算出总条数(这种方法用来获取table行数，获取列数用var cells = departmentsInfo.rows[0].cells.length;*/
var pagesize = 1;   /*每页条数*/
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
