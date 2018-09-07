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
		
		<tr class="text-c">
				
				<td>管理员id</td>
				<td>${requestScope.peopleinfo.id}</td>
				
				</td>		
			</tr>
			<tr class="text-c">
				
				<td>用户名</td>
				<td>${requestScope.peopleinfo.nike}</td>
			
					
			</tr>
			<tr class="text-c">
				
				<td>密码</td>
				
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('编辑','edit?id=${requestScope.peopleinfo.id},${requestScope.peopleinfo.id}')" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
						
			</tr>
			<tr class="text-c">
				
				<td>性别</td>
				<td>${requestScope.peopleinfo.sexes}</td>
				
						
			</tr>
			<tr class="text-c">
				
				<td>电话</td>
				<td>${requestScope.peopleinfo.tel}</td>
					
			</tr>
			<tr class="text-c">
				
				<td>权限</td>
				<td>${requestScope.peopleinfo.powers}</td>
			
						
			</tr>
			<tr class="text-c">
				
				<td>状态</td>
				<td>${requestScope.peopleinfo.statuses}</td>
				
					
      	</tr>
			
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





</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>