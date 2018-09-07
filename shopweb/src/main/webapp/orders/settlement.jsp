<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!doctype html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>锡货超市</title>
<link href="css/public.css" type="text/css" rel="stylesheet"/>
<link rel="stylesheet" type="text/css" href="css/base.css"/>
        <script type="text/javascript" src="js/jquery_cart.js"></script>  
        <link rel="stylesheet" type="text/css" href="css/checkOut.css" />
</head>

<body>
 <!--顶部快捷菜单-->
    
    	<jsp:include page="../model/header1.jsp"></jsp:include>
    
    <!--顶部Logo及搜索-->
    
     <!--  导航条    start-->
 	<div class="yHeader">
		<div class="shop_Nav">
			<div class="pullDown">
				<h2 class="pullDownTitle"><i></i>全部商品分类</h2>
			</div>

			<ul class="Menu_box">
				<li><a href="" target="_blank" class="yMenua">首页</a></li>
				<li><a href="" target="_blank">大划算</a></li>
				<li><a href="" target="_blank">抢拍</a></li>
				<li><a href="" target="_blank">锡货专场</a></li>
				<li><a href="" target="_blank">锡货超市</a></li>
			</ul>
            <div class="fr r_icon"><i class="i01"></i><span>30天退货</span><i class="i02"></i><span>满59包邮</span></div>
		</div>
 	</div>
	<!--  导航条    end-->
    
    
    
   <div class="banner_red_top"> 
        

  </div>  
    
    
 <!--收货地址body部分开始-->  
 <div class="border_top_cart">
  <script type="text/javascript">
  
 
  
 function gotoa() {
	 
	 
	 $.post(
			 "pay",
	             {   "address_id":1
	            	},
	            	
	            function(json) {       	            		
	            	   	alert("支付成功")
	          	      if(json.status>0){
	          	        	location.href="toOrders_details";

	          }
	         
				},"json");
	 
	
}
  
  
    var checkoutConfig={
        addressMatch:'common',
        addressMatchVarName:'data',
        hasPresales:false,
        hasBigTv:false,
        hasAir:false,
        hasScales:false,
        hasGiftcard:false,
        totalPrice:244.00,
        postage:10,//运费
        postFree:true,//活动是否免邮了
        bcPrice:150,//计算界值
        activityDiscountMoney:0.00,//活动优惠
        showCouponBox:0,
        invoice:{
            NA:"0",
            personal:"1",
            company:"2",
            electronic:"4"
        }
    };
    var miniCartDisable=true;
</script>
<div class="container">
    <div class="checkout-box">
       
            <div class="checkout-box-bd">
                    <!-- 地址状态 0：默认选择；1：新增地址；2：修改地址 -->
                <input type="hidden" name="Checkout[addressState]" id="addrState"   value="0">
                <!-- 收货地址 -->
                <div class="xm-box">
                    <div class="box-hd ">
    <h2 class="title">收货地址</h2>
    <!---->
</div>
<div class="box-bd">
    <div class="clearfix xm-address-list" id="checkoutAddrList">
        <c:forEach items="${requestScope.address}" var="r" >
          <dl class="item" ad="${r.id}" >
            <dt>
                
                <strong class="itemConsignee">${r.name}</strong>
                                <span class="itemTag tag">家</span>
                            </dt>
            <dd>
                <p class="tel itemTel">${r.tel}</p>
                <p class="itemRegion">${r.zone}</p>
                <p class="itemStreet">${r.addr}</p>
                                                        <span class="edit-btn J_editAddr">编辑</span>
                                                                </dd>
            <dd style="display:none">
                <input type="radio" name="Checkout[address]" class="addressId"  value="10140916720030323">
            </dd>
        </dl>
        </c:forEach>
                        <div class="item use-new-addr"  id="J_useNewAddr" data-state="off">
             <span class="iconfont icon-add"><img src="images/add_cart.png" /></span> 
            使用新地址
        </div>
            </div>
        <input type="hidden" name="newAddress[type]" id="newType" value="common">
    <input type="hidden" name="newAddress[consignee]" id="newConsignee">
    <input type="hidden" name="newAddress[province]" id="newProvince">
    <input type="hidden" name="newAddress[city]" id="newCity">
    <input type="hidden" name="newAddress[district]" id="newCounty">
    <input type="hidden" name="newAddress[address]" id="newStreet">
    <input type="hidden" name="newAddress[zipcode]" id="newZipcode">
    <input type="hidden" name="newAddress[tel]" id="newTel">
    <input type="hidden" name="newAddress[tag_name]" id="newTag">
    <!--点击弹出新增/收货地址界面start-->
    <div class="xm-edit-addr-box" id="J_editAddrBox">
         <form   action="addaddress" method="post">
       
        <div class="bd">
            <div class="item">
                <label>收货人姓名<span>*</span></label> 
                <input type="text" name="name" id="Consignee" class="input" placeholder="收货人姓名" maxlength="15" autocomplete='off'>
                <p class="tip-msg tipMsg"></p>
            </div>
            <div class="item">
                <label>联系电话<span>*</span></label> 
                <input type="text" name="tel" class="input" id="Telephone" placeholder="11位手机号" autocomplete='off'>
                <p class="tel-modify-tip" id="telModifyTip"></p>
                <p class="tip-msg tipMsg"></p>
            </div>
            <div class="item">
                <label>地址<span>*</span></label>
                <select name="province" id="Provinces" class="select-1">
                    <option>省份/自治区</option>
                </select>
                <select name="city"  id="Citys" class="select-2" disabled>
                    <option>城市/地区/自治州</option>
                </select>
                <select name="county"  id="Countys" class="select-3" disabled>
                    <option>区/县</option>
                </select>
                <textarea   name="addr" class="input-area" id="Street" placeholder="路名或街道地址，门牌号"></textarea>
                <p class="tip-msg tipMsg"></p>
            </div>
            <div class="item">
                <label>邮政编码<span>*</span></label> 
                <input type="text"  id="Zipcode" class="input" placeholder="邮政编码"  autocomplete='off'>
                <p class="zipcode-tip" id="zipcodeTip"></p>
                <p class="tip-msg tipMsg"></p>
            </div>
           
        </div>
        
        
        <div class="ft clearfix">
            <button  type="button"  class="btn btn-lineDake btn-small " id="J_editAddrCancel">取消</button>
             <button type="submit" class="btn btn-primary  btn-small " id="J_editAddrOk">保存</button>
        </div>
        
          </form>
    </div>
    <!--点击弹出新增/收货地址界面end-->
    <div class="xm-edit-addr-backdrop" id="J_editAddrBackdrop"></div>
    
    
</div>                </div>

                <!-- 收货地址 END-->
                
                
                <div id="checkoutPayment">
                    <!-- 支付方式 -->
                                <div class="xm-box">
                <div class="box-hd ">
                    <h2 class="title">支付方式</h2>
                </div>
                <div class="box-bd">
                    <ul id="checkoutPaymentList" class="checkout-option-list clearfix J_optionList">
                                                <li class="item selected">
                            <input type="radio" name="Checkout[pay_id]" checked="checked" value="1">
                            <p>
                                在线支付                                <span></span>
                            </p>
                        </li>
                                            </ul>
                </div>
            </div>
            <!-- 支付方式 END-->
            <div class="xm-box">
                <div class="box-hd ">
                    <h2 class="title">配送方式</h2>
                </div>
                <div class="box-bd">
                    <ul id="checkoutShipmentList" class="checkout-option-list clearfix J_optionList">
                                                <li class="item selected">
                            <input type="radio" data-price="0" name="Checkout[shipment_id]" checked="checked" value="1">
                            <p>
                                快递配送（免运费）                                <span></span>
                            </p>
                        </li>
                                            </ul>
                </div>
            </div>
            <!-- 配送方式 END-->                    <!-- 配送方式 END-->
                </div>
                <!-- 送货时间 -->
                <div class="xm-box">
                    <div class="box-hd">
                        <h2 class="title">送货时间</h2>
                    </div>
                    <div class="box-bd">
                        <ul class="checkout-option-list clearfix J_optionList">
                                                        <li class="item selected"><input type="radio" checked="checked" name="Checkout[best_time]" value="1"><p>不限送货时间<span>周一至周日</span></p></li><li class="item "><input type="radio"  name="Checkout[best_time]" value="2"><p>工作日送货<span>周一至周五</span></p></li><li class="item "><input type="radio"  name="Checkout[best_time]" value="3"><p>双休日、假日送货<span>周六至周日</span></p></li>                        </ul>
                    </div>
                </div>
                <!-- 送货时间 END-->
                <!-- 发票信息 -->
             
                <!-- 发票信息 END-->
            </div>
            <div class="checkout-box-ft">
                 <!-- 商品清单 -->
                <div id="checkoutGoodsList" class="checkout-goods-box">
                                    <div class="xm-box">
                    <div class="box-hd">
                        <h2 class="title">确认订单信息  &nbsp&nbsp&nbsp&nbsp订单号:${requestScope.orders.code}</h2>
                    </div>
                    <div class="box-bd">
                        <dl class="checkout-goods-list">
                            <dt class="clearfix">
                                <span class="col col-1">商品名称</span>
                               
                                <span class="col col-2">购买价格</span>
                                <span class="col col-3">购买数量</span>
                                <span class="col col-4">小计（元）</span>
                            </dt>
                            
                            <c:forEach items="${requestScope.orders_details}" var="r" >
                                                        <dd class="item clearfix">
                                <div class="item-row">
                                    <div class="col col-1">
                                        <div class="g-pic">
                                            <img src="${r.pic}" srcset="http://i1.mifile.cn/a1/T11lLgB5YT1RXrhCrK!80x80.jpg 2x" width="40" height="40" />
                                        </div>
                                        <div class="g-info">
                                                                                          <a href="#">
                                               ${r.fullname}                                            </a>
                                                                                                                                </div>
                                    </div>
                
                                    <div class="col col-2"> ${r.nowprice} 元</div>
                                    <div class="col col-3">${r.count}</div>
                                    <div class="col col-4">${r.nowprice*r.count}元</div>
                                </div>
                            </dd>
                            </c:forEach>
                                                    </dl>
                        <div class="checkout-count clearfix">
                            <div class="checkout-count-extend xm-add-buy">
                                <h3 class="title">会员留言</h2></br>
                                <input type="text" />

                            </div>
                            <!-- checkout-count-extend -->
                            <div class="checkout-price">
                                <ul>

                                    <li>
                                       订单总额：<span>${requestScope.orders.amount}元</span>
                                    </li>
                                    <li>
                                        活动优惠：<span>-<fmt:formatNumber type="number" value="${requestScope.orders.amount - requestScope.orders.nowamount}" pattern="0.00" maxFractionDigits="2"/>元</span>
                                        <script type="text/javascript">
                                            checkoutConfig.activityDiscountMoney=${requestScope.orders.amount};
                                            checkoutConfig.totalPrice=${requestScope.orders.nowamount};
                                        </script>
                                    </li>
                                    <li>
                                        优惠券抵扣：<span id="couponDesc">-0元</span>
                                    </li>
                                    <li>
                                        运费：<span id="postageDesc">0元</span>
                                    </li>
                                </ul>
                                <p class="checkout-total">应付总额：<span><strong id="totalPrice">${requestScope.orders.nowamount}</strong>元</span></p>
                            </div>
                            <!--  -->
                        </div>
                    </div>
                </div>

    <!--S 加价购 产品选择弹框 -->
                <div class="modal hide modal-choose-pro" id="J_choosePro-664">
                <div class="modal-header">
                    <span class="close" data-dismiss='modal'><i class="iconfont">&#xe617;</i></span>
                    <h3>选择产品</h3>
                    <div class="more">
                        <div class="xm-recommend-page clearfix">
                            <a class="page-btn-prev   J_carouselPrev iconfont" href="javascript: void(0);">&#xe604;</a><a class="page-btn-next  J_carouselNext iconfont" href="javascript: void(0);">&#xe605;</a>
                        </div>
                    </div>
                </div>
                <div class="modal-body J_chooseProCarousel">
                    <div class="J_carouselWrap modal-choose-pro-list-wrap">
                        <ul class="clearfix J_carouselList">
                                                    </ul>
                    </div>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn btn-disabled J_chooseProBtn">加入购物车</a>
                </div>
            </div>
                <!--E 加价购 产品选择弹框 -->
    
    <!--S 保障计划 产品选择弹框 -->
    
    
                </div>
                <!-- 商品清单 END -->
                <input type="hidden"  id="couponType" name="Checkout[couponsType]">
                <input type="hidden" id="couponValue" name="Checkout[couponsValue]">
                <div class="checkout-confirm">
                    
                     <a href="#" class="btn btn-lineDakeLight btn-back-cart">返回购物车</a>
                     <input type="button" class="btn btn-primary" value="立即支付" id="checkoutToPay" onclick="gotoa();" />
                                     </div>
            </div>
        </div>

  

</div>
<!-- 禮品卡提示 S-->
    
<!--  禮品卡提示 E-->
<!-- 预售提示 S-->

<!--  预售提示 E-->

<script id="newAddrTemplate" type="text/x-dot-template">
        <dl class="item selected" data-isnew="true" data-consignee="{{=it.consignee}}" data-tel="{{=it.tel}}" data-province="{{=it.province}}" data-provincename="{{=it.provinceName}}" data-city="{{=it.city}}" data-cityname="{{=it.cityName}}" data-county="{{=it.county}}" data-countyname="{{=it.countyName}}" data-zipcode="{{=it.zipcode}}" data-street="{{=it.street}}" data-tag="{{=it.tag}}">
            <dt>
                <strong class="itemConsignee">{{=it.consignee}}</strong>
                {{? it.tag }}
                    <span  class="itemTag tag">{{=it.tag}}</span>
                {{?}}
            </dt>
            <dd>
                <p class="tel itemTel">{{=it.tel}}</p>
                <p  class="itemRegion">{{=it.provinceName}} {{=it.cityName}} {{=it.countyName}}</p>
                <p  class="itemStreet">{{=it.street}} ({{=it.zipcode}})</p>
                <span class="edit-btn J_editAddr">编辑</span>
            </dd>
        </dl>
</script>


<!-- 保险弹窗 -->
<!-- 保险弹窗 -->


        

    <script src="js/base.min.js"></script>

        <script type="text/javascript" src="js/address_all.js"></script>
<script type="text/javascript" src="js/checkout.min.js"></script> 
</div>
 
 <!--收货地址body部分结束-->
    
    
    
    <!-- 底部 -->
    <div class="promise_box">
    	<div class="w">
    		<ul>
        		<li><img src="images/promise_img01.jpg"><span>365天不打烊</span></li>
        		<li><img src="images/promise_img02.jpg"><span>无理由退换货</span></li>
        		<li><img src="images/promise_img03.jpg"><span>担保交易</span></li>
        		<li><img src="images/promise_img04.jpg"><span>先行赔付</span></li>
        		<li><img src="images/promise_img05.jpg"><span>支持定制</span></li>
        	</ul>
    	</div>
    </div>
    <div class="bottom-links">
        <ul class="clearfix cols">
            <li class="col">
                <div class="bottom-links-title">关于我们</div>
                <ul class="clearfix bottom-links-items">
                    <li><a href="#">招聘英才</a></li>
                    <li><a href="#">公司简介</a></li>
                    <li><a href="#">合作洽谈</a></li>
                    <li><a href="#">联系我们</a></li>
                </ul>
            </li>
            <li class="col">
                <div class="bottom-links-title">客服中心</div>
                <ul class="clearfix bottom-links-items">
                    <li><a href="#">收货地址</a></li>
                    <li><a href="#">个人资料</a></li>
                    <li><a href="#">修改密码</a></li>
                </ul>
            </li>
            <li class="col">
                <div class="bottom-links-title">售后服务</div>
                <ul class="clearfix bottom-links-items">
                    <li><a href="#">退换货政策</a></li>
                    <li><a href="#">退款说明</a></li>
                    <li><a href="#">联系卖家</a></li>
                </ul>
            </li>
            <li class="col">
                <div class="bottom-links-title">帮助中心</div>
                <ul class="clearfix bottom-links-items">
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">积分兑换</a></li>
                    <li><a href="#">积分细则</a></li>
                    <li><a href="#">已购商品</a></li>
                </ul>
            </li>
            <li class="col">
            	<div class="bottom-links-title">锡好网公众号</div>
                <ul class="clearfix bottom-links-items">
                    <li>
                        <img src="images/weixin_big.jpg" />
                    </li>
                </ul>
            </li>
            <li class="col">
                <div class="bottom-links-title">关注我们</div>
                <ul class="clearfix bottom-links-items">
                    <li><img src="images/icon_sina.png" /><a href="#">新浪微博</a></li>
                    <li><img src="images/icon_tencent.png" /><a href="#">腾讯微博</a></li>
                    <li><img src="images/icon_dou.png" /><a href="#">豆瓣小站</a></li>
                    <li><img src="images/icon_weixin.png" /><a href="#">官方微信</a></li>
                </ul>
            </li>
            
        </ul>
    </div>
    <div class="footer_v2013 bottom-about">
        <div class="w">
            <p class="foot_p1">
                <a href="#">首页</a>|<a href="#">招聘英才</a>|<a href="#">广告合作</a>|<a href="#">联系我们</a>|<a href="#">关于我们</a>
            </p>
                <pre>
    经营许可证：苏B2-20130223备案许可证：苏ICP备13041162号-1360网站安全检测平台
    ©2013-2014 无锡太湖云电商网络科技发展有限公司   版权所有  更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a>
                </pre>
        </div>
        <p>
            <a href="#"><img src="images/bottom_img01.png"></a>
            <a href="#"><img src="images/bottom_img02.png"></a>
            <a href="#"><img src="images/bottom_img03.png"></a>
            <a href="#"><img src="images/bottom_img04.png"></a>
            <a href="#"><img src="images/bottom_img05.png"></a>
            <a href="#"><img src="images/bottom_img06.png"></a>
            <a href="#"><img src="images/bottom_img07.png"></a>
            <a href="#"><img src="images/bottom_img08.png"></a>
            <a href="#"><img src="images/bottom_img09.png"></a>
        </p>
    </div>
    <!-- 底部 -->
    <div class="fixed-buttons">
        <ul>
            <li><a href="#" class="fixed-weixin"><img src="images/fixed_weixin.png" /><div class="weixin-pic"><img src="images/weixin_big.jpg"></div></a></li>
            <li><img id="imgBtn-to-top" src="images/back_top.png" /></li>
        </ul>
    </div>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="js/unslider.min.js" type="text/javascript"></script>
    <script src="js/index.js" type="text/javascript"></script>

</body>
</html>
