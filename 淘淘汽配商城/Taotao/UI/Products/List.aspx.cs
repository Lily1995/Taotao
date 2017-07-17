using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;

namespace UI.Products
{
    public partial class List : System.Web.UI.Page
    {
        Manager m = new Manager();
        ProductInfo pi = new ProductInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                datalistbind();
            }
        }
        private void datalistbind()
        {
            this.DataList1.DataSource = m.AllP();
            this.DataList1.DataBind();
        }
        
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            pi.ProductID = int.Parse(e.CommandArgument.ToString());
            bool flag = m.DelByIDP(pi);
            if (flag)
            {
                Response.Write("<script>alert('删除成功');</script>");
                datalistbind();
            }
            else
            {
                Response.Write("<script>alert('删除失败');</script>");
            }
        }       
    }
}