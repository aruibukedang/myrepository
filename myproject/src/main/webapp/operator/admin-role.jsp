
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html >
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />


<link rel="stylesheet" type="text/css" href="../m1/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="../m1/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="../m1/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="../m1/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="../m1/static/h-ui.admin/css/style.css" />



<title>订单列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 订单管理 <span class="c-gray en">&gt;</span> 订单列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="text-c">
		<button onclick="removeIframe()" class="btn btn-primary radius">关闭选项卡</button>
	 <span class="select-box inline">
		<select name="" class="select">
			<option value="0">全部分类</option>
			<option value="1">管理员</option>
			<option value="2">操作员</option>
		</select>
		</span> 
	<!-- 	<input type="text" name="" id="" placeholder=" 管理员名称" style="width:250px" class="input-text"> -->
<!-- 		<button name="" id="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜索</button> -->
	</div>
	<div class="cl pd-5 bg-1 bk-gray">  <a class="btn btn-primary radius" href="javascript:;" onclick="admin_role_add('添加角色','add','800')"><i class="Hui-iconfont">&#xe600;</i> 添加角色</a> </span> <span class="r"> </div>
	
	<div class="mt-20">
		<table class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
			<thead>
			<tr>
				<th scope="col" colspan="6">角色管理</th>
			</tr>
			<tr class="text-c">
				<th width="25"><input type="checkbox" value="" name=""></th>
				<th width="40">ID</th>
				<th width="">权限</th>
				<th>用户名</th>
				<th>姓名</th>
				<th>性别</th>
				<th width="300">电话</th>
				<th>状态</th>
				<th>备注</th>
				<th width="70">操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${requestScope.list}" var="r">
			<tr class="text-c">
				<td><input type="checkbox" value="" name=""></td>
				<td>${r.id}</td>
				<td>${r.powers}</td>
				<td>${r.nike}</td>
				<td>${r.name}</td>
				<td>${r.sexes}</td>
				<td>${r.tel}</td>
				<td>${r.statuses}</td>
				<td>${r.comments}</td>
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('角色编辑','edit?id='+${r.id},${r.id})" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
				</td>
		</tr>
			</c:forEach>
		</tbody>
			
			
		</table>
	</div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="../m1/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="../m1/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../m1/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="../m1/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="../m1/lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="../m1/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="../m1/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">

$(function(){
	
	$(".select").change(function(){
		  var num = $(this).val();
		
			location.href="admin-role?value="+$(this).val();
					
			
				
				var numbers = $(".select").find("option"); //获取select下拉框的所有值
				for (var j = 1; j < numbers.length; j++) {
				if ($(numbers[j]).val() == num) {
				$(numbers[j]).prop("selected", "selected");
				}
				} 
				
				
		  
		});
	
});




$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"pading":false,
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,8]}// 不参与排序的列
	]
});


/*管理员-角色-添加*/
function admin_role_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*管理员-角色-编辑*/
function admin_role_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}

/* /*管理员-角色-删除*/
function admin_role_del(id){
	layer.confirm('角色删除须谨慎，确认要删除吗？',function(){
		
		$.post("delete",
				{"id":id},
				function(json){
			if(json.status>0){
				location.reload();
				layer.msg('已删除!',{icon:1,time:1000});
				
			}else{
				alert(json.text);
			}
				
		},"json");
		
	
	});
} 


</script> 
</body>
</html>