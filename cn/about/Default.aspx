<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="en_about_Default" %>

<%@ Register Src="~/en/ascx/head.ascx" TagName="head" TagPrefix="u1" %>
<%@ Register Src="~/en/ascx/foot.ascx" TagName="foot" TagPrefix="u2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>朗威关于我们</title>
    <meta name="Keywords" content="" />
    <meta name="Description" content="" />
    <link rel="stylesheet" href="/en/css/jquery.fullPage.css" />
    <link rel="stylesheet" href="/en/css/style.css" />
</head>
<body>
    <!-- 头部Start-->
    <header class="fpheader">
    <u1:head ID="head1" runat="server" />
    </header>
    <!-- 头部End-->
    <div id="indexfullpage">
        <div class="section faus-01">
            <div class="fullpage-inside">
                <div class="inx-l">
                    <h1 class="inx-tit">
                        朗威是一家专业钣金精密加工制造型企业</h1>
                    <p class="inx-min">
                        我们始终如一的理念就是诚信、道德、质量和技术创新，竭诚为世界各国的客户提供一站式的优质服务，在过去的10年中，广泛客户的伴随和壮大推动并支持着我们迈向企业新的高度。</p>
                    <a class="inx-mor" href="abu-group.aspx">了解更多</a>
                </div>
            </div>
        </div>
        <div class="section faus-02">
            <div class="fullpage-inside">
                <div class="cent-box-w" style="margin-top: 15%;">
                    <h1 style="color: #000;">
                        组织架构</h1>
                    <p style="height: 550px;">
                    </p>
                    <a class="inx-mor mor-center" href="abu-group.aspx?tablist=ton">了解更多</a>
                </div>
            </div>
        </div>
        <div class="section faus-07">
            <div class="fullpage-inside">
                <div class="cent-box-w" style="margin-top: 15%;">
                    <h1 style="color: #000;">
                        社会责任</h1>
                    <p style="color: #000;">
                        我们愿与低碳环保事业一道同行,为建立绿色环保社会奉献我们的一份力量</p>
                    <p style="height:500px;"></p>
                    <a class="inx-mor mor-center" href="abu-group.aspx?tablist=trl">了解更多</a>
                </div>
            </div>
        </div>
        <div class="section faus-03">
            <div class="fullpage-inside">
                <div class="cent-box-w" style="margin-top: 15%;">
                    <h1>
                        企业使命</h1>
                    <p style="height: 550px;">
                    </p>
                    <a class="morebox-w mor-center" href="abu-group.aspx?tablist=tjb">了解更多</a>
                </div>
            </div>
        </div>
        <div class="section faus-04">
            <div class="fullpage-inside">
                <div class="cent-box-w" style="margin-top: 15%;">
                    <h1 style="color: #e21515;">
                        经营模式</h1><br>
                    <p style="color: #000; margin: 10px 0;">
                        我们只提供OEM / ODM服务</p>
                    <p style="color: #000; margin: 10px 0;">
                        朗威使广泛的OEM / ODM客户享受到在研发、产品设计、生产周期、产品交付、模具开发以及售后等方面的快捷服务。</p>
                    <p style="height: 450px;">
                    </p>
                    <a class="inx-mor mor-center" href="abu-group.aspx?tablist=tfe">了解更多</a>
                </div>
            </div>
        </div>
        <div class="section faus-05">
            <div class="fullpage-inside">
                <div class="inx-nw">
                    <h1>
                        朗威成就</h1>
                    <p style="height: 50px;">
                    </p>
                    <p>
                        <a class="morebox-w" href="abu-group.aspx?tablist=tat">了解更多</a></p>
                </div>
            </div>
        </div>
        <div class="section faus-06">
            <div class="fullpage-inside">
                <div class="cent-box-w" style="margin-top: 15%;">
                    <h1 style="color: #5f585e;">
                        选择朗威</h1>
                    <p style="height: 550px;">
                    </p>
                    <a class="inx-mor mor-center" href="abu-group.aspx?tablist=tcus">了解更多</a>
                </div>
            </div>
        </div>
        <!-- 底部Start-->
        <footer class="section fp-auto-height fp-section">
        <u2:foot ID="foot1" runat="server" />
        </footer>
        <!--底部End-->
    </div>

    <script>
$(document).ready(function() {
	/*$.fn.fullpage({
		navigation: true
	});*/
	$('#indexfullpage').fullpage({
		verticalCentered: !1,
		navigation: !0,
	});
});
    </script>

</body>
</html>
