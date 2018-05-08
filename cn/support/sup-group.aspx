<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sup-group.aspx.cs" Inherits="en_support_sup_group" %>

<%@ Register Src="~/en/ascx/head.ascx" TagName="head" TagPrefix="u1" %>
<%@ Register Src="~/en/ascx/foot.ascx" TagName="foot" TagPrefix="u2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>朗威服务与支持</title>
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
            <img src="/en/images/sup-banner.jpg"></div>
        <div class="tab-box spgp">
            <div class="fullpage-inside">
                <ul>
                    <li class="tsGroup active">设计团队</li>
                    <li class="tsmoldMaking">模具制造</li>
                    <li class="tsmechanicalProcess">加工设备</li>
                    <li class="tssprayingPlant">喷涂设备</li>
                    <li class="tsassemblyLine">组装流水线</li>
                    <li class="tsdetectionDevice">检测设备</li>
                </ul>
            </div>
        </div>
        <div class="tab-content fullpage-inside">
            <div class="tc-box active">
                <div>
                    <div class="lr50">
                        <h1 style="margin-top:20px;">
                            为客户提供从新产品研发<br>
                            到项目管理的一站式服务</h1>
                        <p>
                            本地的设计中心更贴近客户，使得 与客户的沟通方便快捷，全球的技术中心资源共享,又使得客户在任何地方都能享受朗 威的智慧结晶。凭借值得信任的设计能力，并辅以我们严格的程序管理，总能提供超乎客户期待的服务。</p>
                    </div>
                    <div class="lr50">
                        <img src="/en/images/sg-01.jpg" style="width: 100%;"></div>
                </div>
                <div>
                    <h1>
                        产品开发模式灵活多样</h1>
                    <br>
                    <img src="/en/images/sg-02.jpg">
                </div>
            </div>
            <div class="tc-box">
                <div style="margin-bottom:60px;">
                    <h1>
                        全面的设计开发能力和先进的模具制造设备</h1>
                    <p class="f16">
                        为每位客户提供度身定做的服务，使一站 式服务成为可能，速效的样品呈现，让客户享受由此带来的便利。</p>
                    <br>
                    <div class="lr50">
                        <img src="/en/images/sm-01.jpg" style="width: 98%;">
                        <span class="f16">线切割机</span>
                    </div>
                    <div class="lr50">
                        <img src="/en/images/sm-02.jpg" style="width: 98%;">
                        <span class="f16">磨床</span>
                    </div>
                </div>
                <div>
                    <img src="/en/images/sm-03.jpg">
                    <span class="f16">模具成品</span>
                </div>
            </div>
            <div class="tc-box">
                <div style="margin-bottom:60px;">
                    <h1>
                        完善的钣金精密加工设备</h1>
                    <p class="f16">
                        精密加工设备包含数控冲压、激光切割、数控折弯、精准机器人焊接，以满足客户对高品质的产品、高效的供货能力奠定了基础。</p>
                    <br>
                    <img src="/en/images/smp-01.jpg">
                    <span class="f16">数控折弯机</span>
                </div>
                <div style="margin-bottom:60px;">
                    <div class="lr50">
                        <img src="/en/images/smp-02.jpg" style="width: 98%;">
                        <span class="f16">激光切割机</span>
                    </div>
                    <div class="lr50">
                        <img src="/en/images/smp-03.jpg" style="width: 98%;">
                        <span class="f16">数控冲床</span>
                    </div>
                </div>
                <div style="margin-bottom:60px;">
                    <img src="/en/images/smp-04.jpg">
                    <span class="f16">冲床</span>
                </div>
                <div style="margin-bottom:60px;">
                    <img src="/en/images/smp-05.jpg">
                    <span class="f16">焊接机械手</span>
                </div>
            </div>
            <div class="tc-box">
                <div>
                    <h1>
                        超强的无尘喷涂流水线</h1>
                    <p class="f16">
                        拥有先进的可循环环保型喷涂技术，喷涂工艺采用了封闭式的 空气回路方式，使每件产品涂层具有耐机械性能和耐化学性。</p>
                    <br>
                    <img src="/en/images/ssp-01.jpg">
                    <span class="f16">喷涂流水线</span>
                </div>
            </div>
            <div class="tc-box">
                <div>
                    <h1>
                        高效组装</h1>
                    <p class="f16">
                        数条柔性组装流水线，满足不同大类产品的高效组装</p>
                    <br>
                    <div>
                        <div class="lr35">
                            <div>
                                <img src="/en/images/sab-01.jpg" style="width:345px; margin-bottom: 8px;"></div>
                            <div>
                                <img src="/en/images/sab-02.jpg" style="width:345px"></div>
                        </div>
                        <div class="lr65">
                            <img src="/en/images/sab-03.jpg" style="width:685px;"></div>
                    </div>
                    <p class="f16">
                        组装流水线</p>
                </div>
            </div>
            <div class="tc-box">
                <div style="margin-bottom:60px;">
                    <h1>
                        完善的检测设备和质量控制程序</h1>
                    <p class="f16">
                        我们长期以来始终把品质作为企业生存和发展的根基，在各个生产工序中对产品品质严格把关。 我们拥有完善的检测设备和质量控制程序，确保产品的高质量，从而使客户不会为产品的质量问
                        题而困扰。</p>
                    <br>
                    <div class="lr50">
                        <img src="/en/images/sdd-01.jpg" style="width: 98%;">
                        <span class="f16">接地电阻测试仪</span>
                    </div>
                    <div class="lr50">
                        <img src="/en/images/sdd-02.jpg" style="width: 98%;">
                        <span class="f16">数字式覆层测试仪</span>
                    </div>
                </div>
                <div style="margin-bottom:60px;">
                    <img src="/en/images/sdd-03.jpg">
                    <span class="f16">影象测试仪</span>
                </div>
                <div style="margin-bottom:60px;">
                    <img src="/en/images/sdd-04.jpg">
                    <span class="f16">盐雾腐蚀测试仪</span>
                </div>
                <div style="margin-bottom:60px;">
                    <p class="f16" style="margin: 0; padding: 0;">
                        CMM 测试设备</p>
                    <div class="lr50">
                        <div>
                            <img src="/en/images/sdd-05.jpg" style="width: 98%; margin-bottom: 8px;"></div>
                        <div>
                            <img src="/en/images/sdd-06.jpg" style="width: 98%;"><span class="f16">硬度仪</span></div>
                    </div>
                    <div class="lr50">
                        <img src="/en/images/sdd-07.jpg" style="width: initial;"><span class="f16">冲击仪</span></div>
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
