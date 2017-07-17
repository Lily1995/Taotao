using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class ProductInfo
    {
        private int productid;

        public int ProductID
        {
            get { return productid; }
            set { productid = value; }
        }
        private string productname;

        public string ProductName
        {
            get { return productname; }
            set { productname = value; }
        }
        private string productpic;

        public string ProductPic
        {
            get { return productpic; }
            set { productpic = value; }
        }
        private double productprice;

        public double ProductPrice
        {
            get { return productprice; }
            set { productprice = value; }
        }
        private string productdesc;

        public string ProductDesc
        {
            get { return productdesc; }
            set { productdesc = value; }
        }
        private int classid;

        public int ClassID
        {
            get { return classid; }
            set { classid = value; }
        }

        private int count;

        public int Count
        {
            get { return count; }
            set { count = value; }
        }
        private double sprice;

        public double Sprice
        {
            get { return sprice; }
            set { sprice = value; }
        }
    }
}
