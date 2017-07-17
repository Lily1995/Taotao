using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using Models;

namespace UI
{
    public partial class shop : System.Web.UI.Page
    {
        Manager ma = new Manager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                data();
            }
        }

        public void data()
        {

            if (Request["id"] != null && Request["id"] != string.Empty)
            {

                ProductInfo pf = new ProductInfo();
                pf.ProductID = int.Parse(Request["id"]);
                DataTable dt = ma.Selectid(pf);
                this.Label1.Text = dt.Rows[0]["ProductName"].ToString();
                this.Label2.Text = dt.Rows[0]["ProductDesc"].ToString();
                this.Label4.Text = dt.Rows[0]["ProductID"].ToString();
                this.Label6.Text = dt.Rows[0]["ProductPrice"].ToString();
                this.Image1.ImageUrl = "~/2011/" + dt.Rows[0]["ProductPic"].ToString();
                //this.DataList1.DataSource = ma.GetP();
                //this.DataList1.DataBind();
                //DataTable dt = ma.GetP();

                //this.lblMessage.Text = dt.Rows[0]["ProductPic"].ToString();
            }

        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<script>window.location='cart.aspx';</script>");
        }

      
    }
}