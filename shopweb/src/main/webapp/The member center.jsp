 
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/the member center.css"/>
		<link rel="stylesheet" type="text/css" href="css/footer.css"/>
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
		<div class="cont-hy">
			<ul>
				<li class="left">
					<dt class="d1">订单中心</dt>
					<dd><a href="${pageContext.request.contextPath}/orders/toOrders_details" >我的订单</a></dd>
					<dd>评价晒单</dd>
					<dd>我的活动</dd>
					<dt class="d2">关注中心</dt>
					<dd>我的订单</dd>
					<dd>评价晒单</dd>
					<dd>我的活动</dd>
					<dt class="d3">设置中心</dt>
					<dd class="dd1">个人信息</dd>
					<dd>收货地址</dd>
					
				</li>
				 
				<li class="center">
					<div class="d1">
						<span class="s1">基本信息</span>
						<span class="s2">头像照片</span>
					</div>
					
					<div class="d3">
						    <div class="user">
								<label>用户名：</label>
								<span>1095470622@qq.com</span>
					        </div>
							<div class="name">
								<label>电话：</label>
								<span>17806275870</span>
							</div>
							<div class="sex">
								<label>性别：</label>
								<input class="input2" type="radio" name="sex" value="true" /><span>男</span>
						        <input class="input2" type="radio" name="sex" /><span>女</span>
						        
							</div>
							
							<div class="real">
								<label>会员等级：</label>
								<span>青铜</span>
							</div>
							<div class="hobby">
								<label>兴趣爱好：</label><span>请选择您感兴趣的分类，我们将提供给您最精确的推荐。</span>
								<p>
									<span>水果</span>
									<span>蔬菜</span>
									<span>猪牛羊肉</span>
									<span>海鲜水产</span>
								</p>
							</div>
							<div class="email">
								<label>邮箱验证：</label><span class="blue">立即验证</span>
							</div>
							<a href="index.html"><button>提交</button></a>
						
						
					</div>
				</li>
				
			</ul>
			
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
