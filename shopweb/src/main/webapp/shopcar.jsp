 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/shopping.css"/>
		<link rel="stylesheet" type="text/css" href="css/footer.css"/>
		
		<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
		<script type="text/javascript">
		
		
		function changercount(id,count){
			
		}
		
		function alljs() {
         var all=0;

			$(".chk").each(function(){
				if($(this).prop("checked")){
				var parent=$(this).parents(".down1");				
				var amount=parent.find(".l7").text();				
				amount = parseFloat(amount.substring(1));				
				all+=amount;
				}
			});
			$(".s9").text("￥"+all);
		}
		
	/* 	var date = new Date();    日期
        var seperator1 = "-";
        var seperator2 = ":";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        } */
    
		
	/*     var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
        + " " + date.getHours() + seperator2 + date.getMinutes()
        + seperator2 + date.getSeconds();

var code =date.getFullYear() +month+ strDate + date.getHours()+ date.getMinutes()+ date.getSeconds();

 */


		function finalSubmit() {
	
			var data=[];
			$(".down1").each(function(){
				if($(this).find(".chk").prop("checked")){
					var product_id=parseInt($(this).attr("myid"));
				
					var count=parseInt($(this).find(".n2").text());
					var price=$(this).find(".l5").text();
					var nowAmount=parseFloat(price.substring(1))*parseInt(count);
				    var amount=nowAmount*2;
					
					
					var row={product_id:product_id,count:count};
					data.push(row);	
				}  
				
			});
		
			 $.ajax({
			        type: "POST",
			        url: "orders/finalAccount",
			        contentType: "application/json; charset=utf-8",
			        data: JSON.stringify(data),
			        dataType: "text",
			        success: function (json) {
			        	
			        	
			        	location.href="orders/settlement";
			        }
			    });

			
			
		};

		
		
		$(function(){
			
			
			
			$(".s4").text($("input[type='checkbox']:checked").length);
			
			

			$(".s1").on("click",function(){
 	$.post(
		       	             "deleteall",
		       	             {   "user_id":${sessionScope.user_id}
                               },
		       	            function(json) {       	            		
		       	          if(json.status>0){
		       	        	
		       	        	  window.location.reload();
		       	          }
		       	         
		       				},"json");
		       	            	       
		});
					
				
			$(".checkall").on("click",function(){
				if(event.target.checked){
					$(".chk").prop("checked","checked");
					alljs();
					$(".s4").text($("input[type='checkbox']:checked").length-1);
					
				}
				else{
					$(".chk").prop("checked","");
					alljs();
					
				}
				

				});
			
			
			
			

		
			
	
			
            $(".collects").on("click",function(){
            		
            	
        		var date = new Date();
                var seperator1 = "-";
                var seperator2 = ":";
                var month = date.getMonth() + 1;
                var strDate = date.getDate();
                if (month >= 1 && month <= 9) {
                    month = "0" + month;
                }
                if (strDate >= 0 && strDate <= 9) {
                    strDate = "0" + strDate;
                }
            	
                var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + date.getHours() + seperator2 + date.getMinutes()
                + seperator2 + date.getSeconds();

                
                $.post(
          	             "collects",
          	             {   "user_id":${sessionScope.user_id},
          	            	 "product_id":$(event.target).attr("did"),
          	            	 "date":currentdate
          	            	},
          	            function(json) {       	            		
          	          if(json.status>0){
          	        	 alert("加入成功");
          	        	
          	          }
          	         
          				},"json");
              
              
            });	
			
			
			
			$(".del").on("click",function(){
				
            	var a =$(event.target).attr("did");
            	$(event.target).parents(".down1").remove();
            	$.post(
       	             "delshopcar",
       	             {   "id":a,
       	            	},
       	            function(json) {       	            		
       	          if(json.status>0){
       	        	 alert("删除成功");
       	        	
       	          }
       	         
       				},"json");
     	
            });	
			
			
			
            $(".chk").on("click",function(){
            	$(".s4").text($("input[type='checkbox']:checked").length);
            	alljs();
            });	
			
			$(".n1").on("click",function(){
			var count=	parseInt( $(event.target).next().text());
			if(count>1) $(event.target).next().text(""+(--count));
				var parent=$(event.target).parents(".down1");
				var id=parent.attr("myid");
				var price=parent.find(".l5").text();
				price=parseFloat(price.substring(1));
				parent.find(".l7").text("￥"+(count*price).toFixed(2));				
				changercount(id,count);
				alljs();
			});
			$(".n3").on("click",function(){
				var count=	parseInt( $(event.target).prev().text());
				var parent=$(event.target).parents(".down1");
				 $(event.target).prev().text(""+(++count));
				 var id=parent.attr("myid");
					var price=parent.find(".l5").text();
					price=parseFloat(price.substring(1));
					parent.find(".l7").text("￥"+(count*price).toFixed(2));				
					changercount(id,count);
					alljs();
				});
		});
		
		</script>
		
	</head>
	<body>
		<div class="box">
			<!--头部-->
			<div class="header">
				<jsp:include page="model/header1.jsp"></jsp:include>
				
				<div class="header3">
					<div class="header3-cont">
						<ul>
							<li class="l1">全部分类</li>
							<li class="l2">首页</li>
							<li class="l2">主厨先生</li>
							<li class="l2">每日推荐</li>
							<li class="l2">会员专享</li>
							<li class="l2">品质保障</li>
						</ul>
						<div class="clear"></div>
					</div>
				</div>
		</div>
		<!--导航横线-->
		<div class="line"></div>
		<div class="cont-shopping">
			<div class="all">
				<input type="checkbox" class="checkall" name="" id="" value="" /><span class="s1">全选</span><span class="s2">商品信息</span><span class="s3">规格</span>
				<span class="s4">单价(元)</span><span class="s5">数量</span><span class="s6">小计</span><span class="s7">操作</span>
			</div>
			
			<div class="thing">
				<div class="up">
					<p></p><span>满399减100</span>
				</div>
				
				
				<c:forEach items="${requestScope.slist}" var="r" varStatus="v" >
				<ul class="down1"  myid="${r.product_id}"  >
				
				
					<li class="l1"><input type="checkbox" class="chk" name="" id=""  /></li>
					<li class="l2"><img src="${r.pic}" width="94px" height="84"  /></li>
					<li class="l3">
						<p style="width: 150px" >${r.fullname}</p>
						<p>${r.comments}</p>
						<p>建议冷藏</p>
					</li>
					<li class="l4">${r.sale}</li>
					<li class="l5">￥${r.nowprice}</li>
					<li class="l6">
						<span class="n1">-</span>
						<span class="n2">${r.count}</span>
						<span class="n3">+</span>
					</li>
					<li class="l7">￥${r.nowprice*r.count}</li>
					<li class="l8">
						<p class="collects" did="${r.id}" >移入收藏夹</p>
						<p class="del" did="${r.id}" >删除</p>
						<p>查找相似</p>
					</li>
				</ul>
				
             </c:forEach>
			</div>
			
			<div class="all2">
				<span class="s1">清空</span><span class="s2">删除选中商品</span><span class="s3">已选中商品</span>
				<span class="s4">0</span><span class="s5">件</span><span class="s6">总价(元)：</span><span class="s7 s9">￥0</span>
				<button class="s8" style="float: right;" type="button" onclick="finalSubmit();" >结算</button>
			</div>
		</div>
		
		<!--footer-->
		<footer>
		<div class="up">
			<ul class="cont">
				<li class="l1"><a href=""><span class="s1"></span><i class="i1">顺丰包邮</i></a></li>
				<li class="l1"><a href=""><span class="s2"></span><i class="i1">同城次日到达</i></a></li>
				<li class="l1"><a href=""><span class="s3"></span><i class="i1">7天无理由退换货</i></a></li>
				<li class="l1"><a href=""><span class="s4"></span><i class="i1">线下体验店</i></a></li>
				<li class="l2">
					<p class="p1">24小时全国服务热线</p>
					<p class="p2">400-888-8888</p>
					<p class="p3"><a href=""><span class="s5"></span><i class="i2">联系客服</i></a></p>
				</li>
				
			</ul>
			<div class="clear"></div>
		</div>
		<div class="down">
			<div class="one">
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				<ol>
					<dt><a href="">购物指南</a></dt>
					<dd><a href="">购物流程</a></dd>
					<dd><a href="">支付方式</a></dd>
				</ol>
				
				<div class="ew1">
					<p><img src="img/er.png"/></p>
					<p>鲜生购公众号</p>
					
				</div>
				<div class="ew2">
					<p><img src="img/er.png"/></p>
					<p>鲜生购APP</p>
				</div>
			</div>
			<div class="clear"></div>
			<div class="two"></div>
			<div class="three">
				<span>网络文化经营许可证：19333520156</span>
				<span>鲁公网安备：25854651152</span>
				<span>违法和不良信息举报电话：110</span>
				<span>消费者维权电话：12305</span>
				<p>Copyright&nbsp;©&nbsp;2010-2020&nbsp;xianshenggou.com&nbsp;版权所有</p>
			</div>
			
	</footer>	
		</div>
	</body>
</html>
