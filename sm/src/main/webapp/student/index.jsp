
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/model/list_header.jsp" %>
<html>
<head>
<meta charset=utf-8">
<title>Insert title here</title>

  <style type="text/css">
  [type='checkbox']{
  display:block !important ; 
  }
  
  
  </style>

 <script type="text/javascript" src="../libs/jquery/jquery-1.11.1.js" ></script>
<script type="text/javascript">

var select=${requestScope.select};
var txt=${requestScope.txt};

         $(function() {
			$(".selectall").on("click",function(){
			if(event.target.checked)
				$(".slet").prop("checked","checked");
			else
				$(".slet").prop("checked","");
			});
			
			$(".sselect").on("change",function(){
				$(".sinput").css("display","none").prop("disabled","disabled");
				$($(".sinput")[$(".sselect").val()]).css("display","inline").removeAttr("disabled");
			});
			
			
			
			//隐藏
			 $(".sselect").val(select);
			$(".sinput").css("display","none").prop("disabled","disabled");
			$($(".sinput")[select]).css("display","inline").removeAttr("disabled").val(txt); 
			
			
   	 
		});

         function delall(){
 			if(confirm("确定删除？")){
 				var ids=[];
 				$(".slet").each( function() {
					if($(this).prop("checked")){
						ids.push($(this).attr("myid"));
					}
				});
 				
 				if (ids.length==0) {
 					alert("请选择行");
					retrun;
				}
 				
 				location.href="deleteall?ids="+ids;
 			}
 		}


		function del(id){
			if(confirm("确定删除？")){
				location.href="delete?id="+id;
			}
		}
		var a=0;
		
		function fresh(){
			location.href="index";
		}
		
		function openwin() {
			show("add",600,250);
		}
		
		function openwin2(c) {
			show("edit?id="+c,600,250);
		}
		
		
</script>

</head>


<body>



	<div class="demoTable">
	
	
 <form action="index" method="post" >

<select class="sselect" name="select">
 <option value="0">姓名查询</option>
 <option value="1">年龄</option>
  <option value="2">性别</option>
   <option value="3">班级</option>
 </select>
 
  <input name="txt" class="sinput" > 
  <input name="txt" class="sinput"  type="number" style="display: none;" > 
  <select name="txt" class="inputselect sinput" style="height:30px;display: none;">
			<c:forEach items="${requestScope.stustatus}" var="r" varStatus="v">
				<c:if test="${requestScope.info.status!=v.index}">
					<option value="${ v.index}">${r}</option>
				</c:if>
				<c:if test="${requestScope.info.status==v.index}">
					<option selected="selected" value="${v.index}">${r}</option>
				</c:if>
			</c:forEach>
		</select>
			<select name="txt" class="inputselect sinput" style="height:30px;display: none;">
				<c:forEach items="${requestScope.typerow}" var="r" >
				<c:if test="${requestScope.info.classid!=r.id}">
					<option value="${r.id}">${r.name}</option>
				</c:if>
					<c:if test="${requestScope.info.classid==r.id}">
					<option selected="selected" value="${r.id}">${r.name}</option>
				</c:if>
			</c:forEach>
			</select> 
			
			
  



<button  class="layui-btn" type="submit" >查询</button>

<button  class="layui-btn" type="button" onclick="openwin();">新增</button>
<button  class="layui-btn" type="button" onclick="delall();">批量删除</button>
</form>
	

	</div>


<div class="layui-form layui-border-box layui-table-view" >
	<div class="layui-table-box">
		<div class="layui-table-body layui-table-main" >
			<table  class="layui-table">
			<thead>
					<tr>
						<th><input type="checkbox"  class="selectall" ></th><th>姓名</th><th>年龄</th><th>性别</th><th>班级</th><th>功能1</th><th>功能2</th>

					</tr>
<c:forEach items="${requestScope.list}" var="r">


<tr>
   <th> <input type="checkbox" class="slet" myid="${r.id}" > </th>
  <th>${r.name}</th>
  <th>${r.age}</th>
  <th>${r.status_name}</th>
  <th>${r.cname}</th>
  
  <th><a href="javascript:;"onclick="openwin2(${r.id})">修改</a></th>
  
  
  <th><a href="javascript:del(${r.id})">删除</a></th>
  
  
  </tr>





</c:forEach>


			</thead>
			
			</table>
		</div>
	</div>


	<div class="layui-table-page">
		<div id="layui-table-page1">
			<div class="layui-box layui-laypage layui-laypage-default" >
			<span class="layui-laypage-skip">						
		<button type="button" class="layui-laypage-btn" onclick="location.href='index?pageno=${requestScope.search.prev}'" value="prev" >上一页</button>		
			<button type="button" class="layui-laypage-btn" onclick="location.href='index?pageno=${requestScope.search.next}'" vlaue="next" >下一页</button>
			</span>
				</div>
				

		</div>
	</div>
	
</div>


</body>
</html>