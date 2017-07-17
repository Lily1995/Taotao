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
    public partial class ProductAdd : System.Web.UI.Page
    {
        Manager m = new Manager();
        ProductInfo pi = new ProductInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                DataBind();
                datalistbind();
            }
        }
        private void DataBind()
        {
            this.DropDownList1.DataSource = m.AllC();
            this.DropDownList1.DataTextField = "classname";
            this.DropDownList1.DataValueField = "classid";
            this.DropDownList1.DataBind();
        }
        private void datalistbind()
        {
            if(Request["id"]!=null&&Request["id"]!=string.Empty)
            {

            }
        }
        protected void Upload_Click(object sender, EventArgs e)
        {
            if (fileUpload.HasFile)
            {
                string fileName = fileUpload.FileName;
                string fileFix = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();
                if (fileFix != "png" && fileFix != "jpg" && fileFix != "jpeg" && fileFix != "gif")
                {
                    Response.Write("<script>alert('上传文件不是图片格式');</script>");
                }
                else
                {
                    string newfileName = DateTime.Now.ToString("hhmmssffff.") + fileFix;
                    fileUpload.SaveAs(Server.MapPath("../") + "//2011//" + newfileName);
                    this.Image1.ImageUrl = "~/2011/" + newfileName;
                    Response.Write("<script>alert('上传成功');</script>");
                }
            }
        }

        protected void btnSure_Click(object sender, EventArgs e)
        {
            pi.ClassID = int.Parse(this.DropDownList1.SelectedValue);
            pi.ProductName = this.name.Text;
            pi.ProductDesc = this.desc.Text;
            pi.Count = int.Parse(this.num.Text);
            pi.ProductPrice = double.Parse(this.price.Text);
            pi.ProductPic = this.lblPic.Text;
            bool flag = m.AddP(pi);
            if (flag)
            {
                Response.Write("<script>alert('添加商品成功！');</script>");
                Response.Write("<script>window.location='Default.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('添加商品失败！');</script>");
            }
        }

        protected void close_Click(object sender, EventArgs e)
        {
           
        }
    }
}