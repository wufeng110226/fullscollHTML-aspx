<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="en_investor_Default" %>

<%@ Register Src="~/en/ascx/head.ascx" TagName="head" TagPrefix="u1" %>
<%@ Register Src="~/en/ascx/foot.ascx" TagName="foot" TagPrefix="u2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>朗威投资者关系</title>
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
	<div class="normal-banner"><img src="/en/images/investor-banner.jpg"></div>
	<div class="tab-box"></div>
	<div class="tab-content fullpage-inside">
		<div style="margin:50px 0;">
			<img src="/en/images/income.jpg">
			<p style="text-align:center;font-size:16px;">正在建设中...</p>
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
	var $tablist = $('.tab-box li');
	var $tabcontent = $('.tab-content .tc-box');

	$tablist.click(function(){
		var $this = $(this);
		var $tin = $this.index();
		$tablist.removeClass();
		$this.addClass('active');
		$tabcontent.css('display','none');
		$tabcontent.eq($tin).css('display','block');
	})
});
</script>
</body>
</html>
