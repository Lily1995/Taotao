using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;
using System.Data;

namespace UI
{
    public partial class Login : System.Web.UI.Page
    {
        Manager m = new Manager();
        UserInfo u = new UserInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            //if (u.Username != this.name.Text)
            //{
            //    Response.Write("<script>alert('姓名不正确，请重新输入');</script>");
            //}
            //else if (u.UserPwd != this.pwd.Text)
            //{
            //    Response.Write("<script>alert('密码不正确，请重新输入');</script>");
            //}
            //else if (u.Username != this.name.Text && u.UserPwd != this.pwd.Text)
            //{
            //    Response.Write("<script>alert('都不正确，请重新登录');</script>");
            //}
            //Response.Write("<script>alert('登录成功');</script>");
            //if (u.Username == this.name.Text && u.UserPwd == this.pwd.Text)
            //{
            //    Response.Write("<script>alert('登录成功');</script>");
            //    Response.Write("<script>window.location='Index.aspx';</script>");
            //}
            //else
            //{
            //    if (u.Username != this.name.Text && u.UserPwd != this.pwd.Text)
            //    {
            //        Response.Write("<script>alert('都不正确，请重新登录');</script>");
            //    }
            //    if (u.Username != this.name.Text && u.UserPwd == this.pwd.Text)
            //    {
            //        Response.Write("<script>alert('姓名不正确，请重新输入');</script>");
            //    }
            //    if (u.Username == this.name.Text && u.UserPwd != this.pwd.Text)
            //    {
            //         Response.Write("<script>alert('密码不正确，请重新输入');</script>");
            //    }
            //}
            if (this.name.Text == "" || this.pwd.Text == "")
            {
                Response.Write("<script>alert('请输入用户名密码');</script>");
                return;
            }

            u = m.LoginCheck(this.name.Text, this.pwd.Text);

            if (u == null)
            {
                Response.Write("<script>alert('姓名或密码输入错误');</script>");
                return;
            }
            else
            {
                Session["User"] = u;
                Response.Write("<script>window.location='shouye.aspx';</script>");
                if (this.name.Text.Trim() != string.Empty)
                {
                    Session["UserName"] = this.name.Text;
                    //Response.Redirect("dingdan.aspx");
                }
            }
        }

        protected void zhuce_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location='zhuce.aspx';</script>");
        }       
    }
}