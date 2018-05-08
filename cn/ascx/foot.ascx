<%@ Control Language="C#" AutoEventWireup="true" CodeFile="foot.ascx.cs" Inherits="en_ascx_foot" %>
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
                    <asp:Repeater ID="rptlist" runat="server">
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
            <img src="/en/images/foot-online.png">
        </div>
    </div>
</div>
<div class="copyright">
    <div>
        <img src="/en/images/foot-logo.png">
        <span>©longwaygroup.net&nbsp;|&nbsp;苏ICP备13046790号-1&nbsp;|&nbsp;朗威电子机械股份有限公司版权所有&nbsp;&nbsp;&nbsp;未经许可不得转载</span>
    </div>

    <script src="http://cdn.bootcss.com/jquery/3.1.1/jquery.min.js"></script>

    <script src="/en/js/jquery.fullPage.min.js"></script>

    <script src="/en/js/main.js"></script>

    <script src="/en/js/search.js"></script>

</div>
