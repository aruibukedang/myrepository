<%@ page language="java" contentType="text/html; charset=utf-8"
	isELIgnored="false"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  
  <head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <link rel="stylesheet" href="../fileupload/css/dropzone.css">
    <link rel="stylesheet" href="../fileupload/css/basic.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
    <script type="text/javascript" src="../fileupload/js/jquery.min.js"></script>
    <script type="text/javascript" src="../fileupload/js/dropzone.js"></script>
<script type="text/javascript" src="../fileupload/js/dropzone-amd-module.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
    <form class="f1 layui-form" action="update" method="post">
		<div class="x-body layui-anim layui-anim-up">
	<input type='hidden' name='id' value='${requestScope.info.id}'/>
			<div class="layui-form-item">
				<label for="L_email" class="layui-form-label"> <span
					class="x-red">*</span>类型名
				</label>
				<div class="layui-input-inline">
					<input type="text" id="L_email" name="name" value='${requestScope.info.name}' 
						lay-verify="tel" autocomplete="off" class="layui-input">
				</div>

			</div>
			<div class="layui-form-item">
				<label for="L_username" class="layui-form-label"> <span
					class="x-red">*</span>父节点
				</label>
				<div class="layui-input-inline">
					<input type="text" id="L_username" name="parentid"  value='${requestScope.info.parentid}'
						 autocomplete="off" class="layui-input">
				</div>
			</div>
			
		
			<div class="layui-form-item">
				
					<div class="inputbtpanel " style="margin-top: 100px;">
						<button class="layui-btn" type="button" onclick="save();">保存</button>
					</div>
				
			</div>
			</div>
	</form>
	
    <script>
    var picsArr = [];
	   $.fn.serializeObject = function()
		{
			var o = {};
			var a = this.serializeArray();
			$.each(a, function() {
				if (o[this.name] !== undefined) {
					if (!o[this.name].push) {
						o[this.name] = [o[this.name]];
					}
					o[this.name].push(this.value || '');
				} else {
					o[this.name] = this.value || '';
				}
			});
			return o;
		};
		        
function save(){
	parent.location.reload();
	var jsonO = $(".f1").serializeObject();//提交的数据转为json对象
	var data = JSON.stringify(jsonO);//对象转为字符串
	$.ajax({　　　　　　　　
		
		url:$(".f1").attr("action"),
　　　　type:"POST",//Ajax可以post传也可以get传
　　　　data:data,
	  contentType: 'application/json;charset=utf-8', //加分号
　　　　success:function(data){
　　　　　　alert("request success ! ");
　　　　}
});
}
	
    </script>
    
  </body>

</html>