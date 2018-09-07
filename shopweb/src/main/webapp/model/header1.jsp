


<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
		<title></title>
		<script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/homepage.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css"/> 
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/layui/css/layui.css"  media="all">
		
          
                <script src="${pageContext.request.contextPath}/js/layui/layui.js" charset="utf-8"></script>
		   <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js" ></script>
		   
		   <script type="text/javascript">
		   
		   
		   </script>
</head>

<div class="header1">
					<div class="header1-cont">
						<div class="left">
							欢迎您来到鲜生购,&nbsp;<span>
							<c:if test="${sessionScope.email==null}">
							<a class="a1" href="${pageContext.request.contextPath}/login.jsp" >请登录</a>&nbsp;
							<a class="a1" href="${pageContext.request.contextPath}/register.jsp" >去注册</a>
							</c:if>
							
							<c:if test="${sessionScope.email!=null}">
							  <a class="a1" href="${pageContext.request.contextPath}/login.jsp" >${sessionScope.email}</a>	
							  
							  	<a class="a1" href="${pageContext.request.contextPath}/exit" >退出登录</a>					
							</c:if>
							
							</span>
						</div>
						<div class="right">
							<ul>
							
							  <c:if test="${sessionScope.email!=null }">
								<li><a href="${pageContext.request.contextPath}/orders/toOrders_details">我的订单<em></em></a></li>
								<li><a href="${pageContext.request.contextPath}/goshopcar">购物车<em></em></a></li>
								<li>收藏夹<em></em></li>
								<li><a href="${pageContext.request.contextPath}/The member center.jsp">会员中心<em></em></li></a>
								<li>客户服务<em></em></li>
								</c:if>
								
								 <c:if test="${sessionScope.email==null }">
								<li><a class="tt1" href="${pageContext.request.contextPath}/index.html">我的订单<em></em></a></li>
								<li><a class="tt1" href="${pageContext.request.contextPath}/index.html">购物车<em></em></a></li>
								<li>收藏夹<em></em></li>
								<li><a class="tt1" href="${pageContext.request.contextPath}/index.html">会员中心<em></em></a></li>
								<li>客户服务<em></em></li>
								</c:if>
								
							</ul>
							<div class="clear">
								
							</div>
							
						</div>
						
					</div>
					<div class="clear">
						
					</div>
					
				</div>
				
				<div class="header2">
					<div class="header2-cont">
						<a href="${pageContext.request.contextPath}/index.html"><img src="${pageContext.request.contextPath}/img/images/gengduo_03.png"/></a>  <!--172*62-->
						<div class="sousuo">
							<div class="sousuo-up">
								<input type="text" name="" id="" value=""placeholder="水果" />
								<em></em>
								<a style="text-decoration:none; " href="${pageContext.request.contextPath}/product_list?id=1" ><p>搜索</p></a>
							</div>
							<div class="sousuo-down">
								<ul>
									<li><a class="red" href="">热门：</a></li>
									
									<li><a class="red" href="${pageContext.request.contextPath}/product_list?id=5">苹果</a></li>
									<li><a href="${pageContext.request.contextPath}/product_list?id=7">芒果</a></li>
									<li><a a class="red" href=""${pageContext.request.contextPath}/product_list?id=8>西瓜</a></li>
									<li><a href="${pageContext.request.contextPath}/product_list?id=10">榴莲</a></li>
									<li><a a class="red" href="${pageContext.request.contextPath}/product_list?id=6">香蕉</a></li>
									<li><a href="${pageContext.request.contextPath}/product_list?id=16">猪排</a></li>
									<li><a class="red" href="${pageContext.request.contextPath}/product_list?id=18">肥羊</a></li>
									<li><a href="${pageContext.request.contextPath}/product_list?id=21">鲤鱼</a></li>
									
								</ul>
								<div class="clear">
									
								</div>
							</div>
							
						</div>
						<div class="gouwuche">
						<c:if test="${sessionScope.email!=null}">
							<a href="${pageContext.request.contextPath}/goshopcar"><em></em></a><span>购物车</span>
							</c:if>
							
							<c:if test="${sessionScope.email==null}">
							<a href="${pageContext.request.contextPath}/index.html"><em></em></a><span>购物车</span>
							</c:if>
						</div>
					</div>
					<div class="clear">
						
					</div>
					
				</div>
				
				
				</html>