<%@ Control Language="C#" AutoEventWireup="true" CodeFile="indexhead.ascx.cs" Inherits="en_ascx_indexhead" %>
<header class="fpheader">
	<div class="nav_bar">
		<div class="fullpage-inside">
			<div class="nav_list">
				<div class="logo"><img src="/en/images/logo.png"></div>
				<ul>
					<li><a href="/en">首页</a></li>
					<li><a href="/en/about/">关于朗威</a></li>
					<li class="prohover"><a href="/en/product">产品</a></li>
					<li><a href="/en/support">服务与支持</a></li>
					<li><a href="/en/news">新闻中心</a></li>
					<li><a href="/en/recruit">精英招聘</a></li>
					<li><a href="/en/contactus">联系我们</a></li>
					<li><a href="/en/investor">投资者关系</a></li>
				</ul>
				<div class="search-input">

			      <input type="text" id="txt_SearchKey" name="txt_SearchKey" class="form-control" onkeydown="keydownsearch();">
			      <a class="search-button">
			        <i></i>
			      </a>

			    </div>
			</div>
		</div>
	</div>
	<div class="nav_pop">
		<div class="fullpage-inside">
			<ul class="clearfix">
						<asp:Repeater ID="rptlist" runat="server">
			<ItemTemplate>
			<li>
					<a href="/en/product/default.aspx?classid=<%# Eval("ClassID") %>">
						<img src="<%# Comm.Help.checkImage(Comm.Help.getThumbnailPic("Thumbnail", Eval("smallPath")), "1") %>" />
						<p><%# Eval("ClassName") %></p>
					</a>
				</li>
			</ItemTemplate>
			</asp:Repeater>
			</ul>
		</div>
	</div>
</header>
