<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="en_product_Default" %>

<%@ Register Src="~/en/ascx/head.ascx" TagName="head" TagPrefix="u1" %>
<%@ Register Src="~/en/ascx/foot.ascx" TagName="foot" TagPrefix="u2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>朗威产品列表</title>
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
            <img src="/en/images/abu-banner.jpg"></div>

        <div class="tab-box">
            <div class="fullpage-inside">
                <ul id="pro-tabs">
                    <asp:Literal ID="lit_productType" runat="server"></asp:Literal>
                </ul>
            </div>
        </div>

        <div class="fullpage-inside" style="padding:80px 0;">
            <div class="tc-box active">
                <div id="pro-qy" class="pro-list">
                    <ul>
                        <input type="hidden" id="hiddCount" runat="server" />
                        <input type="hidden" id="hiddClassId" runat="server" />
                        <asp:Repeater ID="rptlist" runat="server">
                            <ItemTemplate>
                                <li><a href="detail.aspx?id=<%# Eval("ID") %>">
                                    <img src="<%# Comm.Help.checkImage(Comm.Help.getThumbnailPic("Thumbnail", Eval("smallPath")), "1") %>"
                                        alt="<%# Eval("ProName") %>" />
                                </a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 底部Start-->
    <footer class="section fp-auto-height fp-section">
    <u2:foot ID="foot1" runat="server" />
    </footer>
    <!--底部End-->

    <script>
        $(document).ready(function() {

        });
        var pageindex = 1;
        var classid = 1;
        var isAjax = true;

        $("#pro-tabs li").on('click',function(){
            classid = $(this).attr('data-classid');
            pageindex = 0;
            isAjax = true;
            if(isAjax){
                $.ajax({
                    url: '/Ajax/en/AjaxHandler.ashx',
                    type: "post",
                    async: false,
                    data: {
                        acction:"getproduct",
                        pageindex:pageindex,
                        classid:classid,
                    },
                    dataType: "JSON",
                    success: function (data) {
                        var html = '';
                        if (data.code == 0 && data.data.length) {
                            $.each(data.data,function(index,domlist){
                                html += '<li><a href="detail.aspx?id='+domlist.id+'"><img src="'+domlist.image+'" alt="'+domlist.proname+'"></a></li>';
                            });
                            $('#pro-qy ul').empty().append(html);
                        }else{
                            $('#pro-qy ul').empty().append('<p class="nodata">暂无信息<\/p>');
                            console.log("异常,返回值获取失败");
                        };
                        pageindex += 1;
                        $(".loading").remove();
                        console.log(pageindex);
                    },
                    error: function() {
                        $(".loading").remove();
                        alert("服务器故障,请求失败!");
                    }
                })
            }
        })


        $(window).on('scroll', function () {

            var $wh = $(window).height();
            var $dh = $(document).height();
            var $st = $(window).scrollTop();
            if ($st >= ($dh - $wh)) {
                //请求
                if (isAjax) {
                    $.ajax({
                        url: '/Ajax/en/AjaxHandler.ashx',
                        type: "post",
                        async: false,
                        data: {
                            acction:"getproduct",
                            pageindex:pageindex,
                            classid:classid,
                        },
                        dataType: "JSON",
                        beforeSend: function () {
                            isAjax = true;
                        },
                        success: function (data) {
                            var html = '';
                            if (data.code == 0 && data.data.length) {
                                $.each(data.data,function(index,domlist){
                                    html += html += '<li><a href="detail.aspx?id='+domlist.id+'"><img src="'+domlist.image+'" alt="'+domlist.proname+'"></a></li>';
                                    //console.log(index);
                                });
                                $('#pro-qy ul').append(html);

                                isAjax = true;
                            }else{
                                isAjax = false;
                            };
                            pageindex += 1;
                            console.log(pageindex);
                            $(".loading").remove();
                        },
                        error: function() {
                            $(".loading").remove();
                            alert("服务器故障,请求失败!");
                        }
                    })
                }
            }
        });
    </script>

</body>
</html>
