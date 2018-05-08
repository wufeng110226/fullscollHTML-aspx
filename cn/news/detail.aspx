<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="en_news_detail" %>

<%@ Register Src="~/en/ascx/head.ascx" TagName="head" TagPrefix="u1" %>
<%@ Register Src="~/en/ascx/foot.ascx" TagName="foot" TagPrefix="u2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>朗威新闻</title>
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
    <div class="static-tabpage-main">
        <div class="normal-banner">
            <img src="/en/images/news-banner.jpg"></div>
        <div class="tab-box">
            <div class="fullpage-inside">
                <ul>
                    <asp:Literal ID="lit_NewsType" runat="server"></asp:Literal>
                </ul>
            </div>
        </div>
        <div class="tab-content fullpage-inside">
            <div class="tc-box active">
                <div class="news-detail">
                    <h1>
                          <asp:Literal ID="lit_Title" runat="server"></asp:Literal></h1>
                     <asp:Literal ID="lit_Contents" runat="server"></asp:Literal>
                    <p class="nd-time">
                        发布时间：<span>[</span><asp:Literal ID="lit_AddTime" runat="server"></asp:Literal><span>]</span>
                        来源：<span>[</span><asp:Literal ID="lit_Sources" runat="server"></asp:Literal><span>]</span></p>
                </div>
                <div>
                    <div class="news-pagecount">
                        <asp:Literal ID="lit_PreNews" runat="server"></asp:Literal>  <asp:Literal ID="lit_NextNews" runat="server"></asp:Literal>
                    </div>
                    <div class="return-newlist">
                        <span><asp:Literal ID="lit_list" runat="server"></asp:Literal></span>
                    </div>
                </div>
            </div>
            <div class="tc-box">
            </div>
        </div>
    </div>
    <!-- 底部Start-->
    <footer>
        <u2:foot ID="foot1" runat="server" />
        </footer>
    <!--底部End-->

    <script>
$(document).ready(function() {

});
    </script>

</body>
</html>
