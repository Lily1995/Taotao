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
    public partial class shouye : System.Web.UI.Page
    {
        Manager m = new Manager();
        ProductClass pc = new ProductClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    DataBind();
            //}
        }
        //private void DataBind()
        //{
        //    this.DataList1.DataSource = m.GetPC(pc);
        //    this.DataList1.DataBind();
        //}
    }
}