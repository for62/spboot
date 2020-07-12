<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript">
    $(function(){

        $(this).load("show"); // 页面加载完成时返回内地数据

        $(".stype").click(function () {
            $.post("show",{type:$(this).html()});
        });
    });
</script>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Q易云音乐-千万正版音乐海量无损曲库新歌热歌天天畅听的高品质音乐平台</title>
    <link rel="stylesheet" href="css/characteristic.css">
    <link rel="stylesheet" href="css/Recommend.css">
    <link rel="stylesheet" href="css/Down.css">
    <link rel="stylesheet" href="css/xindie.css">
    <!--<meta name=”viewport” content=”width=device-width, initial-scale=1″ />-->
    <meta name="viewport"
          content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <script src="js/Change.js"></script>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        #div1 {
            width: 920px;
            height: 418px;
            position: absolute;
            /*border: 1px solid;*/
            float: left;
            margin: 40px 0px 0px 420px;
        }

        #div1 > div {
            position: absolute;
            width: 100%;
            height: 100%;
            transform-style: preserve-3d;
            /*transform:perspective(800px);*/
        }

        #div1 > div > div {
            position: absolute;
            transform: perspective(300px);
        }
    </style>


</head>
<body>
<!--导航栏部分-->
<div class="mod_header">
    <div class="mod_top">
        <div class="top_nav">
            <div class="top_nav_Left">
                <img src="image/QQLogo.png" style="float:left;margin-top:10px;width:200px;height:60px">
                <ul>
                    <li class="top_nav_Left_session1">
                        <a href="javascripte:void(0)" style="color: white">音乐馆</a>
                    </li>
                    <li class="top_nav_Left_session">
                        <a href="javascripte:void(0)">我的音乐</a>
                    </li>
                    <li class="top_nav_Left_session">
                        <a href="javascripte:void(0)">客户端</a>
                    </li>
                    <li class="top_nav_Left_session">
                        <a href="javascripte:void(0)">音乐号</a>
                    </li>
                    <li class="top_nav_Left_session">
                        <a href="javascripte:void(0)">VIP</a>
                    </li>
                </ul>
            </div>
            <div class="top_nav_Right">
                <div class="search_all">
                    <div class="search">
                        <div class="search_Left">
                            <a href="javascripte:void(0)"><img src="image/search.png" alt=""
                                                               style="width:35px;height:35px;"></a>
                        </div>
                        <div class="search_Right">
                            <input type="text" placeholder="搜索音乐、MV、歌单、用户" style="width: 190px;height: 30px;">
                        </div>
                    </div>
                    <div class="search_R">
                        <div class="search_RD">
                            <a href="login.html">登录</a>
                        </div>
                        <div class="search_RB">
                            <input type="submit" value="开通绿钻豪华版"
                                   style="height: 35px;background-color: #00c758;border: none;color: white">
                            <input type="submit" value="开通付费包" style="height: 35px;">
                        </div>
                    </div>

                </div>

            </div>
        </div>
        <hr style="color: #c3c3c3
">
        <div class="bottom_nav">
            <ul style="display: inline-block;">
                <li class="bottom_nav_style">
                    <a href="javascripte:void(0)">首页</a>
                </li>
                <li class="bottom_nav_style">
                    <a href="javascripte:void(0)">歌手</a>
                </li>
                <li class="bottom_nav_style">
                    <a href="javascripte:void(0)">专辑</a>
                </li>
                <li class="bottom_nav_style">
                    <a href="javascripte:void(0)">排行榜</a>
                </li>
                <li class="bottom_nav_style">
                    <a href="javascripte:void(0)">分类歌单</a>
                </li>
                <li class="bottom_nav_style">
                    <a href="javascripte:void(0)">电台</a>
                </li>
                <li class="bottom_nav_style">
                    <a href="javascripte:void(0)">MV</a>
                </li>
                <li class="bottom_nav_style">
                    <a href="javascripte:void(0)">数字专辑</a>
                </li>
                <li class="bottom_nav_style">
                    <a href="javascripte:void(0)">票务</a>
                </li>
            </ul>
        </div>
    </div>

</div>

<!--中间部分-->
<div class="mod_tag">
    <div class="mod_tag_top">
        <nav>
            <a class="stype" href="javascripte:void(0)">内地</a>
            <a class="stype" href="javascripte:void(0)">港台</a>
            <a class="stype" href="javascripte:void(0)">欧美</a>
            <a class="stype" href="javascripte:void(0)">韩国</a>
            <a class="stype" href="javascripte:void(0)">日本</a>
            <a class="stype" href="javascripte:void(0)">其他</a>
        </nav>
    </div>
    <div class="mod_tag_bottom">
        <c:forEach items="${playlists}" var="playlist">

        <div class="music">
            <div class="picture">
                <a href="${pageContext.request.contextPath}/detail?geming=${playlist.geming}">  <img src="${playlist.image}" ></a>
                <div class="picture_down">
                    <a href="chajian.html">${playlist.geming}</a>
                    <br>
                    <a href="javascripte:void(0)">${playlist.geshou}</a>
                    <br>
                    <p>${playlist.time}</p>
                </div>
            </div>
        </div>

        </c:forEach>
    </div>
</div>

<!--底部导航栏-->
<div class="bottom">
    <div class="bottom_up">
        <div class="download">
            <div class="download_up">
                <a href="javascript:void(0)">下载QQ音乐客户端</a>
                <div class="download_picture">
                    <img id="pc" src="image_logo/pc.png" width="85px" height="110px">
                    <img id="mac" src="image_logo/mac.png" width="85px" height="110px">
                    <img id="ad" src="image_logo/ad.png" width="85px" height="110px">
                    <img id="ip" src="image_logo/ip.png" width="85px" height="110px">
                </div>
            </div>
            <div class="download_down">
                <a href="javascript:void(0)">开放平台</a>
            </div>
        </div>
        <div class="download">
            <div class="download_up">
                <a href="javascript:void(0)" style="margin-left: 65px;">特色产品</a>
                <div class="specialty">
                    <img id="qmkg" src="image_logo/qmkg.png" width="85px" height="110px">
                    <img id="SS" src="image_logo/SS.png" width="110px" height="110px">
                    <img id="Qp" src="image_logo/Qp.png" width="85px" height="110px">
                    <a href="javascript:void(0)">车载互联</a>
                    <a href="javascript:void(0)" style="margin-left: 55px">QQ演出</a>
                </div>
                <div class="download_down"></div>
            </div>
        </div>
        <div class="download">
            <div class="download_up">
                <a href="javascript:void(0)">合作链接</a>
                <div class="cooperation">
                    <div class="font_de">
                        <p><a href="javascript:void(0)">CJ ENM</a></p>
                        <p><a href="javascript:void(0)">最新版QQ</a></p>
                        <p><a href="javascript:void(0)">QQ浏览器</a></p>
                        <p><a href="javascript:void(0)">企鹅FM</a></p>
                    </div>
                    <div class="font_de">
                        <p><a href="javascript:void(0)">腾讯视频</a></p>
                        <p><a href="javascript:void(0)">腾讯社交广告</a></p>
                        <p><a href="javascript:void(0)">腾讯微云</a></p>
                        <p><a href="javascript:void(0)">智能电视网</a></p>
                    </div>
                    <div class="font_de">
                        <p><a href="javascript:void(0)">手机QQ空间</a></p>
                        <p><a href="javascript:void(0)">电脑管家</a></p>
                        <p><a href="javascript:void(0)">腾讯云</a></p>
                        <p><a href="javascript:void(0)">当贝市场</a></p>
                    </div>
                </div>
                <div class="download_down"></div>
            </div>
        </div>
    </div>
    <div class="Music_Platform">
        <a href="javascript:void(0)">腾讯音乐人平台</a>
        <a href="javascript:void(0)">音乐号认证</a>
        <a href="javascript:void(0)">机构入驻</a>
    </div>

    <!--关于腾讯 | About Tencent | 服务条款 | 用户服务协议 | 隐私政策 | 权利声明 | 广告服务 | 腾讯招聘 | 客服中心 | 网站导航-->
    <!--Copyright © 1998 - 2018 Tencent. All Rights Reserved.-->
    <!--腾讯公司 版权所有 腾讯网络文化经营许可证-->
    <div class="bottom_down">
        <p>
            <a href="javascript:void(0)">关于腾讯</a><span>|</span>
            <a href="javascript:void(0)">About Tencent</a><span>|</span>
            <a href="javascript:void(0)">服务条款</a><span>|</span>
            <a href="javascript:void(0)">用户服务协议</a><span>|</span>
            <a href="javascript:void(0)">隐私政策</a><span>|</span>
            <a href="javascript:void(0)">权利声明</a><span>|</span>
            <a href="javascript:void(0)">广告服务</a><span>|</span>
            <a href="javascript:void(0)">腾讯招聘</a><span>|</span>
            <a href="javascript:void(0)">客服中心</a><span>|</span>
            <a href="javascript:void(0)">网站导航</a>
        </p>
        <p>
            <span>Copyright © 1998 - 2020 Tencent.</span> <a href="javascript:void(0)">All Rights Reserved.</a>
        </p>
        <p>
            <span>腾讯公司</span>
            <a href="javascript:void(0)">版权所有</a>
            <a href="javascript:void(0)">腾讯网络文化经营许可证</a>
        </p>
    </div>
</div>
</body>
</html>