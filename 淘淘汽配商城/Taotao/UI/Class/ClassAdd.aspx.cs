using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;
using System.Data;

namespace UI.Class
{
    public partial class ClassAdd : System.Web.UI.Page
    {
        Manager m = new Manager();
        ProductClass pc = new ProductClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                datalistbind();
            }
        }
        private void datalistbind()
        {
            if (Request["id"] != null && Request["id"] != string.Empty)
            {
                pc.ClassID = int.Parse(Request["id"]);
                DataTable dt = m.ByIDC(pc);
                this.ClassName.Text = dt.Rows[0]["ClassName"].ToString();
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Request["id"] != null && Request["id"] != string.Empty)
            {
                pc.ClassID = int.Parse(Request["id"]);
                pc.ClassName = this.ClassName.Text;     
                bool flag = m.UpdateByIDC(pc);
                if (flag)
                {
                    Response.Write("<script>alert('编辑成功');</script>");
                    Response.Write("<script>window.location='List.aspx';</script>");
                    DataBind();
                }
                else
                {
                    Response.Write("<script>alert('编辑失败');</script>");
                }
            }
            else
            {
                pc.ClassName = this.ClassName.Text;               
                bool flag = m.AddC(pc);
                if (flag)
                {
                    Response.Write("<script>alert('编辑成功');</script>");
                    Response.Write("<script>window.location='List.aspx';</script>");
                    DataBind();
                }
                else
                {
                    Response.Write("<script>alert('编辑失败');</script>");
                }
            }
           
        }
    }
}