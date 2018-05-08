using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Comm;

public partial class cn_ascx_indexhead : System.Web.UI.UserControl
{
    private List<Model.ProductType> typelist = new List<Model.ProductType>();

    public List<Model.ProductType> Typelist
    {
        get { return typelist; }
        set { typelist = value; }
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
        rptlist.DataSource = Typelist;
        rptlist.DataBind();
    }
}
