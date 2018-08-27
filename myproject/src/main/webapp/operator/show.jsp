<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico" >
<link rel="Shortcut Icon" href="/favicon.ico" />
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
<!--/meta 作为公共模版分离出去-->

<title>个人信息</title>
<meta name="keywords" content="H-ui.admin v3.1,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v3.1，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<article class="page-container">
<table class="table table-border table-bordered table-hover table-bg">
	
		<tbody>
		<c:forEach items="${requestScope.showlist}" var="r">
		<tr class="text-c">
				
				<td>管理员id</td>
				<td>${r.nike}</td>
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('编辑','edit?id='+${r.id},${r.id})" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
				</td>		
			</tr>
			<tr class="text-c">
				
				<td>用户名</td>
				<td>${r.nike}</td>
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('编辑','edit?id='+${r.id},${r.id})" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
				</td>		
			</tr>
			<tr class="text-c">
				<td><input type="checkbox" value="" name=""></td>
				<td>密码</td>
				<td >${r.password}</td>
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('编辑','edit?id='+${r.id},${r.id})" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
				</td>		
			</tr>
			<tr class="text-c">
				<td><input type="checkbox" value="" name=""></td>
				<td>性别</td>
				<td>${r.sexes}</td>
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('编辑','edit?id='+${r.id},${r.id})" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
				</td>		
			</tr>
			<tr class="text-c">
				<td><input type="checkbox" value="" name=""></td>
				<td>电话</td>
				<td>${r.tel}</td>
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('编辑','edit?id='+${r.id},${r.id})" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
				</td>		
			</tr>
			<tr class="text-c">
				<td><input type="checkbox" value="" name=""></td>
				<td>权限</td>
				<td>${r.powers}</td>
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('角色编辑','edit?id='+${r.id},${r.id})" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
				</td>		
			</tr>
			<tr class="text-c">
				<td><input type="checkbox" value="" name=""></td>
				<td>状态</td>
				<td>${r.statuses}</td>
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('角色编辑','edit?id='+${r.id},${r.id})" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
				</td>		
			</tr>
			</c:forEach>
		</tbody>
	</table>

</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="../m1/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="../m1/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../m1/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="../m1/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="../m1/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="../m1/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="../m1/lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">


function save() {
	
	
	
	
/* 	 $.ajax({
         //几个参数需要注意一下
             type: "POST",//方法类型
             dataType: "json",//预期服务器返回的数据类型
             url: "update" ,//url
             data: $('.form').serialize(),
             success: function (json) {
                 console.log(result);//打印服务端返回的数据(调试用)
                 if (json.status>0) {
                	 parent.fresh();
         			var index=parent.layer.getFrameIndex(window.name);
         			parent.layer.close(index);
                 }else{
         			alert(json.text);
         		}
                 ;
             },
             error : function() {
                 alert("异常！");
             }
         });
	 */
	

	$.post($(".form").attr("action"),$(".form").serialize(),function(json){
		
		if(json.status>0){
			
			 //var index=parent.layer.getFrameIndex(window.name);
			//refreshParent(index);
			parent.location.reload();
/* 			parent.fresh(); */
			var index=parent.layer.getFrameIndex(window.name);
			
		parent.layer.close(index);
		}else{
			alert(json.text);
		}
			
	},"json");

	
	}



</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>