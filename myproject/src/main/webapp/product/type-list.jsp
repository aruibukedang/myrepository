<%@ page language="java" contentType="text/html; charset=utf-8"
isELIgnored="false"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
    <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">演示</a>
        <a>
          <cite>导航元素</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
 <div class="layui-input-inline ">
   <select onchange="changer(this)">
   <c:forEach items='${requestScope.typelist}' var="r"><!-- //items要迭代的list -->
   <option value="${r.id} ">${r.name}</option>
   </c:forEach>
   </select>
  </div>
         
         <div>
         <label>上级：</label><label>${requestScope.path}</label>
        <button class="layui-btn" onclick="x_admin_show('添加商品','add')"><i class="layui-icon"></i>添加</button>      
   </div> 
      <table class="layui-table">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>名称</th>
            <th>上级名称</th>
           
        </thead>
        <tbody>
          
				<c:forEach items="${requestScope.list}" var="r">
					<tr>
						<td>
							<div class="layui-unselect layui-form-checkbox"
								lay-skin="primary" data-id='2'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
						<td>${r.name}</td>
						<td>${r.parent_name}</td>
						
           
            <td class="td-status">
              <span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span></td>
            <td class="td-manage">
              <a  href="type-list?parentid=${r.id} "  title="下级">
                <i class="layui-icon">&#xe601;</i>
              </a>
              <a title="编辑"  onclick="" href="javascript:type_change(${r.id})">
                <i class="layui-icon">&#xe642;</i>
              </a>
              
              <a title="删除"  href="javascript:type_del(${r.id})">
                <i class="layui-icon">&#xe640;</i>
              </a>
            </td>
         </tr>
         </c:forEach>
        </tbody>
      </table>
     

    </div>
    <script>
    
    var parentid=${requestScope.parentid};
    layui.use('form', function() {	
		var form = layui.form;			
		form.on('select(select1)', function(data) {
			 $(".select2").addClass("layui-hide");
			 $(".select2").find(".sinput").prop("disabled", "disabled");
			 $($(".sinput")[$(".select1").val()]).parents(".select2").removeClass("layui-hide");
			 $($(".sinput")[$(".select1").val()]).removeAttr("disabled");
		});
		form.render();//form表单自动渲染完之后需要进行刷新
		 $(".select2").addClass("layui-hide");
		 $(".select2").find(".sinput").prop("disabled", "disabled");
		 $($(".sinput")[$(".select1").val()]).parents(".select2").removeClass("layui-hide");
		 $($(".sinput")[$(".select1").val()]).removeAttr("disabled");
		 form.on('submit(serch)',function(data){
			$.post("product-list",data.field,function(res){					
				
			},'json');
					 
		 });	 
	});
    
    function changer(o){
    	$(o).nextAll().remove();
    	$.getJSON("gettypelist",{id:o.value},function(json){//地址，值，function(后台传过来的集合，转为json数组)
    		console.log(json);
    		if(json.length>0){
    			var select=$("<select onchange='changer(this)'></select>");
    			for(var i=0;i<json.length;i++){
    				select.append($("<option value='"+json[i].id+"'>"+json[i].name+"</option>"));//下拉框内追加option
    			}
    			$(o).after(select);//当前元素之后追加下拉框
    		}
    	});
    }
    
      layui.use('laydate', function(){
        var laydate = layui.laydate;
        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });
      });

       /*用户-停用*/
      function member_stop(obj,id){
          layer.confirm('确认要停用吗？',function(index){

              if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

              }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
              }
              
          });
      }

      /*用户-删除*/
     function admin_del(id) {
			if(confirm("确认删除")){
				location.href="delete?id="+id;
			}
      }
     function type_change(id) {			
			location.href="edit?id="+id;		
	}

      function delAll (argument) {

        var data = tableCheck.getData();
  
        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }
    </script>
    
  </body>

</html>