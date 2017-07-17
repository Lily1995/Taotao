using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class OrderInfo
    {
        private int orderid;

        public int OrderID
        {
            get { return orderid; }
            set { orderid = value; }
        }
        private int userid;

        public int UserID
        {
            get { return userid; }
            set { userid = value; }
        }
        private double ordermoney;

        public double OrderMoney
        {
            get { return ordermoney; }
            set { ordermoney = value; }
        }
        private DateTime ordertime;

        public DateTime OrderTime
        {
            get { return ordertime; }
            set { ordertime = value; }
        }
        private string checkeds;

        public string Checkeds
        {
            get { return checkeds; }
            set { checkeds = value; }
        }
        private string qianshou;

        public string Qianshou
        {
            get { return qianshou; }
            set { qianshou = value; }
        }
    }
}
