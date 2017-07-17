using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class OrderItemInfo
    {
        private int itemid;

        public int ItemID
        {
            get { return itemid; }
            set { itemid = value; }
        }
        private int productid;

        public int ProductID
        {
            get { return productid; }
            set { productid = value; }
        }
        private int num;

        public int Num
        {
            get { return num; }
            set { num = value; }
        }
        private int orderid;

        public int OrderID
        {
            get { return orderid; }
            set { orderid = value; }
        }
        private string convery;

        public string Convery
        {
            get { return convery; }
            set { convery = value; }
        }
    }
}
