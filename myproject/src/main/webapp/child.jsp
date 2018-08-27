<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
    <meta charset="UTF-8">
    <title>å­é¡µæµè¯</title>
    <script src="./js/jquery-2.2.4.min.js"></script>
    <script src="./js/win10.child.js"></script>
    <style>
        .btn{
            margin: 20px;
            width: 160px;
            height: 40px;
            line-height: 40px;
            font-size: 16px;
            color: white;
            background-color: #2D93CA;
            border-radius: 3px;
            transition: all 0.5s;
            cursor: pointer;
            text-align: center;
        }
        .btn:hover{
            background-color: #256d95;
        }
    </style>
    <script>
        function f1() {
            Win10_child.newMsg('å­é¡µçé®å','è¿æ¯ä»iframeé¡µè°ç¨APiåéçæ¶æ¯å¦');
        }
        function f2() {
            Win10_child.openUrl('http://win10ui.yuri2.cn','<img class=\'icon\' src=\'./img/icon/win10.png\'/>Win10-UIå®ç½')
        }
        function f3() {
            Win10_child.close();
        }
    </script>
</head>
<body>
    <div class="btn" onclick="f1()">å­é¡µç»ç¶é¡µåæ¶æ¯</div>
    <div class="btn" onclick="f2()">å­é¡µæå¼å­çªå£</div>
    <div class="btn" onclick="f3()">å³é­å­é¡µ</div>
</body>
</html>