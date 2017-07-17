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
    public partial class dingdan : System.Web.UI.Page
    {
        Manager m = new Manager();
        OrderItemInfo oii = new OrderItemInfo();
        ProductInfo p = new ProductInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBind();
                DataListBind();
            }
        }
        private void DataBind()
        {
            this.DataList1.DataSource = m.AllOT();
            this.DataList1.DataBind();
            DataTable dt = m.GetSum(p);
           this.Label7.Text= dt.Rows[0]["s"].ToString();
            
        }
        private void DataListBind()
        {
            this.DropDownList1.DataSource = m.GetAllOt();
            this.DropDownList1.DataTextField = "convery";
            this.DropDownList1.DataValueField = "itemid";
            this.DropDownList1.DataBind();
            DataTable dt = m.All();
            //this.lblmessage.Text = dt.Rows[0]["UserName"].ToString();
            //this.lblmessage3.Text = dt.Rows[0]["Phone"].ToString();
            //this.lblmessage4.Text = dt.Rows[0]["Email"].ToString();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<script>alert('订单成功！')</script>");
            Response.Write("<script>window.location='HLogin.aspx';</script>");
        }
    }
}