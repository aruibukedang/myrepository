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

 <style type="text/css">
 .input-text{
 width: 400px;
 height: 40px;
 }
 .inputselect{
 width:80px;
 height: 30px;
 font-size: 15px;
 }
 option{
 width:80px;
 height: 30px;
 font-size: 15px;
 }
 
 </style>

<!--/meta 作为公共模版分离出去-->

<title>新建网站角色 - 管理员管理 - H-ui.admin v3.1</title>
<meta name="keywords" content="H-ui.admin v3.1,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v3.1，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<article class="page-container">


<form action="revise" method="post" class="form form-horizontal" id="form-admin-role-add">
	



 	

	
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>请输入原密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input  type="password" class="input-text" value="opassward" placeholder="" id="roleName" name="opassword">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">请输入新密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="password" class="input-text" value="" placeholder="" id="" name="newpassword1">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">请确认密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="password" class="input-text" value="" placeholder="" id="" name="newpassword1">
			</div>
		</div>

		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<button type="submit"  class="btn btn-success radius" id="admin-role-save" name="admin-role-save"><i class="icon-ok"></i> 确定</button>
			</div>
		</div>
	</form>
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