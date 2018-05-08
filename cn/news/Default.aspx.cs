using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Comm;
using System.Text;
public partial class cn_news_Default : PublicPage
{
    private long classid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        classid = Common.WCommon.GetURLParamInt64("classid");
        if (!IsPostBack)
        {
            head1.Typelist = foot1.Typelist = new BLL.ProductType().GetList(0, "Lang='zh_cn' and IsPass=1 ", "Sort asc");
            NewsTypeBind();
            rptlistBind();
        }
    }
    private void NewsTypeBind()
    {
        List<Model.ArticleType> typelist = new BLL.ArticleType().GetList(0, "Lang='zh_cn' and IsShow=1 ", "Sort asc");
        if (typelist != null && typelist.Count > 0)
        {
            classid = classid == 0 ? typelist[0].ClassID.Value : classid;
            hiddClassId.Value = classid.ToString();

            StringBuilder sb = new StringBuilder();

            foreach (Model.ArticleType model in typelist)
            {
                if (model.ClassID.Value == classid)
                {
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
                }
                sb.AppendFormat("<li {0} data-classid='{1}'>{2}</li>", model.ClassID.Value == classid ? "class='active'" : "", model.ClassID.Value, model.ClassName);

            }

            lit_NewsType.Text = sb.ToString();
        }
    }
    private void rptlistBind()
    {
        Model.PageData<Model.Article> data = new DAL.Article().GetList(9, 1, "ClassID=" + classid + " and IsDelete=0 and IsPass=1", "Sort asc");
        rptlist.DataSource = data.DataSoure;
        rptlist.DataBind();
        hiddCount.Value = data.Count.ToString();
    }
}
