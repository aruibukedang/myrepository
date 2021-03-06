<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <title>WIN10-UI-DEMO</title>
    <link rel='Shortcut Icon' type='image/x-icon' href='./img/windows.ico'>
    <script type="text/javascript" src="./js/jquery-2.2.4.min.js"></script>
    <link href="./css/animate.css" rel="stylesheet">
    <script type="text/javascript" src="./component/layer-v3.0.3/layer/layer.js"></script>
    <link rel="stylesheet" href="./component/font-awesome-4.7.0/css/font-awesome.min.css">
    <link href="./css/default.css" rel="stylesheet">
    <script type="text/javascript" src="./js/win10.js"></script>


    <style>
        * {
            font-family: "Microsoft YaHei", å¾®è½¯éé», "MicrosoftJhengHei", åæç»é», STHeiti, MingLiu
        }
        /*ç£è´´èªå®ä¹æ ·å¼*/
        .win10-block-content-text {
            line-height: 44px;
            text-align: center;
            font-size: 16px;
        }
    </style>
    <script>
        Win10.onReady(function () {

            //è®¾ç½®å£çº¸
            Win10.setBgUrl({
                main:'./img/wallpapers/main.jpg',
                mobile:'./img/wallpapers/mobile.jpg',
            });

            Win10.setAnimated([
                'animated flip',
                'animated bounceIn',
            ], 0.01);

            setTimeout(function () {
                Win10.newMsg('å®æ¹äº¤æµä¸ç¾¤', 'æ¬¢è¿åä½å¤§ä¾ å å¥è®¨è®ºï¼<a target="_blank" href="https://jq.qq.com/?_wv=1027&k=4Er0u8i">[ç¹å»å å¥]205546163</a>')
            }, 2500);

            setTimeout(function () {
                Win10.openUrl('//win10ui.yuri2.cn/src/broadcast.html','<i class="fa fa-newspaper-o icon red"></i>ææ°èµè®¯',[['300px', '380px'],'rt'])
            },2000);


        });

        //è¯¥å½æ°å¯å é¤ Orz
        function win10_forgive_me() {
            Win10.enableFullScreen();
            layer.alert('ç¹å»å±ç¤ºä¸ä¸çæ¬ç¹æ§', {}, function(index){
                var blue=$('<img src="./img/presentation/bluescreen.jpg" style="position: fixed;width: 100%;height:100%;top:0;z-index:9999999999" />');
                setTimeout(function () {
                    $('body').append(blue);
                },3000);
                setTimeout(function () {
                    blue.remove();
                    Win10.disableFullScreen();
                    setTimeout(function () {
                        layer.msg('å¼ä¸ªç©ç¬ï¼å«ææ');

                    },1000);
                },7000);
                layer.close(index);
            });

        }
    </script>
</head>
<body>
<div id="win10">
    <div class="desktop">
        <div id="win10-shortcuts" class="shortcuts-hidden">
            <div class="shortcut" onclick="Win10.openUrl('http://win10ui.yuri2.cn','<img class=\'icon\' src=\'./img/icon/win10.png\'/>Win10-UIå®ç½')">
                <img class="icon" src="./img/icon/win10.png"/>
                <div class="title">Win10-UIå®ç½</div>
            </div>
            <div class="shortcut" onclick="Win10.openUrl('https://yuri2.cn','<img class=\'icon\' src=\'./img/icon/blogger.png\'/>å°¤é2å·çåå®¢')">
                <img class="icon" src="./img/icon/blogger.png"/>
                <div class="title">Yuri2's Blog</div>
            </div>
            <div class="shortcut" onclick="Win10.openUrl('win10ui.yuri2.cn/src/doc.php','<img class=\'icon\' src=\'./img/icon/doc.png\'/>å¨çº¿ææ¡£')">
                <img class="icon" src="./img/icon/doc.png"/>
                <div class="title">å¨çº¿ææ¡£</div>
            </div>
            <div class="shortcut" onclick="window.open('https://github.com/yuri2peter/win10-ui')">
                <img class="icon" src="./img/icon/github.png"/>
                <div class="title">github</div>
            </div>
            <div class="shortcut" onclick="Win10.openUrl('https://www.oschina.net/p/win10-ui','<img class=\'icon\' src=\'./img/icon/kyzg.png\'/>å¼æºä¸­å½ï¼æ±æ¯æ~ï¼')">
                <img class="icon" src="./img/icon/kyzg.png"/>
                <div class="title">å¼æºä¸­å½</div>
            </div>
            <div class="shortcut" onclick="window.open('https://github.com/yuri2peter/win10-ui/archive/master.zip')">
                <img class="icon" src="./img/icon/download.png"/>
                <div class="title">å¿«éè·å</div>
            </div>
            <div class="shortcut" onclick='Win10.openUrl("./login.html","<i class=\"fa fa-user icon black-green\"></i>ç¤ºä¾ç»å½é¡µ")'>
                <i class="fa fa-user icon black-green"></i>
                <div class="title">ç¤ºä¾ç»å½é¡µ</div>
            </div>
            <div class="shortcut win10-open-window" data-url="win10ui.yuri2.cn/src/contributor.php">
                <i class="icon fa fa-fw fa-bank red" ></i>
                <div class="title">åäººå </div>
            </div>
            <div class="shortcut win10-open-window" data-url="./plugins/theme_switcher/theme_switcher.html">
                <i class="icon fa fa-fw fa-picture-o blue" ></i>
                <div class="title">åæ¢å£çº¸</div>
            </div>
            <div class="shortcut" onclick='Win10.openUrl("win10ui.yuri2.cn/src/workshop.php","<i class=\"fa fa-gears  icon purple\"></i>åæå·¥å")'>
                <i class="fa fa-gears  icon purple"></i>
                <div class="title">åæå·¥å</div>
            </div>
        </div>
        <div id="win10-desktop-scene"></div>
    </div>
    <div id="win10-menu" class="hidden">
        <div class="list win10-menu-hidden animated animated-slideOutLeft">
            <div class="item"><i class="red icon fa fa-wrench fa-fw"></i><span>APIæµè¯</span></div>
            <div class="sub-item" onclick="Win10.openUrl('./child.html','å­é¡µ')">ç¶å­é¡µæ²é</div>
            <div class="sub-item" onclick="Win10.commandCenterOpen()">æå¼æ¶æ¯ä¸­å¿</div>
            <div class="sub-item" onclick="Win10.newMsg('APIæµè¯','éè¿APIå¯ä»¥åéæ¶æ¯è³æ¶æ¯ä¸­å¿ï¼èªå®ä¹æ é¢ä¸åå®¹(ç¹å»æè¯è¯)',function() {alert('click')})">åéå¸¦åè°çæ¶æ¯</div>
            <div class="sub-item" onclick="Win10.menuClose()">å³é­èå</div>
            <div class="item" ><i class="blue icon fa fa-gavel fa-fw"></i>è¾å©å·¥å·</div>
            <div class="sub-item" onclick="Win10.openUrl('win10ui.yuri2.cn/src/tools/builder-shortcut.html','å¾æ ä»£ç çæå¨')">æ¡é¢å¾æ ä»£ç çæå¨</div>
            <div class="sub-item" onclick="Win10.openUrl('win10ui.yuri2.cn/src/tools/builder-tile.html','ç£è´´ä»£ç çæå¨')">ç£è´´ä»£ç çæå¨</div>
            <div class="sub-item" onclick="Win10.openUrl('win10ui.yuri2.cn/src/tools/builder-menu.html','èåä»£ç çæå¨')">èåä»£ç çæå¨</div>
            <div class="item" onclick="Win10.aboutUs()"><i class="purple icon fa fa-info-circle fa-fw"></i>å³äº</div>
            <div class="item" onclick="layer.open({
                title:'æ¯æä½è',
                type: 1,
                area:'300px',
                offset:'50px',
                shadeClose:true,
                content: '<img width=\'300\' src=\'./img/presentation/donation.jpg\' />'
            })"><i class="green icon fa fa-thumbs-up fa-fw"></i>æèµ </div>
            <div class="item" onclick=" Win10.exit();"><i class="black icon fa fa-power-off fa-fw"></i>å³é­</div>
        </div>
        <div class="blocks">
            <div class="menu_group">
                <div class="title">
                    åºç¨ç¤ºä¾
                </div>
                <div loc="1,1" size="6,3" class="block">
                    <div class="content red detail" >
                        <iframe style="margin-top: 10px" frameborder="no" border="0" marginwidth="0" marginheight="0" width=264 height=110 src="//music.163.com/outchain/player?type=2&id=110771&auto=0&height=90"></iframe>
                    </div>
                    <div class="content red cover">
                        <img width="264" style="position: relative;top: -50px;" src="./img/presentation/wangyiyun.gif" />
                    </div>
                </div>
                <div loc="1,4" size="4,4" class="block">
                    <div class="content blue cover" style="font-size: 30px;line-height: 176px;text-align: center">
                        <i class="fa fa-cloud fa-fw"></i> å¤©æ°
                    </div>
                    <div class="content detail" style="background-color: rgb(46,147,217)">
                        <iframe src="//www.seniverse.com/weather/weather.aspx?uid=U43DF172E7&cid=CHBJ000000&l=&p=SMART&a=1&u=C&s=13&m=2&x=1&d=1&fc=&bgc=2E93D9&bc=&ti=0&in=0&li=" frameborder="0" scrolling="no" width="200" height="300" allowTransparency="true"></iframe>
                    </div>
                </div>
                <div loc="5,4" size="2,2" class="block">
                    <div class="content">
                        <img style="display: inline-block;border-radius: 4px" width="88px" src="http://q2.qlogo.cn/headimg_dl?bs=824831811&dst_uin=824831811&src_uin=824831811&fid=824831811&spec=100&url_enc=0&referer=bu_interface&term_type=PC"/>
                    </div>
                </div>
                <div loc="5,6" size="2,2" class="block" onclick="win10_forgive_me()">
                    <div class="content red">
                        <div style="text-align: center;font-size: 30px;line-height: 44px"><i class="fa fa-bug fa-fw"></i></div>
                        <div style="text-align: center;font-size: 16px;line-height: 44px">å«ç¹æ</div>
                    </div>
                </div>
            </div>

            <div class="menu_group">
                <div class="title">
                    å¸¸ç¨åºæ¯
                </div>
                <div loc="1,1" size="4,3" class="block">
                    <div class="content" style="background-color: orangered">
                        <div class="win10-block-content-text" style="font-size: 26px;line-height: 88px">WIN10-UI</div>
                        <div class="win10-block-content-text">æ¾ç¤ºä¿¡æ¯</div>
                    </div>
                </div>
                <div loc="5,1" size="2,1" class="block">
                    <div class="content" style="background-color: green">
                        <div  class="win10-block-content-text">æå­æé®</div>
                    </div>
                </div>
                <div loc="5,2" size="2,2" class="block">
                    <div class="content">
                        <img style="width: 40px;height: 40px;margin: 5px auto;display: block" src="./img/icon/baidu.png">
                        <div class="win10-block-content-text">å¾æ æé®</div>
                    </div>
                </div>
                <div loc="1,4" size="6,3" class="block">
                    <div class="content" style="background: url('./img/presentation/1.png');background-size: auto">
                        <div style="line-height:132px;text-align: center;">æ¾ç¤ºå¾ç</div>
                    </div>
                </div>
                <div loc="1,7" size="2,1" class="block">
                    <div class="content" style="background-color: grey" onclick="Win10.openUrl('//www.baidu.com')">
                        <div class="win10-block-content-text">åé¨é¾æ¥</div>
                    </div>
                </div>
                <div loc="3,7" size="2,1" class="block">
                    <div class="content" style="background-color: blue" onclick="window.open('https://www.baidu.com')">
                        <div class="win10-block-content-text">å¤é¨é¾æ¥</div>
                    </div>
                </div>
            </div>
        </div>
        <div id="win10-menu-switcher"></div>
    </div>
    <div id="win10_command_center" class="hidden_right">
        <div class="title">
            <h4 style="float: left">æ¶æ¯ä¸­å¿ </h4>
            <span id="win10_btn_command_center_clean_all">å¨é¨æ¸é¤</span>
        </div>
        <div class="msgs"></div>
    </div>
    <div id="win10_task_bar">
        <div id="win10_btn_group_left" class="btn_group">
            <div id="win10_btn_win" class="btn"><span class="fa fa-windows"></span></div>
            <div class="btn" id="win10-btn-browser"><span class="fa fa-internet-explorer"></span></div>
        </div>
        <div id="win10_btn_group_middle" class="btn_group"></div>
        <div id="win10_btn_group_right" class="btn_group">
            <div class="btn" id="win10_btn_time">
                <!--0:00<br/>-->
                <!--1993/8/13-->
            </div>
            <div class="btn" id="win10_btn_command"><span id="win10-msg-nof" class="fa fa-comment-o"></span></div>
            <div class="btn" id="win10_btn_show_desktop"></div>
        </div>
    </div>
</div>
</body>
</html>