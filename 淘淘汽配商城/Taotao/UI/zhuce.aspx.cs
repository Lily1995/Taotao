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
    public partial class zhuce : System.Web.UI.Page
    {
        Manager m = new Manager();
        UserInfo u = new UserInfo();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (this.name.Text != "" && this.pwd.Text != "" && this.repwd.Text != "" && this.email.Text != "" && this.phone.Text != "" && this.ma.Text != "")
            {
                u.Username = this.name.Text;
                u.UserPwd = this.pwd.Text;
                u.UserPwd = this.repwd.Text;
                u.Phone = this.phone.Text;
                u.Email = this.email.Text;
                bool flag = m.AddU(u);
                if (flag)
                {
                    Response.Write("<script>alert('添加成功');</script>");
                    Response.Write("<script>window.location='Login.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('添加失败');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('输入不能为空');</script>");
            }
        }    }
}