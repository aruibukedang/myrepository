
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>GoGoGo</title>
    <link rel="stylesheet" href="css/public.css">
    <link rel="stylesheet" href="css/content.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
    <script type="text/javascript">
    
    $(document).ready(function(){
    	var a=${requestScope.a}
    	
    	if(a==null){
    window.location.href="selectitem";	
                }
    });
    </script>

</head>
<body>
<div class="headerCon">
    <div class="headTop">
        <div class="topCon">
            <div class="topLeft">配送至：山东</div>
            <div class="topRight">
                <a href="login.html">请登录</a>&nbsp;|&nbsp;<a href="register.html">注册</a>&nbsp;|&nbsp;<a>我的订单</a>&nbsp;|&nbsp;<a>我的收藏</a>&nbsp;|&nbsp;<a>客户服务</a>&nbsp;|&nbsp;<a>更多</a>
            </div>
        </div>
    </div>
    <div class="logoCon">
        <div class="indexLogo"></div>
        <div class="logoRight">
            <div class="searchBox">
                <input type="text" value="请输入搜索内容"><button>搜索</button>
                <br><p>热门搜索：奇异果 车厘子 休闲零食</p>
            </div>
            <a class="shoppingCart" href="shoppingCart.html"><span class="shoppingCartIcon"></span>购物车<span>(3)</span>件</a>
        </div>
    </div>
    <div class="indexNavCon">
        <div class="indexNavBox">
            <ul class="menuBox">
                <li class="listTitle">所有分类</li>
                <li><b class="xiuxianIcon"></b><a href="#xiuxianlingshi">休闲零食</a><br><a><span>松子</span></a> <a><span>夏威夷果</span></a></li>
                <li><b class="bingganIcon"></b><a>饼干糕点</a><br><a><span>华夫饼</span></a> <a><span>肉松饼</span></a> <a><span>膨化食品</span></a></li>
                <li><b class="shengxianIcon"></b><a>生鲜果蔬</a><br><a><span>三文鱼</span></a> <a><span>车厘子</span></a> <a><span>蔬菜</span></a></li>
                <li><b class="liangyouIcon"></b><a>粮油干货</a><br><a><span>大米</span></a> <a><span>食用油</span></a> <a><span>南北干货</span></a></li>
                <li><b class="chuantongIcon"></b><a>传统滋补</a><br><a><span>西洋参</span></a> <a><span>燕窝</span></a> <a><span>三七</span></a></li>
                <li><b class="chashuiIcon"></b><a>茶水饮料</a><br><a><span>饮料</span></a> <a><span>果汁</span></a> <a><span>茶叶</span></a></li>
                <li><b class="mingjiuIcon"></b><a>中外名酒</a><br><a><span>白酒</span></a> <a><span>黄酒</span></a> <a><span>葡萄酒</span></a></li>
            </ul>
            <ul class="navRight">
                <li>进口食品</li>
                <li>地方特色</li>
            </ul>
        </div>
    </div>
</div>
<div class="indexContentCon">
    <div class="bannerImg01"></div>
    <div class="baozhang">
        <dl><dt class="pinzhiIcon"></dt><dt>品质保障</dt><dd>按照国家标准质量</dd></dl>
        <dl><dt class="huaidanIcon"></dt><dt>坏单包赔</dt><dd>破碎破烂腐烂包赔</dd></dl>
        <dl><dt class="jisuIcon"></dt><dt>极速发货</dt><dd>24小时内极速发货</dd></dl>
    </div>
    <div class="jinriyouhui">
        <h1>今日优惠</h1>
        <div class="decorationLine"></div>
        <p>仅限今日 快来抢购</p>
        <div class="jinriyouhuiBox">
            <dl class="youhui01">
                <dt><a href="product.html">平和特级红心蜜柚</a></dt>
                <dd>满109.00减20.00 满189.00减30.00</dd>
                <a href="product.html"><dd>立即抢购</dd></a>
            </dl>
            <dl class="youhui02">
                <dt><a href="product.html">四川麻辣风味猪肉脯</a></dt>
                <dd>买三送一 买五送二</dd>
                <a href="product.html"><dd>立即抢购</dd></a>
            </dl>
            <dl class="youhui03">
                <dt><a href="product.html">儿童眼肉牛排套餐</a></dt>
                <dd>满2件大8.00折 满2件打7.00折</dd>
                <a href="product.html"><dd>立即抢购</dd></a>
            </dl>
        </div>
    </div>
    <a name="xiuxianlingshi"></a>
    <div class="xiuxianlingshi">
        <h1>休闲零食</h1>
        <div class="decorationLine"></div>
        <div class="xiuxianlingshiBox">
            <ul class="typeBox">
                <li>坚果炒货</li>
                <li>即食零食</li>
                <li>果干</li>
                <li>糖果巧克力</li>
                <li>奶酪乳品</li>
                <li>进口零食</li>
                <li>肉类即食零食</li>
            </ul>
            <dl class="xiuxianlingshi01" style="" >
                 
                  
                <dt href="#">${requestScope.ilist.get(0).fullname}</dt>
                <dd>￥19.90</dd>
                <dd class="yuanjia">￥39.00</dd>
            </dl>
            <dl class="xiuxianlingshi02">
                <dt href="#">飘零大叔麻辣牛板筋四川特产零食新品牛肉干</dt>
                <dd>￥29.90</dd>
                <dd class="yuanjia">￥49.00</dd>
            </dl>
            <dl class="xiuxianlingshi03">
                <dt href="#">奶油味夏威夷果果仁大仁满好开</dt>
                <dd>￥26.90</dd>
                <dd class="yuanjia">￥59.00</dd>
            </dl>
            <dl class="xiuxianlingshi04">
                <dt href="#">乐渔铁板烧鱿鱼片鱿鱼丝海鲜零食即食小吃</dt>
                <dd>￥39.00</dd>
                <dd class="yuanjia">￥60.00</dd>
            </dl>
        </div>
    </div>
    <div class="binggangaodian">
        <h1>饼干糕点</h1>
        <div class="decorationLine"></div>
        <div class="binggangaodianBox">
            <ul class="typeBox">
                <li>传统糕点</li>
                <li>西式糕点</li>
                <li>膨化食品</li>
                <li>薯片</li>
                <li>特产零食</li>
                <li>进口零食</li>
            </ul>
            <dl class="binggangaodian01">
                <dt href="#">特产零食喜多兄弟烤土豆片香辣味</dt>
                <dd>￥2.00</dd>
                <dd class="yuanjia">￥5.00</dd>
            </dl>
            <dl class="binggangaodian02">
                <dt href="#">俄罗斯进口提拉米苏蛋糕纯奶油夹心500g</dt>
                <dd>￥96.90</dd>
                <dd class="yuanjia">￥159.00</dd>
            </dl>
            <dl class="binggangaodian03">
                <dt href="#">易拉罐装爆浆麻薯12个椰丝蔓越莓糍粑零食</dt>
                <dd>￥39.00</dd>
                <dd class="yuanjia">￥60.00</dd>
            </dl>
        </div>
        <dl class="binggangaodian04 bigPic">
            <dt href="#">百邦布尔本德式什锦奶油曲奇饼干60枚铁罐</dt>
            <dd>￥29.90</dd>
            <dd class="yuanjia">￥49.00</dd>
        </dl>
    </div>
    <div class="shengxianguoshu">
        <h1>生鲜果蔬</h1>
        <div class="decorationLine"></div>
        <dl class="shengxianguoshu01 bigPic">
            <dt href="#">泰国进口新鲜山竹时令水果山竹顺丰包邮</dt>
            <dd>￥88.90</dd>
            <dd class="yuanjia">￥149.00</dd>
        </dl>
        <div class="shengxianguoshuBox">
            <dl class="shengxianguoshu02">
                <dt href="#">现货厄瓜多尔燕窝果黄火龙果 金麒麟果</dt>
                <dd>￥38.88</dd>
                <dd class="yuanjia">￥60.50</dd>
            </dl>
            <dl class="shengxianguoshu03">
                <dt href="#">湖北特产新鲜莲藕绿色认证现挖现卖发顺丰</dt>
                <dd>￥49.50</dd>
                <dd class="yuanjia">￥98.00</dd>
            </dl>
            <dl class="shengxianguoshu04">
                <dt href="#">肉司令家庭儿童牛排套餐10份装 新鲜牛肉</dt>
                <dd>￥129.00</dd>
                <dd class="yuanjia">￥238.00</dd>
            </dl>
            <ul class="typeBox">
                <li>水果</li>
                <li>蔬菜</li>
                <li>蛋制品</li>
                <li>熟食</li>
                <li>鲜肉</li>
                <li>进口肉类</li>
                <li>进口水果</li>
            </ul>
        </div>
    </div>
    <div class="liangyouganhuo">
        <h1>粮油干货</h1>
        <div class="decorationLine"></div>
        <div class="liangyouganhuoBox">
            <dl class="liangyouganhuo01 typeLeft">
                <dt href="#">福建莆田农家大米无抛光现碾 纯天然</dt>
                <dd>￥3.80</dd>
                <dd class="yuanjia">￥6.90</dd>
            </dl>
            <dl class="liangyouganhuo02 typeLeft">
                <dt href="#">谢家村山茶油 玻璃瓶 年货礼盒</dt>
                <dd>￥150.88</dd>
                <dd class="yuanjia">￥260.50</dd>
            </dl>
            <ul class="typeBox">
                <li>主食</li>
                <li>粗粮</li>
                <li>调味品</li>
                <li>烘焙原料</li>
                <li>食用油</li>
                <li>干货</li>
                <li>腊味</li>
            </ul>
            <dl class="liangyouganhuo03">
                <dt href="#">泰康黄牌辣酱油上海辣酱油风味调味料</dt>
                <dd>￥9.50</dd>
                <dd class="yuanjia">￥20.00</dd>
            </dl>
            <dl class="liangyouganhuo04">
                <dt href="#">农家纯天然干货古田银耳润肠胃养肤超糯</dt>
                <dd>￥29.00</dd>
                <dd class="yuanjia">￥48.00</dd>
            </dl>
        </div>

    </div>
    <div class="chuantongzibu">
        <h1>传统滋补</h1>
        <div class="decorationLine"></div>
        <div class="chuantongzibuBoxLeft">
            <dl class="chuantongzibu01">
                <dt href="#">即食固元糕阿胶糕山东特产手工阿胶膏</dt>
                <dd>￥89.80</dd>
                <dd class="yuanjia">￥199.00</dd>
            </dl>
            <dl class="chuantongzibu02">
                <dt href="#">纯白茯苓粉 优质茯苓丁 纯正茯苓 土茯苓</dt>
                <dd>￥29.88</dd>
                <dd class="yuanjia">￥50.50</dd>
            </dl>
        </div>
        <dl class="chuantongzibu03 bigPic">
            <dt href="#">深山野生土蜂蜜 纯天然蜂蜜 百花蜜</dt>
            <dd>￥108.50</dd>
            <dd class="yuanjia">￥249.00</dd>
        </dl>
        <div class="chuantongzibuBoxRight">
            <ul class="typeBox">
                <li>养生滋补</li>
                <li>滋补食材</li>
                <li>蜂类产品</li>
                <li>药食同源</li>
                <li>参茸贵细</li>
                <li>参类滋补</li>
            </ul>
            <dl class="chuantongzibu04">
                <dt href="#">马来西亚进口小盏燕窝孕妇滋补品</dt>
                <dd>￥2888.00</dd>
                <dd class="yuanjia">￥4000.00</dd>
            </dl>
        </div>
    </div>
    <div class="chashuiyinliao">
        <h1>茶水饮料</h1>
        <div class="decorationLine"></div>
        <div class="chashuiyinliaoBoxLeft">
            <dl class="chashuiyinliao01">
                <dt href="#">现货厄瓜多尔燕窝果黄咖啡豆</dt>
                <dd>￥68.88</dd>
                <dd class="yuanjia">￥99.50</dd>
            </dl>
            <ul class="typeBox">
                <li>红茶</li>
                <li>白茶</li>
                <li>乳饮品</li>
                <li>饮料</li>
                <li>绿茶</li>
                <li>乌龙茶</li>
                <li>咖啡</li>
                <li>冲饮</li>
            </ul>
        </div>
        <dl class="chashuiyinliao02 bigPic">
            <dt href="#">特级金骏眉 红茶双龙至尊 陶瓷罐装至尊红茶双龙</dt>
            <dd>￥88.90</dd>
            <dd class="yuanjia">￥199.00</dd>
        </dl>
        <div class="chashuiyinliaoBoxRight">
            <dl class="chashuiyinliao03">
                <dt href="#">糖糖屋 波兰进口三特坚果干燕麦片</dt>
                <dd>￥28.50</dd>
                <dd class="yuanjia">￥49.00</dd>
            </dl>
            <dl class="chashuiyinliao04">
                <dt href="#">星巴克咖啡奶茶 5条速溶咖啡+5包奶茶</dt>
                <dd>￥38.00</dd>
                <dd class="yuanjia">￥79.00</dd>
            </dl>
        </div>
    </div>
    <div class="zhongwaimingjiu">
        <h1>中外名酒</h1>
        <div class="decorationLine"></div>
        <div class="zhongwaimingjiuBox">
            <ul class="typeBox">
                <li>白酒</li>
                <li>啤酒</li>
                <li>葡萄酒</li>
                <li>黄酒</li>
                <li>调制酒</li>
                <li>洋酒</li>
                <li>礼盒装</li>
            </ul>
            <dl class="zhongwaimingjiu01">
                <dt href="#">西班牙进口玫瑰粉桃红甜气泡酒红酒葡萄酒</dt>
                <dd>￥128.00</dd>
                <dd class="yuanjia">￥258.00</dd>
            </dl>
            <dl class="zhongwaimingjiu02">
                <dt href="#">帝王12年威士忌苏格兰威士忌</dt>
                <dd>￥129.88</dd>
                <dd class="yuanjia">￥220.00</dd>
            </dl>
            <dl class="zhongwaimingjiu03">
                <dt href="#">智利蒙特斯欧法梅洛干红葡萄酒 2012年</dt>
                <dd>￥136.00</dd>
                <dd class="yuanjia">￥249.00</dd>
            </dl>
            <dl class="zhongwaimingjiu04">
                <dt href="#">法国进口香奈桃红起泡酒气泡酒半干型葡萄酒</dt>
                <dd>￥288.00</dd>
                <dd class="yuanjia">￥400.00</dd>
            </dl>
        </div>
    </div>
    <div class="bottomLogo"></div>
</div>
<div class="footerCon">
    <p><a>关于我们</a> | <a>合作伙伴</a> | <a>营销中心</a> | <a>廉正举报</a> | <a>联系客服</a> | <a>开放平台</a> | <a>诚征英才</a> | <a>联系我们</a> | <a>网站地图</a> | <a>法律声明</a> | <a>知识产权</a> | © 2003-2016 chihuo.com 版权所有</p>
    <p>网络文化经营许可证：浙网文[2013]0268-000号|增值电信业务经营许可证：京B2-20081001|信息网络传播视听节目许可证：1109364号|互联网违法和不良信息举报电话:400-800-8000</p>
</div>
</body>
</html>