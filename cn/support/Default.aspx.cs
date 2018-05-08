using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Comm;

public partial class cn_support_Default : PublicPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            head1.Typelist = foot1.Typelist = new BLL.ProductType().GetList(0, "Lang='zh_cn' and IsPass=1 ", "Sort asc");
        }
    }
}
