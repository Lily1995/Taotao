﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;

namespace UI.Order
{
    public partial class List : System.Web.UI.Page
    {
        Manager m = new Manager();
        OrderInfo oi = new OrderInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBind();
                //DataListBind();
            }
        }
        private void DataBind()
        {
            this.DataList1.DataSource = m.AllO();
            this.DataList1.DataBind();          
        }
        //private void DataListBind()
        //{
        //    if (Request["id"] != null && Request["id"] != string.Empty)
        //    {
        //        oi.OrderID = int.Parse(Request["id"]);
        //        this.DataList1.DataSource = m.UpdateT(oi);
        //        this.DataList1.DataBind();               
        //    }
        //}
        //private void Data()
        //{
        //    if (Request["id"] != null && Request["id"] != string.Empty)
        //    {
        //        oi.OrderID = int.Parse(Request["id"]);
        //        this.DataList1.DataSource = m.UpdateQ(oi);
        //        this.DataList1.DataBind();
        //    }
        //}
    }
}