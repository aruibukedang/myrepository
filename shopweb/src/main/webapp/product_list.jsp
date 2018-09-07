<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/fruit.css"/>
		<link rel="stylesheet" type="text/css" href="css/footer.css"/>
		
		<script type="text/javascript">
		
		function selecttype( ){ 
			var optionVal = $(".select option:selected").val();
			
			window.location.href="product_list?id="+optionVal;
			}

		
		 function selectitem(id) {
		    	window.location.href="Detail_page?id="+id;
			}
		</script>
		
	</head>
	<body>
		<div class="box">
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
		  <!--分类-->
		<div class="cont-xg">
			<div class="fenlei">
				<div class="bread">
					首页<span>
					
					
					<select class="select" onchange="selecttype();" >
					
					<c:forEach items="${requestScope.t_list}" var="r" >
					
	         <c:if test="${r.parentid==0}">
	
	
	          <c:if test="${r.id!=requestScope.thisid}">
									
	      <option value="${r.id}">  ${r.name}</option>
          	</c:if>
	       <c:if test="${r.id==requestScope.thisid}">
	      <option selected="selected" value="${r.id}">${r.name}</option>
	       </c:if>
	
			
	 	</c:if>			
				
					
					
					</c:forEach>
					</select>
					
					</span>
				</div>
				<div class="title-sg">
					<span class="span1">商品删选</span><span class="span2">共156328件商品</span>
				</div>
				<div class="d1">
				<span class="s1">分类：</span>
				<c:forEach items="${requestScope.sonlist}" var="r" >
				
				<a href="product_list?id=${r.id}" ><span class="s2">${r.name }</span></a>
				</c:forEach>
				
					
					
					
					
				更多</span>
				</div>
				
				<div class="d1">
				
				</div>
				
			
				<div class="more">更多选项<em></em></div>
				
				
			</div>
			<!--商品-->
			<div class="sp">
				<div class="title-sp">
				<span class="s1">综合排序</span><span class="s2">销量</span><span  class="s2">价格</span><span  class="s2">评价</span class="s2"><span class="s2">上架时间</span>
			   </div>
			   <script type="text/javascript">
			   	  $('.sp .title-sp span').mouseenter(function () {
			   	  	$(this).css({'background':'#d63a3b','color':'#fdfcfc'})
			   	  })
			   	  $('.sp .title-sp span').mouseleave(function () {
			   	  	$(this).css({'background':'#ffffff','color':'#3c3b3a'})
			   	  	$('.sp .title-sp .s1').css({'background':'#d63a3b','color':'#fdfcfc'})
			   	  })
			   </script>
			   <!--商品图片-->
			   <ul>
			   <c:forEach items="${requestScope.p_list}" var="r"  >
			   	<li>
			   	<a class="a2" href="javascript:;"  onclick="selectitem(${r.id})">
			   		<img src="${r.pic}" width="150px" height="143px" />
			   		<div class="wenzi">
			   			<p class="p1">${r.fullname}</span></p>
				   		<p class="p2">￥${r.price}</p>
				   		<p class="p3">已售<span>${r.salecount}</span>件</p>
			   		</div>
			   		</a>
			   	</li>
			   	
			   	</c:forEach>
			   
			   </ul>
			   <!--第二行-->
			  
			 
			   <script type="text/javascript">
			   	     $('.cont-xg .sp ul li').mouseenter(function () {
			   	     	$(this).css('border-color','#d63a3b')
			   	     })
			   	     $('.cont-xg .sp ul li').mouseleave(function () {
			   	     	$(this).css('border-color','#ffffff')
			   	     })
			   </script>
			   <div class="page">
			   	  <span class="s1">上一页</span>
			   	  <span class="s5">1</span>
			   	  <span class="s3">2</span>
			   	  <span class="s3">3</span>
			   	  <span class="s3">···</span>
			   	  <span class="s2">50</span>
			   	  <span class="s1">下一页</span>
			   	  <span class="s4">共50页</span>
			   	  <span class="s4">到第</span>
			   	  <span class="s2">2</span>
			   	  <span class="s4">页</span>
			   	  <span class="s1">确定</span>
			   </div>
			   <script type="text/javascript">
			   	  $('.page .s1').mouseenter(function(){
			   	  	$(this).css({'background':'#d63a3b','color':'#ffffff'})
			   	  })
			   	  $('.page .s1').mouseleave(function () {
			   	     	$(this).css({'background':'#eeeeee','color':'#2d2c2c'})
			   	     })
			   	  $('.page .s2').mouseenter(function(){
			   	  	$(this).css({'background':'#d63a3b','color':'#ffffff'})
			   	  })
			   	  $('.page .s2').mouseleave(function () {
			   	     	$(this).css({'background':'#eeeeee','color':'#2d2c2c'})
			   	     })
			   	  $('.page .s3').mouseenter(function(){
			   	  	$(this).css({'background':'#d63a3b','color':'#ffffff'})
			   	  })
			   	  $('.page .s3').mouseleave(function () {
			   	     	$(this).css({'background':'#none','color':'#2d2c2c'})
			   	     })
			   </script>
			</div>
			
		</div>
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
