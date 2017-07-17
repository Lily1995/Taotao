using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;

namespace UI
{
    public partial class liebiao : System.Web.UI.Page
    {
        Manager m = new Manager();
        ProductInfo p = new ProductInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBind();
            }
        }
        private void DataBind()
        {
            if (Request.QueryString["Param"] != null && Request.QueryString["Param"] != string.Empty)
            {
                p.ClassID = int.Parse(Request.QueryString["Param"]);

            }
            this.DataList1.DataSource = m.GetPi(p);
            this.DataList1.DataBind();
        }
    }
}