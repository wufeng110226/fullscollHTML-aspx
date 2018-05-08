using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using Comm;

public partial class cn_product_Default : PublicPage
{
    protected long classid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        classid = Common.WCommon.GetURLParamInt64("classid");
        if (!IsPostBack)
        {
            List<Model.ProductType> Typelist = new BLL.ProductType().GetList(0, "Lang='zh_cn' and IsPass=1 ", "Sort asc");
            head1.Typelist = foot1.Typelist = Typelist;
            productTypeBind(Typelist);
            rptlistBind();
        }
    }
    private void productTypeBind(List<Model.ProductType> Typelist)
    {
        if (Typelist != null && Typelist.Count > 0)
        {
            StringBuilder sb = new StringBuilder();
            classid = classid == 0 ? Typelist[0].ClassID.Value : classid;
            hiddClassId.Value = classid.ToString();
            foreach (Model.ProductType model in Typelist)
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

            lit_productType.Text = sb.ToString();
        }
    }
    private void rptlistBind()
    {
        Model.PageData<Model.Product> data = new DAL.Product().GetList(9, 1, "ClassID=" + classid + " and IsDelete=0 and IsPass=1", "Sort asc");
        rptlist.DataSource = data.DataSoure;
        rptlist.DataBind();
        hiddCount.Value = data.Count.ToString();
    }
}
