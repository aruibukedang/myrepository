﻿
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
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="../m1/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="../m1/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="../m1/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="../m1/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="../m1/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>订单列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 订单管理 <span class="c-gray en">&gt;</span> 订单列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="text-c">
		<button onclick="removeIframe()" class="btn btn-primary radius">关闭选项卡</button>
	 <span class="select-box inline">
		
		</span> 日期范围：
		<input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })" id="logmin" class="input-text Wdate" style="width:120px;">
		-
		<input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })" id="logmax" class="input-text Wdate" style="width:120px;">
		
		<button name="" id="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜索订单</button>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20">  <span class="r">共有数据：<strong>?</strong> 条</span> </div>
	<div class="mt-20">
		<table class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
			<thead>
				<tr class="text-c">
					<th width="25"><input type="checkbox" name="" value=""></th>
					<th width="80">ID</th>
					<th>日期</th>
					<th >单号</th>
					<th >原金额</th>
					<th >实际金额</th>
					<th >用户id</th>
					<th >地址id</th>
					<th >评价状态</th>
					<th >备注</th>
					
					<th >状态</th>
					<th width="120">操作</th>
				</tr>
			</thead>
			<tbody>
			
			<c:forEach items="${requestScope.list}" var="r">
			<tr class="text-c">
				<td><input type="checkbox" value="" name=""></td>
				<td>${r.id}</td>
				<td>${r.date}</td>
				<td>${r.code}</td>
				<td>${r.amount}</td>
				<td>${r.nowamount}</td>
				<td>${r.address_id}</td>
				<td>${r.user_id}</td>
				
				<td>${r.astatuses}</td>
				<td style="width:100px">${r.comments}</td>
				<td class="td-status"><span class="label label-success radius">${r.statuses}</span></td>
					
					
					
					<td class="f-14 td-manage">
					
					<c:if test="${r.status==1}">
					<a style="text-decoration:none" onClick="article_fahuo(this,${r.id})" href="javascript:;" title="发货"><i class="Hui-iconfont">&#xe6de;</i></a> 
						</c:if>
						<c:if test="${r.status==4}">
					<a style="text-decoration:none" onClick="article_quxiao(this,${r.id})" href="javascript:;" title="取消"><i class="Hui-iconfont">&#xe6de;</i></a> 
						</c:if>
					
					
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
$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"pading":false,
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,8]}// 不参与排序的列
	]
});



/*发货*/
function article_fahuo(obj,id){
	layer.confirm('确认要发货吗？',function(index){
		
		
		$.post("update",
				{"id":id,
		          "status":2
				},
				function(json){
			if(json.status>0){
				

				$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
				/* $(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已发货</span>'); */
				$(obj).remove();
			+-	
				
				layer.msg('已发货!',{icon: 6,time:1000});
				
				location.reload();
				
				
				
				
			}else{
				alert(json.text);
			}
				
		},"json");
		
	
		
	});
}



/*取消*/
function article_quxiao(obj,id){
	layer.confirm('确认要取消订单吗？',function(index){
		
		
		$.post("update",
				{"id":id,
		          "status":5
				},
				function(json){
			if(json.status>0){
				

				$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
				/* $(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已发货</span>'); */
				$(obj).remove();
				
				
				layer.msg('已取消!',{icon: 5,time:1000});
				
				location.reload();
				
				
				
				
			}else{
				alert(json.text);
			}
				
		},"json");
		
	
		
	});
}




</script> 
</body>
</html>