using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;

namespace UI.UserInfos
{
    public partial class List : System.Web.UI.Page
    {
        Manager m = new Manager();
        UserInfo u = new UserInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBind();
            }
        }
        private void DataBind()
        {
            this.DataList1.DataSource = m.All();
            this.DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            u.Userid = int.Parse(e.CommandArgument.ToString());
            bool flag = m.DelByIDU(u);
            if (flag)
            {
                Response.Write("<script>alert('删除成功');</script>");
                DataBind();
            }
            else
            {
                Response.Write("<script>alert('删除失败');</script>");
            }
        }

    }
}