<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="en_product_detail" %>

<%@ Register Src="~/en/ascx/head.ascx" TagName="head" TagPrefix="u1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>朗威产品详情</title>
    <meta name="Keywords" content="" />
    <meta name="Description" content="" />
    <script src="http://cdn.bootcss.com/jquery/3.1.1/jquery.min.js"></script>

    <script src="/en/js/jquery.fullPage.min.js"></script>

    <script src="/en/js/power-slider-debug.js"></script>

    <link rel="stylesheet" href="/en/css/jquery.fullPage.css" />
    <link rel="stylesheet" href="/en/css/style.css" />
    <link rel="stylesheet" href="/en/css/animate.min.css">
    <style type="text/css">
        .section:nth-of-type(even){
            background:#f2f2f2;
        }
        .proleft {
            width:50%;
            float:left;
            position:relative;
        }
        .proright {
            width:50%;
            float:right;
            position:relative;
        }
        .proleft img,.proright img {width:initial;position:absolute !important;bottom:0;}
        h1.pro-h1 {
            font-size:28px;
            margin-top:288px;
            margin-bottom:20px;
        }
        .proleft img,.proright img {display:none;}
        .proleft p,.proright p {display:none;}
        .proleft h1,.proright h1 {display:none;}
        .pro-h1,.pro-p {
            animation-delay:1s;
            -webkit-animation-delay:1s;
        }
        .p-ml {margin-left:170px;}
    </style>
</head>
<body>
    <!-- 头部Start-->
    <header class="fpheader">
    <u1:head ID="head1" runat="server" />
    </header>
    <!-- 头部End-->
    <div id="indexfullpage" class="pro-detail">
        <script type="text/javascript">
            $(document).ready(function() {
            $("body").append("<script type='text/javascript'>$(document).ready(function(){$('.proleft,.proright').css('height',$(window).height());$('#indexfullpage').fullpage({verticalCentered:!1,navigation:!0,afterLoad:function(anchorLink,index){if(index==1){$('.proshow1').find('img').css('display','block').addClass('animated fadeInLeft');$('.proshow1').find('.pro-h1,.pro-p').css('display','block').addClass('animated fadeIn')}if(index==2){$('.proshow2').find('img').css('display','block').addClass('animated fadeInRight');$('.proshow2').find('.pro-h1,.pro-p').css('display','block').addClass('animated fadeIn')}if(index==3){$('.proshow3').find('img').css('display','block').addClass('animated fadeInLeft');$('.proshow3').find('.pro-h1,.pro-p').css('display','block').addClass('animated fadeIn')}if(index==4){$('.proshow4').find('img').css('display','block').addClass('animated fadeInRight');$('.proshow4').find('.pro-h1,.pro-p').css('display','block').addClass('animated fadeIn')}if(index==5){$('.proshow5').find('img').css('display','block').addClass('animated fadeInLeft');$('.proshow5').find('.pro-h1,.pro-p').css('display','block').addClass('animated fadeIn')}if(index==6){$('.proshow6').find('img').css('display','block').addClass('animated fadeInRight');$('.proshow6').find('.pro-h1,.pro-p').css('display','block').addClass('animated fadeIn')}if(index==7){$('.proshow7').find('img').css('display','block').addClass('animated fadeInLeft');$('.proshow7').find('.pro-h1,.pro-p').css('display','block').addClass('animated fadeIn')}},onLeave:function(index,direction){if(index=='1'){$('.proshow1').find('img').removeClass('animated fadeInLeft').css('display','none');$('.proshow1').find('.pro-h1,.pro-p').removeClass('animated fadeIn').css('display','none')}if(index=='2'){$('.proshow2').find('img').removeClass('animated fadeInRight').css('display','none');$('.proshow2').find('.pro-h1,.pro-p').removeClass('animated fadeIn').css('display','none')}if(index=='3'){$('.proshow3').find('img').removeClass('animated fadeInLeft').css('display','none');$('.proshow3').find('.pro-h1,.pro-p').removeClass('animated fadeIn').css('display','none')}if(index=='4'){$('.proshow4').find('img').removeClass('animated fadeInRight').css('display','none');$('.proshow4').find('.pro-h1,.pro-p').removeClass('animated fadeIn').css('display','none')}if(index=='5'){$('.proshow5').find('img').removeClass('animated fadeInLeft').css('display','none');$('.proshow5').find('.pro-h1,.pro-p').removeClass('animated fadeIn').css('display','none')}if(index=='6'){$('.proshow6').find('img').removeClass('animated fadeInRight').css('display','none');$('.proshow6').find('.pro-h1,.pro-p').removeClass('animated fadeIn').css('display','none')}if(index=='7'){$('.proshow7').find('img').removeClass('animated fadeInLeft').css('display','none');$('.proshow7').find('.pro-h1,.pro-p').removeClass('animated fadeIn').css('display','none')}}});});<\/script>");
            });
        </script>
        <!--产品详细Statrt-->
        <div class="section proshow1">
            <div class="fullpage-inside">
                <div class="proleft clearfix"><img src="/en/images/p/1.png"></div>
                <div class="proright clearfix">
                    <h1 class="pro-h1 p-ml">坚固的结构</h1>
                    <p class="pro-p p-ml">静态加载：1000Kg</p>
                </div>
            </div>
        </div>
        <div class="section proshow2">
            <div class="fullpage-inside">
                <div class="proleft">
                    <h1 class="pro-h1">优良的散热</h1>
                    <p class="pro-p">前门冲孔弧形门，后门冲孔双开门，旋转角度达140度</p>
                    <p class="pro-p">通风率大于73%，为服务器的散热提供安全保障</p>
                </div>
                <div class="proright"><img src="/en/images/p/2.png"></div>
            </div>
        </div>
        <div class="section proshow3">
            <div class="fullpage-inside">
                <div class="proleft"><img src="/en/images/p/3.png"></div>
                <div class="proright">
                    <h1 class="pro-h1 p-ml">友好的安装</h1>
                    <p class="pro-p p-ml">标准方孔，配合M6卡扣式螺母的设备安装孔，轻松实现设备的安装。</p>
                    <p class="pro-p p-ml">带有U数刻度表示，便于安装设备定位。</p>
                </div>
            </div>
        </div>
        <div class="section proshow4">
            <div class="fullpage-inside">
                <div class="proleft">
                    <h1 class="pro-h1">便利的拆卸</h1>
                    <p class="pro-p">前后门和侧门均可方便拆卸，侧门为上下两段式设计，</p>
                    <p class="pro-p">减轻侧门搬运重量</p>
                </div>
                <div class="proright"><img src="/en/images/p/4.png" style="top:130px;"></div>
            </div>
        </div>
        <div class="section proshow5">
            <div class="fullpage-inside">
                <div class="proleft"><img src="/en/images/p/5.png" style="bottom:70px;"></div>
                <div class="proright">
                    <h1 class="pro-h1 p-ml">便利的柜门锁定与解锁</h1>
                    <p class="pro-p p-ml">拉动并旋转手柄以打开柜门。 </p>
                    <p class="pro-p p-ml">推动手柄至齐平位置，并用钥匙将柜门锁定。</p>
                </div>
            </div>
        </div>
        <div class="section proshow6">
            <div class="fullpage-inside">
                <div class="proleft">
                    <h1 class="pro-h1">便利的安装维护</h1>
                    <p class="pro-p">双开门设计满足狭小空间的设备安装和维护。</p>
                </div>
                <div class="proright"><img src="/en/images/p/6.png"></div>
            </div>
        </div>
        <div class="section proshow7">
            <div class="fullpage-inside">
                <div class="proleft"><img src="/en/images/p/7.png" style="top:84px;"></div>
                <div class="proright">
                    <h1 class="pro-h1 p-ml">方便的排线入口</h1>
                    <p class="pro-p p-ml">电缆入口存于顶盖和底盖，配有专业塑料穿线孔，</p>
                    <p class="pro-p p-ml">便于排线、设备调试和维护。</p>
                </div>
            </div>
        </div>
        <asp:Literal ID="lit_Contents" runat="server"></asp:Literal>
        <!--产品详细End-->
        <footer class="section fp-auto-height fp-section">
		<div class="pd-ctllist">
			<div class="pd-thisctl">
				<p>
					<span> <asp:Literal ID="lit_PreProduct" runat="server"></asp:Literal><asp:Literal ID="lit_NextProduct" runat="server"></asp:Literal></span>
					<span><i class="r"></i><asp:Literal ID="lit_list" runat="server"></asp:Literal></span>
				</p>
			</div>
			<div style="width:1180px;margin:0 auto;">
				<div class="slider" id="slider">
					<ul class="sliderbox">
					<asp:Repeater ID="rptlist" runat="server">
					<ItemTemplate>
					   <li>
							<a href="detail.aspx?id=<%# Eval("ID") %>">
							<img src="<%# Comm.Help.checkImage(Comm.Help.getThumbnailPic("Thumbnail", Eval("smallPath")), "1") %>"
                                        alt="<%# Eval("ProName") %>" /></a>
						</li>
					</ItemTemplate>
					</asp:Repeater>

					</ul>
					<ul class="slidertext"></ul>
					<div class="prev">&lt;</div>
					<div class="next">&gt;</div>
				</div>
			</div>
		</div>
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
            <img src="/en/images/foot-online.png">
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
    </div>
    <script src="/en/js/main.js"></script>
    <script src="/en/js/search.js"></script>
    <script>
        $("#slider").powerSlider({handle:"left",sliderNum:4});
    </script>
</body>
</html>
