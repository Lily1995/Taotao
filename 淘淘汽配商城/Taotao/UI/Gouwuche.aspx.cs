using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Models;
using BLL;

namespace UI
{
    public partial class Gouwuche : System.Web.UI.Page
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

            this.DataList1.DataSource = m.GetP(p);
            this.DataList1.DataBind();
            DataTable dt = m.GetSum(p);
            this.Label2.Text = dt.Rows[0]["s"].ToString();
            //this.lblmessage2.Text = dt.Rows[0]["ProductPrice"].ToString();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<script>window.location='dingdan.aspx';</script>");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<script>window.location='shouye.aspx';</script>");
        }
    }
}