<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="en_Search_Default" %>

<%@ Register Src="~/en/ascx/head.ascx" TagName="head" TagPrefix="u1" %>
<%@ Register Src="~/en/ascx/foot.ascx" TagName="foot" TagPrefix="u2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>朗威搜索结果</title>
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
    <div>
        <div class="normal-banner">
            <img src="/en/images/search-banner.jpg" /></div>
        <asp:Literal ID="lit_Menu" runat="server"></asp:Literal>
        <div class="tab-content fullpage-inside">
            <asp:Literal ID="lit_Search" runat="server"></asp:Literal>
        </div>
        <div class="fullpage-inside search-foryou">
            <span>为你推荐</span></div>
        <div style="width: 1180px; margin: 0 auto;">
            <div class="slider" id="slider">
                <ul class="sliderbox">
                    <asp:Repeater ID="rptIsSearchProduct" runat="server">
                        <ItemTemplate>
                            <li><a href="/en/Product/detail.aspx?id=<%# Eval("ID") %>">
                                <img src="<%# Comm.Help.checkImage(Comm.Help.getThumbnailPic("Thumbnail", Eval("smallPath")), "1") %>"
                                    alt="<%# Eval("ProName") %>" />
                            </a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <%-- <li><a href="">
                        <img src="/en/proimg/pro-01.jpg" alt="HTML代码" /></a> </li>
                    <li><a href="">
                        <img src="/en/proimg/pro-02.jpg" alt="css代码" /></a> </li>
                    <li><a href="">
                        <img src="/en/proimg/pro-03.jpg" alt="HTML代码" /></a> </li>
                    <li><a href="">
                        <img src="/en/proimg/pro-04.jpg" alt="HTML代码" /></a> </li>
                    <li><a href="">
                        <img src="/en/proimg/pro-05.jpg" alt="HTML代码" /></a> </li>
                    <li><a href="">
                        <img src="/en/proimg/pro-06.jpg" alt="HTML代码" /></a> </li>--%>
                </ul>
                <ul class="slidertext">
                </ul>
                <div class="prev">
                    &lt;</div>
                <div class="next">
                    &gt;</div>
            </div>
        </div>
    </div>
    <!-- 底部Start-->
    <footer>
    <div class="bottom-foot">
    <div>
        <div class="bf-left">
            <div>
                <p>
                    关于我们</p>
                <ul>
                    <li><a href="/en/about/abu-group.aspx">公司概况</a></li>
                    <li><a href="/en/about/abu-group.aspx?tablist=ton">组织架构</a></li>
                    <li><a href="/en/about/abu-group.aspx?tablist=trl">社会责任</a></li>
                    <li><a href="/en/about/abu-group.aspx?tablist=tjb">企业使命</a></li>
                    <li><a href="/en/about/abu-group.aspx?tablist=tfe">经营模式</a></li>
                    <li><a href="/en/about/abu-group.aspx?tablist=tat">成就</a></li>
                    <li><a href="/en/about/abu-group.aspx?tablist=tcus">选择朗威</a></li>
                </ul>
            </div>
            <div>
                <p>
                    产品</p>
                <ul>
                    <asp:Repeater ID="rptfootlist" runat="server">
                        <ItemTemplate>
                            <li><a href="/en/product/default.aspx?classid=<%# Eval("ClassID") %>">
                                <%# Eval("ClassName") %>
                            </a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div>
                <p>
                    服务能力</p>
                <ul>
                    <li><a href="/en/support/sup-group.aspx">设计团队</a></li>
                    <li><a href="/en/support/sup-group.aspx?tablist=tmm">模具制造</a></li>
                    <li><a href="/en/support/sup-group.aspx?tablist=tmcp">加工设备</a></li>
                    <li><a href="/en/support/sup-group.aspx?tablist=tsp">喷涂设备</a></li>
                    <li><a href="/en/support/sup-group.aspx?tablist=tabl">组装流水线</a></li>
                    <li><a href="/en/support/sup-group.aspx?tablist=tdde">检测设备</a></li>
                </ul>
            </div>
            <div>
                <p>
                    关注我们</p>
                <ul>
                    <li><a>新浪微博</a></li>
                    <li><a>官方微信</a></li>
                </ul>
            </div>
        </div>
        <div class="bf-right">
            <h1>
                0512-6939 3060</h1>
            <p>
                周一至周五<span>8:00-17:00</span></p>
            <img src="/en/images/foot-online.jpg">
        </div>
    </div>
</div>
<div class="copyright">
    <div>
        <img src="/en/images/foot-logo.png">
        <span>©longwaygroup.net&nbsp;|&nbsp;苏ICP备13046790号-1&nbsp;|&nbsp;朗威电子机械有限公司版权所有&nbsp;&nbsp;&nbsp;未经许可不得转载</span>
    </div>
</div>
    </footer>

    <script src="http://cdn.bootcss.com/jquery/3.1.1/jquery.min.js"></script>

    <script src="/en/js/jquery.fullPage.min.js"></script>

    <script src="/en/js/power-slider-debug.js"></script>

    <script src="/en/js/main.js"></script>

    <script src="/en/js/search.js"></script>

    <script>
        $(document).ready(function() {
            $("#slider").powerSlider({ handle: "left", sliderNum: 4 });
        });
    </script>

</body>
</html>
