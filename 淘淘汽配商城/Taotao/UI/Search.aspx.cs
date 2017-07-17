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
    public partial class Search : System.Web.UI.Page
    {
        Manager m = new Manager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataListBind();
            }
        }
        private void DataListBind()
        {
            this.DataList1.DataSource = m.GetAllP();
            this.DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ProductInfo p = new ProductInfo();
            p.ProductName = this.TextBox1.Text;
            this.DataList1.DataSource = m.GetAllPbyName(p);
            this.DataList1.DataBind();
        }

      

       
    }
}