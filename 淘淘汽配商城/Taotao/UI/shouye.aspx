<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="shouye.aspx.cs" Inherits="UI.shouye" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="a">      
         <div id="allnav">
            <div id="nav">
                <ul>
                    <li class="menuList">
                        <a href="#" class="category">配件分类
                        </a>
                        <ul>
                            <!--二级菜单-->
                            <li><a href="liebiao.aspx?Param=1">保养配件</a></li>
                            <li><a href="liebiao.aspx?Param=2">维修配件</a></li>
                            <li><a href="liebiao.aspx?Param=3">轮胎</a></li>
                            <li><a href="liebiao.aspx?Param=4">改装品</a></li>
                            <li><a href="liebiao.aspx?Param=5">汽车用品</a></li>
                            <li><a href="liebiao.aspx?Param=28">油品</a></li>
                            <li><a href="liebiao.aspx?Param=7">车用电器</a></li>
                            <li><a href="liebiao.aspx?Param=8">养护化学品</a></li>
                            <li><a href="liebiao.aspx?Param=17">汽车饰品</a></li>                                  
                         </ul>    
                        </li>
                        <li><a href="Search.aspx">搜索商品</a>
                    </li>
                    <li><a href="#">配件商城</a></li>
                    <li><a href="#">汽配安装店</a></li>
                    <li><a href="#">车友社区</a></li>
                    <li><a href="#">帮助</a></li>
                </ul>                
            </div>
            
        </div>
        <div id="top">            
            <div id="d">
                 <ul id="imgarea">
                    <li><a href="#"><img src="Pic/banner1.jpg" width="690" height ="270"/></a></li>
                    <li><a href="#"><img src="Pic/banner2.jpg" width="690" height ="270"/></a></li>
                    <li><a href="#"><img src="Pic/banner3.jpg" width="690" height ="270"/></a></li>
                    <li><a href="#"><img src="Pic/banner4.jpg" width="690" height ="270"/></a></li>
                    <li><a href="#"><img src="Pic/banner5.jpg" width="690" height ="270"/></a></li>
                </ul>
                 <ul id="imgid">
                    <li>1</li>
                    <li>2</li>
                    <li>3</li>
                    <li>4</li>
                    <li>5</li>
                </ul>
            </div>
            <div id="e">热卖商品<p>HOT</p></div>
            <div id="f">
                <ul style="width:990px">
                    <li><img src="Pic/a.jpg" width="160" height="120" /><a href="#">Pirelli轮胎 原厂品质保证</a></li>               
                    <li><img src="Pic/b.jpg" width="160" height="120" /><a href="#">Mobile牌2000汽油1L装</a></li>                    
                    <li><img src="Pic/c.jpg" width="160" height="120" /><a href="#">安全刹车蹄后刹</a></li>                  
                    <li><img src="Pic/d.jpg" width="160" height="120" /><a href="#">Pirelli轮胎 原厂品质保证</a></li>                 
                    <li><img src="Pic/e.jpg" width="160" height="120" /><a href="#">雨刮器电机总成</a></li>                
                    <li><img src="Pic/f.jpg" width="160" height="120" /><a href="#">DDF928-D前刹车盘</a></li>                   
                    <li><img src="Pic/g.jpg" width="160" height="120" /><a href="#">BOSCHI博世机油滤清器</a></li>                   
                    <li><img src="Pic/h.jpg" width="160" height="120" /><a href="#">火花塞</a><</li>
                </ul>
            </div>
        </div>
        <div id="g">新品展示<p>NEW</p></div>
        <div id="bottom">
             <dl>
                <dt><a href="#">
                   <img src="Pic/634705193389375000.jpg" width="150" height="170"/></a></dt>
                <dd class="name">【多城市】Valeo法雷奥 SWF优视无骨雨...</dd>
                <dd>原厂品质保证，绝对值得拥有</dd>
                <dd class="price"><span>¥288</span> 门店价 ¥234</dd>
                <dd class="number">已售<span>1251</span></dd>
            </dl>
            <dl>
                <dt><a href="#">
                    <img src="Pic/634705190169375000.jpg" width="150" height="170" /></a></dt>
                <dd class="name">【洪山区】安全型刹车蹄 后刹</dd>
                <dd>原厂品质保证，绝对值得拥有</dd>
                <dd class="price"><span>¥210</span> 门店价 ¥1094</dd>
                <dd class="number">已售<span>734</span></dd>
            </dl>        
            <dl>
                <dt><a href="#">
                   <img src="Pic/a.jpg" width="150" height="170" /></a></dt>
                <dd class="name">【武钢厂区/武东】Pirelli轮胎</dd>
                <dd>原厂品质保证，绝对值得拥有</dd>
                <dd class="price"><span>¥1800</span> 门店价 ¥2000</dd>
                <dd class="number">已售<span>16</span></dd>
            </dl>
            <dl>
                <dt><a href="#">
                    <img src="Pic/c.jpg" width="150" height="170"/></a></dt>
                <dd class="name">【白沙洲】机油滤清器</dd>
                <dd>原厂品质保证，绝对值得拥有</dd>
                <dd class="price"><span>¥28</span> 门店价 ¥38</dd>
                <dd class="number">已售<span>121</span></dd>
            </dl>         
             <dl>
                <dt><a href="#">
                    <img src="Pic/g.jpg" width="150" height="170"/></a></dt>
                <dd class="name">【徐东大街】12569LS12V替换型的照灯</dd>
                <dd>原厂品质保证，绝对值得拥有</dd>
                <dd class="price"><span>¥18</span> 门店价 ¥28</dd>
                <dd class="number">已售<span>121</span></dd>
            </dl>
             <dl>
                <dt><a href="#">
                    <img src="Pic/h.jpg" width="150" height="170"/></a></dt>
                <dd class="name">【徐东大街】雨刷器电机总成</dd>
                <dd>原厂品质保证，绝对值得拥有</dd>
                <dd class="price"><span>¥179</span> 门店价 ¥201</dd>
                <dd class="number">已售<span>121</span></dd>
            </dl>
             <dl>
                <dt><a href="#">
                    <img src="Pic/i.jpg" width="150" height="170"/></a></dt>
                <dd class="name">【徐东大街】Michelin轮胎</dd>
                <dd>原厂品质保证，绝对值得拥有</dd>
                <dd class="price"><span>¥1270</span> 门店价 ¥1300</dd>
                <dd class="number">已售<span>100</span></dd>
            </dl>
             <dl>
                <dt><a href="#">
                    <img src="Pic/k.jpg" width="150" height="170"/></a></dt>
                <dd class="name">【徐东大街】text</dd>
                <dd>原厂品质保证，绝对值得拥有</dd>
                <dd class="price"><span>¥300</span> 门店价 ¥350</dd>
                <dd class="number">已售<span>121</span></dd>
            </dl>           
             <dl>
                <dt><a href="#">
                    <img src="Pic/n.jpg" width="150" height="170"/></a></dt>
                <dd class="name">【徐东大街】DDF92B-D的刹车盘</dd>
                <dd>原厂品质保证，绝对值得拥有</dd>
                <dd class="price"><span>¥356</span> 门店价 ¥500</dd>
                <dd class="number">已售<span>121</span></dd>
            </dl>
             <dl>
                <dt><a href="#">
                    <img src="Pic/o.jpg" width="150" height="170"/></a></dt>
                <dd class="name">【徐东大街】火花窗</dd>
                <dd>原厂品质保证，绝对值得拥有</dd>
                <dd class="price"><span>¥210</span> 门店价 ¥259</dd>
                <dd class="number">已售<span>121</span></dd>
            </dl>
             <dl>
                <dt><a href="#">
                    <img src="Pic/p.jpg" width="150" height="170"/></a></dt>
                <dd class="name">【徐东大街】利油</dd>
                <dd>原厂品质保证，绝对值得拥有</dd>
                <dd class="price"><span>¥179</span> 门店价 ¥259</dd>
                <dd class="number">已售<span>121</span></dd>
            </dl>
             <dl>
                <dt><a href="#">
                    <img src="Pic/q.jpg" width="150" height="170"/></a></dt>
                <dd class="name">【徐东大街】麻麻滤清器</dd>
                <dd>原厂品质保证，绝对值得拥有</dd>
                <dd class="price"><span>¥179</span> 门店价 ¥259</dd>
                <dd class="number">已售<span>121</span></dd>
            </dl>
        </div>
        <%--<ul>          
            <li>
                <div><a href="#"><img src="Pic/634705193389375000.jpg" width="170" height="190"/></a></div>
                <div class="tuangouy-m"><a href="#">[全国联保]约旦2日游</a><br />简介<br /><span>团价￥15000</span></div>
            </li>
            <li>
                <div><a href="#"><img src="Pic/634705190169375000.jpg" width="170" height="190" /></a></div>
                <div class="tuangouy-m"><a href="#">[全国联保] 仰光2日游</a><br />简介<br /><span>团价￥765</span> </div>
            </li>
            <li class="margin10">
                <div><a href="#"><img src="Pic/a.jpg" width="170" height="190" /></a></div>
                <div class="tuangouy-m"><a href="#">[全国联保] 法国3日游</a><br />简介<br /><span>团价￥4529</span></div>
            </li>            
            <li>
                <div><a href="#"><img src="Pic/c.jpg" width="170" height="190" /></a></div>
            <div class="tuangouy-m"><a href="#">[全国联保]加拿大3日游</a><br />简介<br /><span>￥10001</span></div>
            </li>
            <li>
                <div><a href="#"><img src="Pic/d.jpg" width="170" height="190" /></a></div>
            <div class="tuangouy-m"><a href="#">[全国联保]加拿大3日游</a><br />简介<br /><span>￥10001</span></div>
            </li>
            <li>
                <div><a href="#"><img src="Pic/h.jpg" width="170" height="190" /></a></div>
            <div class="tuangouy-m"><a href="#">[全国联保]加拿大3日游</a><br />简介<br /><span>￥10001</span></div>
            </li>
            <li>
                <div><a href="#"><img src="Pic/i.jpg" width="170" height="190" /></a></div>
            <div class="tuangouy-m"><a href="#">[全国联保]加拿大3日游</a><br />简介<br /><span>￥10001</span></div>
            </li>           
            <li>
                <div><a href="#"><img src="Pic/k.jpg" width="170" height="190" /></a></div>
            <div class="tuangouy-m"><a href="#">[全国联保]加拿大3日游</a><br />简介<br /><span>￥10001</span></div>
            </li>         
            <li>
                <div><a href="#"><img src="Pic/n.jpg" width="170" height="190" /></a></div>
            <div class="tuangouy-m"><a href="#">[全国联保]加拿大3日游</a><br />简介<br /><span>￥10001</span></div>
            </li>
            <li>
                <div><a href="#"><img src="Pic/o.jpg" width="170" height="190" /></a></div>
            <div class="tuangouy-m"><a href="#">[全国联保]加拿大3日游</a><br />简介<br /><span>￥10001</span></div>
            </li>
            <li>
                <div><a href="#"><img src="Pic/p.jpg" width="170" height="190" /></a></div>
            <div class="tuangouy-m"><a href="#">[全国联保]加拿大3日游</a><br />简介<br /><span>￥10001</span></div>
            </li>
            <li>
                <div><a href="#"><img src="Pic/q.jpg" width="170" height="190" /></a></div>
            <div class="tuangouy-m"><a href="#">[全国联保]加拿大3日游</a><br />简介<br /><span>￥10001</span></div>          
        </ul>--%>      
    </div>
    <script src="jquery-3.1.1.min.js"></script>
    <script type="text/javascript" >
        function leftScroll() {
            var stop = false;
            var marginLeft = 0;
            setInterval(function () {
                if (stop) return;
                $("#f").find("li").first().animate({ "margin-left": marginLeft-- }, 0, function () {
                    var $first = $(this);
                    if (!$first.is(":animated")) {
                        if ((-marginLeft) > $first.height() + 1 + 18) {
                            $first.css({ "margin-left": 0 }).appendTo("#f ul");
                            marginLeft = 0;
                        }
                    }
                });
            }, 20);
            $("#f ul").mouseover(function () {
                stop = true;
            }).mouseout(function () {
                stop = false;
            });
        }
        function turnpics() {
            var index = 0; //播放图片的索引
            var stop = false; //是否手动播放，默认false表示自动播放
            var list = $("#d").find("#imgid li");//获取组织编号的li
            list.eq(index).addClass("active")//添加图片编号样式
                          .siblings()
                          .removeClass("active");//清除兄弟图片编号样式
            var mainh = $("div#d").height();//获取div main的高度
            setInterval(function () {
                if (stop)
                    //自动播放
                    return;
                index++;
                if (index == list.length) {
                    //从头播放
                    index = 0;
                }
                //完成正在执行的动画并清空当前元素所有动画序列，设置图片滑动
                $("ul#imgarea").stop(true, true)
                    .animate({ "marginTop": -mainh * index }, 1000);
                //播放图片高亮显示,未播放图片正常
                list.eq(index).addClass("active")
                              .siblings()
                              .removeClass("active");
            }, 3000);
            //控制手动播放
            list.mouseover(function () {
                stop = true;//自动轮播结束
                //移入编号
                index = list.index($(this));
                //完成正在执行的动画并清空当前元素所有动画序列，设置图片滑动
                $("ul#imgarea").stop(true, true).animate({ "marginTop": -mainh * index }, 1000);
                //播放图片高亮显示
                $(this).addClass("active").siblings().removeClass("active");
            }).mouseout(
            //移除事件
            function () {
                //手动播放
                stop = false;
            });
        }
        $(function () {
            turnpics();//轮播
            leftScroll();
        });
    </script>
</asp:Content>
