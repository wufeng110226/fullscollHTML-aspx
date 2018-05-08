<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="en_contactus_Default" %>

<%@ Register Src="~/en/ascx/head.ascx" TagName="head" TagPrefix="u1" %>
<%@ Register Src="~/en/ascx/foot.ascx" TagName="foot" TagPrefix="u2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>朗威联系我们</title>
    <meta name="Keywords" content="" />
    <meta name="Description" content="" />
    <link rel="stylesheet" href="/en/css/jquery.fullPage.css" />
    <link rel="stylesheet" href="/en/css/style.css" />
</head>
<body>
    <!-- 头部Start-->
    <header>
    <u1:head ID="head1" runat="server" />
    </header>
    <!-- 头部End-->
    <div>
        <div class="normal-banner">
            <img src="/en/images/con-banner.jpg"></div>
        <div class="tab-box">
            <p style="width: 100%; text-align: center; color: #e51515;font-weight:bold;">
                联系我们</p>
        </div>
        <div class="tab-content" style="overflow: hidden;">
            <div class="fullpage-inside">
                <h4>
                    苏州朗威电子机械有限公司</h4>
                <p class="f16">
                    地址：江苏省苏州市相城区黄埭镇住友电装路33号 邮编：215143</p>
                <p class="f16">
                    电话：0512-69393065 传真：0512-69399083</p>
                <div id="allmap">
                </div>
            </div>
            <div class="fullpage-inside">
                <div class="lr50">
                    <h3 style="margin: 30px 0 10px 0;">
                        销售信息</h3>
                    <span class="f14"><strong>内销及OEM经理（上海办公室）</strong></span> <span class="f14">联系人：王先生
                        手机：15214323266</span> <span class="f14">E-mail：sale8@longwaycabinet.com</span>
                    <span class="f14"><strong>内销及OEM经理（苏州办公室）</strong></span> <span class="f14">联系人：刘先生
                        手机：15995832714</span> <span class="f14">电话：0512-69399084 E-mail：sale7@longwaycabinet.com</span>
                </div>
                <div class="lr50">
                    <h3 style="margin: 30px 0 10px 0;">
                        开票及汇款信息</h3>
                    <span class="f14">公司名称：苏州朗威电子机械有限公司</span> <span class="f14">税号：320500550225546</span>
                    <span class="f14">开户银行：工商银行苏州黄埭支行</span> <span class="f14">帐号：1102265519000018061</span>
                    <span class="f14">地址：苏州市相城区黄埭镇住友电装路33号</span> <span class="f14">联系电话：0512-69393070</span>
                </div>
            </div>
            <div class="contactusform-bg">
                <div class="contactusform">
                    <h1>
                        给我们留言</h1>
                    <p>
                        <input type="text" name="name" id="name" placeholder="姓名" /></p>
                    <p>
                        <input type="text" name="company" id="company" placeholder="公司" /></p>
                    <p>
                        <input type="text" name="telephone" id="telphone" placeholder="电话" /></p>
                    <p>
                        <input type="text" name="email" id="email" placeholder="邮箱" /></p>
                    <p>
                        <textarea class="t-textarea" type="text" name="contents" id="contents" placeholder="留言内容"></textarea></p>
                    <p>
                        <button type="button" class="savemessage">
                            提交</button></p>
                </div>
            </div>
        </div>
    </div>
    <!-- 底部Start-->
    <footer>
    <u2:foot ID="foot1" runat="server" />
    </footer>
    <!--底部End-->

    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=aSpfVCiuTKGjAYbMuGMkCAnsTOMeTCRj"></script>

    <script type="text/javascript" src="/en/js/message.js"></script>

    <script>
        $(document).ready(function() {
            // 百度地图API功能
            var map = new BMap.Map("allmap");
            var point = new BMap.Point(120.545401, 31.443255); /*120.545322,31.443278*/ /*120.545401,31.443085*/
            map.centerAndZoom(point, 17);
            var marker = new BMap.Marker(point);  // 创建标注
            map.addOverlay(marker);               // 将标注添加到地图中
            map.enableScrollWheelZoom(true);      // 允许缩放
            marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
        });
    </script>

</body>
</html>
