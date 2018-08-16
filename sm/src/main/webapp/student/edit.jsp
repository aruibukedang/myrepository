
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../libs/css/edit.css">
<script type="text/javascript" src="../libs/js/jquery.min.js"></script>

<script type="text/javascript" >

$(function(){
	
	$(document).on("click",".seachbt1",function(e){
		e.preventDef1ault();
		$.post("a",$(".f1").serialize(),function(json){
		if(json.status>0){
			parent.fresh();
			var index=parent.layer.getFrameIndex(window.name);
			
			parent.layer.close(index);
		}else{
			alert(json.text);
		}
			
	},"json");
	})
	
})

</script>
</head>
<body>








	<form class="f1" action="a" method="post">

	
<div class="inputview">

 	<c:if test="${requestScope.info!=null}">
	<input type="hidden" name="cmd" value="update">
	<input type="hidden" name="id" value="${requestScope.info.id}">	
</c:if>


<c:if test="${requestScope.info==null}">
	<input type="hidden" name="cmd" value="insert">
</c:if>

	
		<span class="inputspan"> 
		<label class="inputtext">姓名:</label> 
		 <input class="inputinput" name="name" value="${requestScope.info.name}"  >
		
		 <label class="inputtext">年龄:</label> 
		  <input class="inputinput" name="age"  value="${requestScope.info.age}" type="number"  > 
		</span>
 		
 		 <span class="inputspan"> 	
		<label class="inputtext">性别:</label> 


		<select name="status" class="inputselect"  >
<c:forEach items="${requestScope.stustatus}"  var="r" varStatus="v">
	<c:if test="${requestScope.info.status!=v.index}">
	<option value="${v.index}">${r}</option>
	</c:if>
	<c:if test="${requestScope.info.status==v.index}">
	<option selected="selected" value="${v.index}">${r}</option>
	</c:if>
</c:forEach>
		
		
		

</select>

		
		
		<label class="inputtext">班级:</label> 
		
		
			
		<select name="classid"  class="inputselect" >
<c:forEach items="${requestScope.typerow}"  var="r" >
<c:if test="${requestScope.info.classid!=r.id}">
<option value="${r.id}">${r.name}</option>
</c:if>
<c:if test="${requestScope.info.classid==r.id}">
<option selected="selected" value="${r.id}">${r.name}</option>
</c:if>
</c:forEach>
</select>


		
		</span>

		</div>
		<div class="inputbtpanel ">
		<button class="seachbt1"  >保存</button>
		</div>
	</form>










</body>
</html>