using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using Comm;

public partial class cn_Search_Default : PublicPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            List<Model.ProductType> Typelist = new BLL.ProductType().GetList(0, "Lang='zh_cn' and IsPass=1 ", "Sort asc");
            head1.Typelist = Typelist;
            rptfootlist.DataSource = Typelist;
            rptfootlist.DataBind();
            string key = Server.UrlDecode(base.QueryString("key"));
            head1.Key = key;
            BLL.Product bll = new BLL.Product();
            rptIsSearchProduct.DataSource = bll.GetList("IsDelete=0 and IsPass=1 and IsSearch=1 and ClassID in (Select ClassID from TB_ProductType where IsPass=1 and Lang='zh_cn')");
            rptIsSearchProduct.DataBind();

            List<Model.Product> list = bll.GetList(0, " IsDelete=0 and IsPass=1 and ProName like'%" + key + "%' or Contents like '%" + key + "%'", " Sort asc");
            if (list != null && list.Count > 0)
            {
                lit_Menu.Text = "<div class=\"tab-box\"><p class=\"breadcrumb fullpage-inside\"><a href=\"/cn/\">首页</a>>><a href=\"javascript:void(0)\">全部结果</a>>><a class=\"bc-result\" href=\"javascript:void(0)\">" + key + "</a></p></div>";
                BindSearchProduct(list);
            }
            else
            {
                lit_Search.Text = "<div class=\"search-no-shild\"><p class=\"search-no-tit\">抱歉, 没有搜索到与\"<span>" + key + "</span>\"相关的商品</p><p>请检查您的输入是否有误</p><p>您可以尝试以下搜索:<span><a href=\"/cn/Search/?key=" + Server.UrlEncode("通讯类") + "\">通讯类</a></span>|<span><a href=\"/cn/Search/?key=" + Server.UrlEncode("电力类") + "\">电力类</a></span>|<span><a href=\"/cn/Search/?key=" + Server.UrlEncode("家具类") + "\">家具类</a></span>|<span><a href=\"/cn/Search/?key=" + Server.UrlEncode("金融类") + "\">金融类</a></span>|<span><a href=\"/cn/Search/?key=" + Server.UrlEncode("精密机床") + "\">精密机床</a></span>|<span><a href=\"/cn/Search/?key=" + Server.UrlEncode("新能源类") + "\">新能源类</a></span>|<span><a href=\"/cn/Search/?key=" + Server.UrlEncode("精密加工") + "\">精密加工</a></span></p></div>";
            }
        }
    }
    private void BindSearchProduct(List<Model.Product> list)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append(" <div class=\"pro-list clearfix\"><ul>");
        foreach (Model.Product item in list)
        {
            sb.AppendFormat("<li><a href=\"/cn/product/detail.aspx?id={0}\"><img src=\"{1}\" alt=\"{2}\"></a></li>", item.ID.Value, Help.checkImage(Help.getThumbnailPic("Thumbnail", item.smallPath), "1"), item.ProName);

        }
        sb.Append("</ul> </div>");
        lit_Search.Text = sb.ToString();
       
    }
}
