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
    public partial class HLogin : System.Web.UI.Page
    {
        Manager m = new Manager();
        Admin a = new Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //if (a.AdminName!=this.AdName.Text)
            //{
            //    Response.Write("<script>alert('姓名不正确，请重新输入');</script>");
            //}
            //if (a.AdminPwd!=this.Adpwd.Text)
            //{
            //    Response.Write("<script>alert('密码不正确，请重新输入');</script>");
            //}
            //if (a.AdminName!=this.AdName.Text&&a.AdminPwd!=this.Adpwd.Text)
            //{
            //    Response.Write("<script>alert('都不正确，请重新登录');</script>");
            //}
            // Response.Write("<script>alert('登录成功');</script>");
            if(this.AdName.Text==null&&this.Adpwd.Text==null)
            {
                Response.Write("<script>alert('姓名和密码不能为空，请输入');</script>");
            }
            else
            {
                if (this.AdName.Text == "龚艳" && this.Adpwd.Text == "123456")
                {
                    Response.Write("<script>alert('登录成功');</script>");
                    Response.Write("<script>window.location='Default.aspx'</script>");
                }
                else if(this.AdName.Text=="龚艳"&&this.Adpwd.Text!="123456")
                {
                    Response.Write("<script>alert('密码不正确，请重新输入');</script>");
                }
                else if (this.AdName.Text != "龚艳" && this.Adpwd.Text == "123456")
                {
                    Response.Write("<script>alert('姓名不正确，请重新输入');</script>");
                }
                else  if (this.AdName.Text != "龚艳" && this.Adpwd.Text != "123456")
                {
                    Response.Write("<script>alert('姓名和密码不正确，请重新输入');</script>");
                }
            }
        }
    }
}