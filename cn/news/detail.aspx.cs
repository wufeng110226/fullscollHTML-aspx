using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Comm;
using System.Text;

public partial class cn_news_detail : PublicPage
{
    private long id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Common.WCommon.GetURLParamInt64("id");
        if (!IsPostBack)
        {
            if (id < 1)
                MessageBox.ShowRedirect("参数错误！", "/cn/news");
            head1.Typelist = foot1.Typelist = new BLL.ProductType().GetList(0, "Lang='zh_cn' and IsPass=1 ", "Sort asc");
            newsBind();

        }
    }
    private void newsBind()
    {
        Model.Article model = new BLL.Article().GetModelBystrWhere("ID=" + id + " and IsDelete=0 and IsPass=1 ");
        if (model == null)
            MessageBox.ShowRedirect("参数错误！", "/cn/news");
        lit_Contents.Text = model.Contents;
        lit_AddTime.Text = model.AddTime.Value.ToString("yyyy-MM-dd");
        lit_Sources.Text = model.Sources;
        lit_Title.Text = model.Title;
        lit_list.Text = "<a href='Default.aspx?classid=" + model.ClassID.Value + "'>返回列表</a>";
        if (!String.IsNullOrEmpty(model.PageTitle))
        {
            this.Title = model.PageTitle;
        }
        if (!String.IsNullOrEmpty(model.Matedescription))
        {
            base.MateDescription = model.Matedescription;
        }
        if (!String.IsNullOrEmpty(model.Matekeyword))
        {
            base.MetaKeywords = model.Matekeyword;
        }
        NewsTypeBind(model);
        NewsTypeBind(model);
        List<Model.Article> nextlist = new DAL.Article().GetList(1, "ClassID=" + model.ClassID.Value + " and IsDelete=0 and IsPass=1 and ID >" + model.ID.Value + " and Sort>=" + model.Sort.Value, "Sort asc");
        if (nextlist != null && nextlist.Count > 0)
        {
            lit_NextNews.Text = "<span><a href=\"detail.aspx?id=" + nextlist[0].ID.Value + "\">下一页</a></span>";
        }
        List<Model.Article> prelist = new DAL.Article().GetList(1, "ClassID=" + model.ClassID.Value + " and IsDelete=0 and IsPass=1 and ID <" + model.ID.Value + " and Sort<=" + model.Sort.Value, "Sort asc");
        if (prelist != null && prelist.Count > 0)
        {
            lit_PreNews.Text = "<span><a href=\"detail.aspx?id=" + prelist[0].ID.Value + "\">上一页</a></span> &nbsp;&nbsp;&nbsp;&nbsp;";
        }
    }
    private void NewsTypeBind(Model.Article model)
    {
        List<Model.ArticleType> typelist = new BLL.ArticleType().GetList(0, "Lang='zh_cn' and IsShow=1 ", "Sort asc");
        if (typelist != null && typelist.Count > 0)
        {
            StringBuilder sb = new StringBuilder();

            foreach (Model.ArticleType item in typelist)
            {
                sb.AppendFormat("<li {0}>{1}</li>", item.ClassID.Value == model.ClassID.Value ? "class='active'" : "", item.ClassName);
            }

            lit_NewsType.Text = sb.ToString();
        }
    }

}
