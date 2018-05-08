using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using Comm;

public partial class cn_product_detail : PublicPage
{
    protected long id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Common.WCommon.GetURLParamInt64("id");
        if (!IsPostBack)
        {
            if (id < 1)
                MessageBox.ShowRedirect("参数错误！", "/cn/product");

            List<Model.ProductType> Typelist = new BLL.ProductType().GetList(0, "Lang='zh_cn' and IsPass=1 ", "Sort asc");
            head1.Typelist = Typelist;
            rptfootlist.DataSource = Typelist;
            rptfootlist.DataBind();
            productBind();
        }
    }
    private void productBind()
    {
        Model.Product model = new BLL.Product().GetModelBystrWhere("ID=" + id + " and IsDelete=0 and IsPass=1 ");
        if (model == null)
            MessageBox.ShowRedirect("参数错误！", "/cn/product");
        lit_Contents.Text = model.Contents;
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
        lit_list.Text = "<a href='Default.aspx?classid=" + model.ClassID.Value + "'>返回列表</a>";
        rptlistBind(model);
    }
    private void rptlistBind(Model.Product model)
    {
        Model.PageData<Model.Product> data = new DAL.Product().GetList(int.MaxValue, 1, "ClassID=" + model.ClassID.Value + " and IsDelete=0 and IsPass=1 and ID <>" + model.ID.Value, "Sort asc");
        rptlist.DataSource = data.DataSoure;
        rptlist.DataBind();
        if (data.Count > 0)
        {
            Model.Product nextmodel = data.DataSoure.Find(delegate(Model.Product item) { return item.Sort.Value >= model.Sort.Value && item.ID.Value > model.ID.Value; });
            if (nextmodel != null)
            {
                lit_NextProduct.Text = "<a href='detail.aspx?id=" + nextmodel.ID.Value + "'>下一个产品</a>";
            }
            Model.Product premodel = data.DataSoure.Find(delegate(Model.Product item) { return item.Sort.Value <= model.Sort.Value && item.ID.Value < model.ID.Value; });
            if (premodel != null)
            {
                lit_PreProduct.Text = "<a href='detail.aspx?id=" + nextmodel.ID.Value + "'>上一个产品</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
            }
        }
    }
}
