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
    public partial class cart : System.Web.UI.Page
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

            //if (Request["id"] != null && Request["id"] != string.Empty)
            //{
            //    p.ProductID = int.Parse(Request["id"]);
            //    this.DataList1.DataSource = m.GetByP(p);
            //    this.DataList1.DataBind();
            //    DataTable dt = m.GetSum(p);
            //    this.Label2.Text = dt.Rows[0]["s"].ToString();
            //}

            this.DataList1.DataSource = m.GetP(p);
            this.DataList1.DataBind();
            DataTable dt = m.GetSum(p);
            this.Label2.Text = dt.Rows[0]["s"].ToString();
            //this.lblmessage2.Text = dt.Rows[0]["ProductPrice"].ToString();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<script>window.location='shouye.aspx';</script>");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<script>window.location='dingdan.aspx';</script>");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
           
            if (e.CommandName == "add")
            {
                p.ProductID = int.Parse(e.CommandArgument.ToString());
                bool flag = m.UpdateAddP(p);
                if (flag)
                {
                    DataBind();
                }
                else
                {
                    Response.Write("<script>alert('增加失败！')</script>");
                }
            }

            if (e.CommandName == "minus")
            {
                p.ProductID= int.Parse(e.CommandArgument.ToString());
                DataTable dt = m.GetAllP();
                if (int.Parse(dt.Rows[0]["count"].ToString()) > 1)
                {
                    bool flag = m.UpdateMinusP(p);
                    if (flag)
                    {
                        DataBind();
                    }
                    else
                    {
                        Response.Write("<script>alert('减少失败！')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('数量至少为1！')</script>");
                }
            }
            
        }
    }
}