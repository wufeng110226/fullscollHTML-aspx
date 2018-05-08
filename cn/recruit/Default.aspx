<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="en_recruit_Default" %>

<%@ Register Src="~/en/ascx/head.ascx" TagName="head" TagPrefix="u1" %>
<%@ Register Src="~/en/ascx/foot.ascx" TagName="foot" TagPrefix="u2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>朗威精英招聘</title>
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
            <img src="/en/images/joinus-banner.jpg"></div>
        <div class="tab-box">
            <div class="fullpage-inside">
                <ul>
                    <li class="active">加入我们</li>
                    <li>人才观</li>
                </ul>
            </div>
        </div>
        <div class="tab-content fullpage-inside">
            <div class="tc-box active">
                <div>
                    <div class="joinus-title">
                        <h3>
                            招聘信息</h3>
                        <p class="f16">
                            假如你有兴趣与朗威一起发展及成长，請把你的個人简历发送到以下电邮 地址：<span><a href="mailto:hr@longwaygroup.net">hr@longwaygroup.net</a></span>，联系人：陈女士</p>
                    </div>
                    <div id="getrecruit">
                        <ul>
                            <asp:Repeater ID="rptlist" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="jobtitle">
                                            <h3>
                                                <%# Eval("Title")%></h3>
                                            <p class="f14" style="margin:10px 0;">
                                                <span>工作地点：
                                                    <%# Eval("Address")%></span> <span>招聘人数：<%# Common.WCommon.ToInt32(Eval("Nums"))==0?"不限":(Common.WCommon.ToInt32(Eval("Nums"))+"人")%></span>
                                                <span>薪资待遇：<%# Eval("Salary") %></span></p>
                                        </div>
                                        <p class="f14">
                                            岗位要求：</p>
                                        <div class="requirements">
                                            <%# Eval("Contents") %>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="tc-box">
                <div class="talent_view">
                    <ul>
                        <li>
                            <h4>
                                建立您成长和实现价值的平台:</h4>
                            <p class="f16">
                                我们认为：员工既不是企业的主人，也不是家人，而是企业的合作伙伴。我们会给您提供一个可以充分发挥您的聪明才智的舞台，并制定合理、公正的规则，让大家公开、公平、公正的规则下在竞争，与公司一同分享其中的收益。</p>
                        </li>
                        <li>
                            <h4>
                                科学客观的评价系统与回报:</h4>
                            <p class="f16">
                                我们认为：如果绩效考核不能客观评价您对公司的付出，就是对劳动的不尊重；如果公司不敢支付差别薪资，也是对优秀的您不公平。我们最大程度的保证员工的个人利益获得，真正激发员工自我管理的积极性。我们的绩效考核与员工利益紧密挂钩，帮员工实现自身价值的同时，也能得到更多的回报。</p>
                        </li>
                        <li>
                            <h4>
                                持续改进与创新:</h4>
                            <p class="f16">
                                我们相信没有最好，只有更好，公司的发展需要更多的创新和细节改善，只有追求卓越、勤奋的人才能够在平淡中发现契机，在跟随中找到突破，天道酬勤，没有付出就不会有收获！</p>
                        </li>
                        <li>
                            <h4>
                                个人与团队:</h4>
                            <p class="f16">
                                每一个岗位都是专业，我们崇尚“先专后广”，做好自己的专业才能谈得上对团队的贡献。专注和专业是我们对团队成员的基本要求，同时永远不要忘记自己职责背后的使命，这才是团队形成的基石！</p>
                        </li>
                    </ul>
                </div>
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
