using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cn_ascx_head : System.Web.UI.UserControl
{
    private List<Model.ProductType> typelist = new List<Model.ProductType>();

    public List<Model.ProductType> Typelist
    {
        get { return typelist; }
        set { typelist = value; }
    }
    private string _key = "";

    public string Key
    {
        get { return _key; }
        set { _key = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptlistBind();
        }
    }
    private void rptlistBind()
    {
        if (Typelist == null || Typelist.Count == 0)
            Typelist = new BLL.ProductType().GetList(0, "Lang='zh-cn' and IsPass=1 ", "Sort asc");
        rptlist.DataSource = Typelist;
        rptlist.DataBind();
    }
}
