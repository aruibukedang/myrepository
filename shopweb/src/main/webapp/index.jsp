

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/homepage.css"/>
		<link rel="stylesheet" type="text/css" href="css/footer.css"/> 
		   <script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
    <script type="text/javascript">
    
    function selectitem(id) {
    	window.location.href="Detail_page?id="+id;
	}
    
    
 /*    
    $(document).ready(function(){
    	var a=${requestScope.a};
    	
    	if(a==null){
    window.location.href="selectitem";	
                }
    }); */
    </script>
		
		<style type="text/css">
			.header3 .header3-cont ul .l3{
	        color: #D63A3B;
}
		</style>
	</head>
	<body>
		
		
		<div class="box">
			<div class="header">
				<jsp:include page="model/header1.jsp"></jsp:include>
				
				<div class="header3">
					<div class="header3-cont">
						<ul>
							<li class="l1">全部分类</li>
							<div class="all">
							
							<dl>
							
							<c:forEach items="${requestScope.typelist}" var="tl" varStatus="v" >
							
							 <c:if test="${tl.parentid==0}"> 
							   
							<dt><a href="product_list?id=${tl.id}"  style="color: white;font-weight: bold;" >${tl.name}</a></dt>
							
							
						     <dd>
								<c:forEach items="${requestScope.typelist}"  var="tl2"  >
								
																
								
								
								<c:if test="${tl2.parent_name==tl.name}">							
								      <a href="product_list?id=${tl2.id}">${tl2.name}</a>		
								        	</c:if>		
								        	
								        
								       					  	
							
								 
								 				
								</c:forEach>
									
								</dd>
									
						    </c:if> 
						    
						    
						     
						    
							
							
							</c:forEach>
							
							
							
								
									<dt>热销产品</dt>
									<dd> 
									   <c:forEach items="${requestScope.typelist}" var="r" varStatus="v" end="2" >
										<a href="">${r.name}</a>
										<!-- <a href="">草莓</a>
										<a href="">火龙果</a> -->
										</c:forEach>
									</dd>
									</dl>
								
							
								<div class="more">
									更多<em></em>
								</div>
							</div>
							<li class="l2 l3">首页</li>
							<li class="l2">主厨先生</li>
							<li class="l2">每日推荐</li>
							<li class="l2">会员专享</li>
							<li class="l2">品质保障</li>
						</ul>
						<div class="clear"></div>
					</div>
				</div>
		</div>
		<div class="banner">
			<img src="img/banner.png"/>
			<img src="img/images/badjksa_02.png"/>
			<img src="img/images/badjksa_02.png"/>
			<ul>
					<li class="current"></li>
					<li></li>
					<li></li>
			</ul>
		</div>
		<script type="text/javascript">
				var n=0
		     function again(){
		     	$('.banner img').last().animate({'marginLeft':'-1349',opacity:'0'},1500,function(){
					$(this).css({opacity:'1','marginLeft':'0'});
					$('.banner').prepend($('.banner img').last())
					if(n<$('.banner ul li').length-1){
						n++;
						$('.banner ul li').eq(n).addClass('.banner ul current').siblings().removeClass('.banner ul current');
					}else{
						n=0;
						$('.banner ul li').eq(n).addClass('.banner ul current').siblings().removeClass('.banner ul current');
					}
				})
		     }
			setInterval(again,1800);
			</script>
		</div>
		<div class="box2">
			<div class="banner-small" style="margin-top: 110px" >
				<div class="every">
					<p><img src="img/mr.png"/></p>
					<p>每日推荐</p>
				</div>
				<div class="s1">
					<a href="#"><img src="img/jiulian.png"/></a>
				</div>
				<div class="s1">
					<a href=""><img src="img/s2.png"/></a>
				</div>
				<div class="s1">
					<a href=""><img src="img/s3.png"/></a>
				</div>
				<div class="s1">
					<a href=""><img src="img/xiaolongxia.png"/></a>
				</div>
		    </div>
		    <div class="clear">
		    </div>
		    <script type="text/javascript">
			$('.header1-cont .left .a1').click(function(){
					$('.tanchu').css('display','block')
				})
				$('.close').click(function () {
					$('.tanchu').css('display','none')
				})
			</script>	
			    
		        <!--新品上市-->
		    <div class="xpss">
		    	<div class="xpss1">
		    		<p class="p1 ">新品上市</p>
		    		<p class="p2 "><a href="">更多<em></em></a></p>
		    	</div>
		    	<div class="clear"></div>
		    	<div class="xpss2">
		    	
		    	
		    	    
		    	
		    		<a class="a1" href="#"><img src="img/xp1.png"/></a>
		    		
		    		<c:forEach items="${requestScope.ilist}"  var="r" end="4" >
    		
		    		<a class="a2" href="javascript:;"  onclick="selectitem(${r.id})">
		    			<em></em>
	     <p class="p1"><img width="150px" height="143px" src="${r.pic}"/></p>  			
		    			<p class="p2">${r.fullname}</p>
		    			<p class="p3">${r.comments}</p>
		    			<p class="p4">￥${r.nowprice}</p>
		    			<p class="p5">已售<span>${r.salecount}</span>件</p>
		    		</a>
		    		
		    		
		    		
		    		</c:forEach>
		    	
		    	
		    	<div class="clear">
		    		
		    	</div>
		    	
		    	
		    </div>
		    
		    <!--品牌专卖-->
		    <div class="xpss">
		    	<div class="xpss-pp">
		    		<p class="p1 ">品牌专卖</p>
		    		<p class="p2 "><a href="">更多<em></em></a></p>
		    	</div>
		    	<div class="clear"></div>
		    	<div class="xpss2">
		    		<a class="a1" href=""><img src="img/pp1.png"/></a>
		    		<a href="product_list?id=1"><img src="img/pp2.png"/></a>
		    		
		    			<c:forEach items="${requestScope.ilist}"  var="r" begin="0" end="2" >
    		
		    		<a class="a2" href="javascript:;"  onclick="selectitem(${r.id})">
		    			<em></em>
	                    <p class="p1"><img width="150px" height="130px" src="${r.pic}"/></p>  			
		    			<p class="p2">${r.fullname}</p>
		    			.
		    			
		    			
		    			<p class="p3">${r.comments}</p>
		    			<p class="p4">￥${r.nowprice}</p>
		    			<p class="p5">已售<span>${r.salecount}</span>件</p>
		    		</a>
		    		
		    		
		    		
		    		</c:forEach>
		    	
		    		
		    	</div>
		    	<div class="ppzm-3">
		    		<a href=""><img src="img/pp8.png"/></a>
		    		<a  class=""><img src="img/pp4.png"/></a>
		    		
		    		<c:forEach items="${requestScope.ilist}"  var="r"  begin="3" end="5" >
    		
		    		<a class="a1" href="javascript:;"  onclick="selectitem(${r.id})">
		    			<em></em>
	     <p class="p1"><img width="150px" height="130px" src="${r.pic}"/></p>  			
		    			<p class="p2">${r.fullname}</p>
		    			<p class="p3">${r.comments}</p>
		    			<p class="p4">￥${r.nowprice}</p>
		    			<p class="p5">已售<span>${r.salecount}</span>件</p>
		    		</a>
		    		
		    		
		    		
		    		</c:forEach>
		    	</div>
		    	<div class="clear"></div>
		    	<div class="banner2">
		    		<img src="img/banner2.png"/>
		    		
		    	</div>
		    </div>
		    <!--水果专场-->
		    <div class="fruit">
		    	<div class="title">
		    		<a href="product_list?id=1"><p class="p1 ">水果专场</p></a>
		    		<p class="p2 "><a href="">更多<em></em></a></p>
		    	</div>
		    	<div class="content1">
		    		<a href=""><img src="img/gdi.png"/></a>
		    		<a href=""><img src="img/sdhfg.png"/></a>
		    			<c:forEach items="${requestScope.ilist}"  var="r"  begin="0" end="1" >
    		
		    		<a class="a1" href="javascript:;"  onclick="selectitem(${r.id})">
		    			<em></em>
	     <p class="p1"><img width="150px" height="130px" src="${r.pic}"/></p>  			
		    			<p class="p2">${r.fullname}</p>
		    			<p class="p3">${r.comments}</p>
		    			<p class="p4">￥${r.nowprice}</p>
		    			<p class="p5">已售<span>${r.salecount}</span>件</p>
		    		</a>
		    		</c:forEach>
		    	</div>
		    	<div class="content2">
		    		<div class="left">
		    			<div class="up">
		    				<ul>
		    					<li><a href="">草莓</a></li>
		    					<li><a href="">香蕉</a></li>
		    					<li><a href="">牛油果</a></li>
		    					<li><a href="">橙子</a></li>
		    					<li><a href="">柚子</a></li>
		    					<li><a href="">芒果</a></li>
		    					<li><a href="">西瓜</a></li>
		    				</ul>
		    				<ul>
		    					<li><a href="">草莓</a></li>
		    					<li><a href="">香蕉</a></li>
		    					<li><a href="">牛油果</a></li>
		    					<li><a href="">橙子</a></li>
		    					<li><a href="">柚子</a></li>
		    					<li><a href="">芒果</a></li>
		    					<li><a href="">西瓜</a></li>
		    				</ul>
		    				<ul>
		    					<li><a href="">草莓</a></li>
		    					<li><a href="">香蕉</a></li>
		    					<li><a href="">牛油果</a></li>
		    					<li><a href="">橙子</a></li>
		    					<li><a href="">柚子</a></li>
		    					<li><a href="">芒果</a></li>
		    					<li><a href="">西瓜</a></li>
		    				</ul>
		    			</div>
		    			<div class="down">
		    				<p class="p1">今日鲜果快讯</p>
		    				<p class="p2"><span>【水果知多少】</span>大家了解水果的基础分类吗？水果分为三类:酸性、
								  亚酸性、甜性。 酸性水果: 葡萄柚、橘子、凤梨、奇异果、柠檬、
								  酸苹果、草莓、酸李 亚酸性水果:苹果、芒果、杏子、木瓜、
								  葡萄、桃子等。</p>
		    			</div>
		    			
		    		</div>
		    			<c:forEach items="${requestScope.ilist}"  var="r"  begin="2" end="5" >
    		
		    		<a class="a1" href="javascript:;"  onclick="selectitem(${r.id})">
		    			<em></em>
	     <p class="p1"><img width="150px" height="130px" src="${r.pic}"/></p>  			
		    			<p class="p2">${r.fullname}</p>
		    			<p class="p3">${r.comments}</p>
		    			<p class="p4">￥${r.nowprice}</p>
		    			<p class="p5">已售<span>${r.salecount}</span>件</p>
		    		</a>
		    		
		    		
		    		
		    		</c:forEach>
		    	</div>
		    </div>
		    <!--蔬菜专场-->
		    <div class="vegetable">
		    	<div class="title">
		    		<p class="p1 ">蔬菜专场</p>
		    		<p class="p2 "><a href="">更多<em></em></a></p>
		    	</div>
		    	<div class="content1-v">
		    		<a href=""><img src="img/gdiu.png"/></a>
		    			<c:forEach items="${requestScope.ilist}"  var="r"  begin="0" end="0" >
    		
		    		<a class="a1" href="javascript:;"  onclick="selectitem(${r.id})">
		    			<em></em>
	     <p class="p1"><img width="150px" height="130px" src="${r.pic}"/></p>  			
		    			<p class="p2">${r.fullname}</p>
		    			<p class="p3">${r.comments}</p>
		    			<p class="p4">￥${r.nowprice}</p>
		    			<p class="p5">已售<span>${r.salecount}</span>件</p>
		    		</a>
		    		
		    		
		    		
		    		</c:forEach>
		    		<a  class="a2">
		    			<img src="img/ijhfd.png"/>
		    		</a>
		    		<c:forEach items="${requestScope.ilist}"  var="r"  begin="1" end="2" >
    		
		    		<a class="a1" href="javascript:;"  onclick="selectitem(${r.id})">
		    			<em></em>
	     <p class="p1"><img width="150px" height="130px" src="${r.pic}"/></p>  			
		    			<p class="p2">${r.fullname}</p>
		    			<p class="p3">${r.comments}</p>
		    			<p class="p4">￥${r.nowprice}</p>
		    			<p class="p5">已售<span>${r.salecount}</span>件</p>
		    		</a>
		   
		    		</c:forEach>
		    	</div>
		    	<div class="content2-v">
		    		<div class="left">
		    			<div class="up">
		    				<ul>
		    					<li><a href="">草莓</a></li>
		    					<li><a href="">香蕉</a></li>
		    					<li><a href="">牛油果</a></li>
		    					<li><a href="">橙子</a></li>
		    				</ul>
		    				<ul>
		    					<li><a href="">草莓</a></li>
		    					<li><a href="">香蕉</a></li>
		    					<li><a href="">牛油果</a></li>
		    					<li><a href="">橙子</a></li>
		    				</ul>
		    				<ul>
		    					<li><a href="">草莓</a></li>
		    					<li><a href="">香蕉</a></li>
		    					<li><a href="">牛油果</a></li>
		    					<li><a href="">橙子</a></li>
		    				</ul>
		    			</div>
		    			<div class="down">
		    				<p class="p1">今日鲜果快讯</p>
		    				<p class="p2"><span>【水果知多少】</span>大家了解水果的基础分类吗？水果分为三类:酸性、
								  亚酸性、甜性。 酸性水果: 葡萄柚、橘子、柠檬等。
								</p>
		    			</div>
		    		</div>
		    	
		    	
		    	<c:forEach items="${requestScope.ilist}"  var="r"  begin="3" end="7" >
    		
		    		<a class="a2" href="javascript:;"  onclick="selectitem(${r.id})">
		    			<em></em>
	     <p class="p1"><img width="150px" height="143px" src="${r.pic}"/></p>  			
		    			<p class="p2">${r.fullname}</p>
		    			<p class="p3">${r.comments}</p>
		    			<p class="p4">￥${r.nowprice}</p>
		    			<p class="p5">已售<span>${r.salecount}</span>件</p>
		    		</a>
		   
		    		</c:forEach>
		    	
		    	</div>
		    	<div class="clear"></div>
		    </div>
		    <!--海鲜水产-->
		    <div class="fish">
		    	<div class="title">
		    		<p class="p1 ">海鲜水产</p>
		    		<p class="p2 "><a href="">更多<em></em></a></p>
		    	</div>
		    	<div class="content1-v">
		    		<a href=""><img src="img/hdsjkf.png"/></a>
		    		
		    	<c:forEach items="${requestScope.ilist}"  var="r"  begin="0" end="1" >
    		
		    		<a class="a1" href="javascript:;"  onclick="selectitem(${r.id})">
		    			<em></em>
	     <p class="p1"><img width="150px" height="143px" src="${r.pic}"/></p>  			
		    			<p class="p2">${r.fullname}</p>
		    			<p class="p3">${r.comments}</p>
		    			<p class="p4">￥${r.nowprice}</p>
		    			<p class="p5">已售<span>${r.salecount}</span>件</p>
		    		</a>
		   
		    		</c:forEach>		    		<a  class="a2">
		    			<img src="img/gsjabfdf.png"/>
		    		</a>
		    		
		    	<c:forEach items="${requestScope.ilist}"  var="r"  begin="2" end="2" >
    		
		    		<a class="a1" href="javascript:;"  onclick="selectitem(${r.id})">
		    			<em></em>
	     <p class="p1"><img width="150px" height="143px" src="${r.pic}"/></p>  			
		    			<p class="p2">${r.fullname}</p>
		    			<p class="p3">${r.comments}</p>
		    			<p class="p4">￥${r.nowprice}</p>
		    			<p class="p5">已售<span>${r.salecount}</span>件</p>
		    		</a>
		   
		    		</c:forEach>
		    	</div>
		    	<div class="content2-v">
		    		<div class="left">
		    			<div class="up">
		    				<ul>
		    					<li><a href="">草莓</a></li>
		    					<li><a href="">香蕉</a></li>
		    					<li><a href="">牛油果</a></li>
		    					<li><a href="">橙子</a></li>
		    				</ul>
		    				<ul>
		    					<li><a href="">草莓</a></li>
		    					<li><a href="">香蕉</a></li>
		    					<li><a href="">牛油果</a></li>
		    					<li><a href="">橙子</a></li>
		    				</ul>
		    				<ul>
		    					<li><a href="">草莓</a></li>
		    					<li><a href="">香蕉</a></li>
		    					<li><a href="">牛油果</a></li>
		    					<li><a href="">橙子</a></li>
		    				</ul>
		    			</div>
		    			<div class="down">
		    				<p class="p1">今日鲜果快讯</p>
		    				<p class="p2"><span>【水果知多少】</span>大家了解水果的基础分类吗？水果分为三类:酸性、
								  亚酸性、甜性。 酸性水果: 葡萄柚、橘子、柠檬等。
								</p>
		    			</div>
		    		</div>
		    		
		    	<c:forEach items="${requestScope.ilist}"  var="r"  begin="3" end="7" >
    		
		    		<a class="a2" href="javascript:;"  onclick="selectitem(${r.id})">
		    			<em></em>
	     <p class="p1"><img width="150px" height="143px" src="${r.pic}"/></p>  			
		    			<p class="p2">${r.fullname}</p>
		    			<p class="p3">${r.comments}</p>
		    			<p class="p4">￥${r.nowprice}</p>
		    			<p class="p5">已售<span>${r.salecount}</span>件</p>
		    		</a>
		   
		    		</c:forEach>
		    		
		    	</div>
		    	<div class="clear">
		    		
		    	</div>
		    	
		    </div>
		    
		      <!--猪牛羊肉-->
		    <div class="meat">
		    	<div class="title">
		    		<p	class="p1">猪牛羊肉</p>
		    		<p class="p2 "><a href="">更多<em></em></a></p>
		    	</div>
		    	<div class="content1-v">
		    		<a href=""><img src="img/hdsgf.png"/></a>
		    		
		    	<c:forEach items="${requestScope.ilist}"  var="r"  begin="0" end="4" >
    		
		    		<a class="a1" href="javascript:;"  onclick="selectitem(${r.id})">
		    			<em></em>
	     <p class="p1"><img width="150px" height="143px" src="${r.pic}"/></p>  			
		    			<p class="p2">${r.fullname}</p>
		    			<p class="p3">${r.comments}</p>
		    			<p class="p4">￥${r.nowprice}</p>
		    			<p class="p5">已售<span>${r.salecount}</span>件</p>
		    		</a>
		   
		    		</c:forEach>
		    		
		    		
		    	</div>
		    	<div class="content2-v">
		    		<div class="left">
		    			<div class="up">
		    				<ul>
		    					<li><a href="">草莓</a></li>
		    					<li><a href="">香蕉</a></li>
		    					<li><a href="">牛油果</a></li>
		    					<li><a href="">橙子</a></li>
		    					
		    					
		    				</ul>
		    				<ul>
		    					<li><a href="">草莓</a></li>
		    					<li><a href="">香蕉</a></li>
		    					<li><a href="">牛油果</a></li>
		    					<li><a href="">橙子</a></li>
		    					
		    					
		    				</ul>
		    				<ul>
		    					<li><a href="">草莓</a></li>
		    					<li><a href="">香蕉</a></li>
		    					<li><a href="">牛油果</a></li>
		    					<li><a href="">橙子</a></li>
		    				</ul>
		    			</div>
		    			<div class="down">
		    				<p class="p1">今日鲜果快讯</p>
		    				<p class="p2"><span>【水果知多少】</span>大家了解水果的基础分类吗？水果分为三类:酸性、
								  亚酸性、甜性。 酸性水果: 葡萄柚、橘子、柠檬等。
								</p>
		    			</div>
		    			
		    		</div>
		    		
		    	<c:forEach items="${requestScope.ilist}"  var="r"  begin="5" end="7" >
    		
		    		<a class="a2" href="javascript:;"  onclick="selectitem(${r.id})">
		    			<em></em>
	     <p class="p1"><img width="150px" height="143px" src="${r.pic}"/></p>  			
		    			<p class="p2">${r.fullname}</p>
		    			<p class="p3">${r.comments}</p>
		    			<p class="p4">￥${r.nowprice}</p>
		    			<p class="p5">已售<span>${r.salecount}</span>件</p>
		    		</a>
		   
		    		</c:forEach>
		    		<a  class="a2">
		    			<img src="img/sgsd.png"/>
		    		</a>
		    		
		    	</div>
		    	<div class="clear">
		    		
		    	</div>
		    	
		    </div>
		    <jsp:include page="model/foot.jsp"></jsp:include>
		</div>
	
	</body>
</html>
