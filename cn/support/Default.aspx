<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="en_support_Default" %>

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
	<header class="fpheader">
    <u1:head ID="head1" runat="server" />
    </header>
    <!-- 头部End-->
<div id="indexfullpage">
	<div class="section sufs-01">
		<div class="fullpage-inside">
			<div class="inx-c">
				<h1>设计团队</h1>
				<p class="inx-min" style="width:700px;margin:40px auto;">为客户提供从新产品研发到项目管理的一揽子服务，本地的设计中心更贴近客户，使得 与客户的沟通方便快捷，全球的技术中心资源共享,又使得客户在任何地方都能享受朗 威的智慧结晶。凭借值得信任的设计能力，并辅以我们严格的程序管理，总能提供超乎 客户期待的服务。</p>
				<a class="inx-mor mor-center" href="sup-group.aspx">了解更多</a>
			</div>
		</div>
	</div>
	<div class="section sufs-02">
		<div class="fullpage-inside">
			<div class="inx-nw">
				<h1>模具制造</h1>
				<p class="inx-min">全面的设计开发能力和先进的模具制造设备，为每位客户提供度身定做的服务，使一站 式服务成为可能，速效的样品呈现，让客户享受由此带来的便利。</p>
				<a class="morebox-w" href="sup-group.aspx?tablist=tmm">了解更多</a>
			</div>
		</div>
	</div>
	<div class="section sufs-03">
		<div class="fullpage-inside">
			<div class="cent-box-w" style="margin-top:7rem;">
				<h1 style="color:#e11313">加工设备</h1>
				<p style="height:500px;"></p>
				<a class="inx-mor mor-center" href="sup-group.aspx?tablist=tmcp">了解更多</a>
			</div>
		</div>
	</div>
	<div class="section sufs-04">
		<div class="fullpage-inside">
			<div class="cent-box-w">
				<h1>喷涂设备</h1>
				<p class="inx-min">拥有超强的无尘喷涂流水线，先进的可循环环保型喷涂技术，<br>
喷涂工艺采用了封闭式的 空气回路方式，使每件产品涂层具有耐机械性能和耐化学性</p>
				<a class="morebox-w mor-center" href="sup-group.aspx?tablist=tsp">了解更多</a>
			</div>
		</div>
	</div>
	<div class="section sufs-05">
		<div class="fullpage-inside">
			<div class="cent-box-w">
				<h1>组装流水线</h1>
				<p class="inx-min">数条柔性组装流水线 满足不同大类产品的高效组装</p>
				<a class="inx-mor mor-center" href="sup-group.aspx?tablist=tabl">了解更多</a>
			</div>
		</div>
	</div>
	<div class="section sufs-06">
		<div class="fullpage-inside">
			<div class="inx-nn">
				<h1>检测设备</h1>
				<p class="inx-min">我们长期以来始终把品质作为企业生存和发展的根基，在各个生产工序中对产品品质严格把关。 我们拥有完善的检测设备和质量控制程序，确保产品的高质量，从而使客户不会为产品的质量问题而困扰。</p>
				<a class="inx-mor" href="sup-group.aspx?tablist=tdde">了解更多</a>
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
