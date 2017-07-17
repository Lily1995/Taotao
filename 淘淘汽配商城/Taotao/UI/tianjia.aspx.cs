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
    public partial class tianjia : System.Web.UI.Page
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
            if (Request["Name"] != null && Request["Name"] != string.Empty)
            {
                p.ProductName = Request["Name"];
                this.DataList1.DataSource = m.GetByNameP(p);
                this.DataList1.DataBind();
            }
        }
    }
}