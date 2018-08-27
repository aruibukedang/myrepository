<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>欢迎页面-X-admin2.0</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="../css/font.css">
<link rel="stylesheet" href="../css/xadmin.css">
<link rel="stylesheet" href="../fileupload/css/dropzone.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../fileupload/js/jquery.min.js"></script>
<link rel="stylesheet" href="../fileupload/css/basic.css">
<script type="text/javascript" src="../fileupload/js/dropzone.js"></script>
<script type="text/javascript" src="../fileupload/js/dropzone-amd-module.js"></script>
<script type="text/javascript" src="../lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript" src="../js/xadmin.js"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<form class="f1 layui-form" action="insert" method="post">
		<div class="x-body layui-anim layui-anim-up">
			
			
			<div class="layui-input-inline">
					<select name="parentid" class="inputselect">
						<c:forEach items="${requestScope.product_type}" var="r" varStatus="v">
							
					<option  value="${r.id}">${r.name}</option>
				
						</c:forEach>
					</select>
				</div>
				
				
				
			<div class="layui-form-item">
				<label for="L_email" class="layui-form-label"> <span
					class="x-red">*</span>类型名
				</label>
				<div class="layui-input-inline">
					<input type="text" id="L_email" name="name" value='${requestScope.name}' 
						lay-verify="tel" autocomplete="off" class="layui-input">
				</div>

			</div>
			

			<div class="layui-form-item">
				<form>
					<div class="inputbtpanel " style="margin-top: 100px;">
						<button class="layui-btn" type="button" onclick="save();">保存</button>
					</div>
				</form>
			</div>
			</div>
	</form>
	<form action='../uploadPic' class='dropzone' id='myForm'></form>
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
	var index=parent.layer.getFrameIndex(window.name);
	parent.layer.close(index);
	$(".f1 .hide_pics").val(picsArr);
	var jsonO = $(".f1").serializeObject();//提交的数据转为json对象
	var data = JSON.stringify(jsonO);//对象转为字符串
	console.log(data);
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
	$(function(){
		
		Array.prototype.contains = function(obj) {
		      var i = this.length;
		      while (i--) {
		        if (this[i] === obj) {
		        return i; // 返回的这个 i 就是元素的索引下标，
		        }
		      }
		      return false;
		}
		$("#myForm").dropzone({ 
	        url: "../uploadPic",
	        maxFiles:4,//最多上传文件数
	        paramName: "noteImg",//参数名
	        dictMaxFilesExceeded: "您最多只能上传1个文件！",
	        dictDefaultMessage:'拖动文件至此或者点击上传', 
	        dictCancelUpload: "取消上传",
	        addRemoveLinks : true,
	        dictCancelUploadConfirmation: "你确定要取消上传吗?",
	        dictRemoveFile: "移除文件",
	        init:function(){
	          this.on("success",function(file,data){
	              //上传成功触发的事件
	              picsArr.push(data.src);
	              console.log(picsArr);
	              // $scope.pics.splice($.inArray(2, $scope.pics), 1);
	              // $(".dz-remove").attr("pic",data.src);
	              // console.log($scope.pics);
	              // angular.element(appElement).scope().file_id = data.data.id;
	          });
	          this.on("removedfile",function(file){
	            var src = eval("("+file.xhr.response+")");
	            picsArr.splice(picsArr.contains(src.src),1);
	            console.log(picsArr);
	          });
	        }
	      });
	})
    
          //监听提交
        //  form.on('submit(add)', function(data){//submit里用到的是filter的值
          
       // function save(){
    	//	$.post($(".f1").attr("action"),$(".f1").serialize(),function(json){//序列化：将表单内容提交到后台
    		//	console.log(json);
    		//	if(json.status>0){//子页面刷新父窗口
    			//	parent.location.reload();
    			//	var index=parent.layer.getFrameIndex(window.name);
    			//	parent.layer.close(index);
    		//	}else{
    			//	alert(json.text);
    			//}
    		
    		//},"json");
    	//}
        
        
        
          
    
    </script>
</body>

</html>