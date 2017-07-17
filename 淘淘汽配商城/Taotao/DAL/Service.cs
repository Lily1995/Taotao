using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data;

namespace DAL
{
    public class Service
    {
        //public bool UpdateT(OrderInfo o)
        //{
        //    string sql = string.Format("update [dbo].[Order] set checkeds='审核通过' where OrderID={0}", o.OrderID);
        //    return DBHelper.ExecuteNonQuery(sql);
        //}
        public DataTable GetByP(ProductInfo p)
        {
            string sql = string.Format("select ProductName,ProductID,ProductPrice,count from Product where ProductID='{0}'",p.ProductID);
            return DBHelper.GetDataTable(sql);
        }
        public bool AddP(ProductInfo p)
        {
            string sql = string.Format("insert into Product(ProductName,ProductDesc,ProductPrice,ProductPic,count,ClassID) values('{0}','{1}',{2},'{3}',{4},{5})",p.ProductName,p.ProductDesc,p.ProductPrice,p.ProductPic,p.Count,p.ClassID);
            return DBHelper.ExecuteNonQuery(sql);
        } 
        public DataTable GetPC(ProductClass pc)
        {
            string sql=string.Format("select ClassName from ProductClass where ClassID='{0}'",pc.ClassID);
            return DBHelper.GetDataTable(sql);
        }
        public bool UpdateMinusP(ProductInfo p)
        {
            string sql = string.Format("update Product set count-=1,Sprice-=ProductPrice where ProductID='{0}'", p.ProductID);
            return DBHelper.ExecuteNonQuery(sql);
        }
        public bool UpdateAddP(ProductInfo p)
        {
            string sql = string.Format("update Product set count+=1,Sprice+=ProductPrice where ProductID='{0}'", p.ProductID);
            return DBHelper.ExecuteNonQuery(sql);
        }
        public DataTable GetByIDP(ProductInfo p)
        {
            string sql = string.Format("select*from Product where ProductID='{0}'", p.ProductID);
            return DBHelper.GetDataTable(sql);
        }
        public UserInfo LoginCheck(string username, string pwd)
        {
            string sql = string.Format("select * from UserInfo where Username='{0}' and UserPwd='{1}'", username, pwd);
            DataTable dt = DBHelper.GetDataTable(sql);
            UserInfo user = new UserInfo();
            try
            {
                user.Email = dt.Rows[0]["Email"].ToString();
                user.Phone = dt.Rows[0]["Phone"].ToString();
                user.Userid = int.Parse(dt.Rows[0]["Userid"].ToString());
                user.Username = dt.Rows[0]["Username"].ToString();
                user.UserPwd = dt.Rows[0]["UserPwd"].ToString();
            }
            catch (Exception)
            {
                return null;
            }
            return user;
        }
        public DataTable All()
        {
            string sql = "select*from UserInfo";
            return DBHelper.GetDataTable(sql);
        }        
        public DataTable GetByNameU(UserInfo u)
        {
            string sql = string.Format("select*from UserInfo where username='{0}'",u.Username);
            return DBHelper.GetDataTable(sql);
        }
        public bool AddU(UserInfo u)
        {
            string sql = string.Format("insert into userinfo(username,userpwd,email,phone) values('{0}','{1}','{2}','{3}')",u.Username,u.UserPwd,u.Email,u.Phone);
            return DBHelper.ExecuteNonQuery(sql);
        }
        public bool DelByIDU(UserInfo u)
        {
            string sql = "delete from UserInfo where userid="+u.Userid;
            return DBHelper.ExecuteNonQuery(sql);
        }
        public DataTable AllC()
        {
            string sql = "select*from ProductClass";
            return DBHelper.GetDataTable(sql);
        }
        public DataTable ByIDC(ProductClass pc)
        {
            string sql = "select*from ProductClass where classid="+pc.ClassID;
            return DBHelper.GetDataTable(sql);
        }
        public bool DelByIDC(ProductClass pc)
        {
            string sql = "delete from ProductClass where classid=" + pc.ClassID;
            return DBHelper.ExecuteNonQuery(sql);
        }
        public bool AddC(ProductClass pc)
        {
            string sql = string.Format("insert into ProductClass (ClassName) values('{0}')",pc.ClassName);
            return DBHelper.ExecuteNonQuery(sql);
        }
        public bool UpdateByIDC(ProductClass pc)
        {
            string sql = string.Format("update ProductClass set classname='{0}' where classid={1}",pc.ClassName,pc.ClassID);
            return DBHelper.ExecuteNonQuery(sql);
        }
        public DataTable GetPi(ProductInfo p)
        {
            string sql = string.Format("select*from Product where ClassID={0}",p.ClassID);
            return DBHelper.GetDataTable(sql);
        }
        public DataTable GetAllP()
        {
            string sql = "select*from Product";
            return DBHelper.GetDataTable(sql);
        }
        public DataTable GetAllPC(ProductClass pc)
        {
            string sql = string.Format("select p.ProductPic,p.ProductName,p.ProductDesc,p.ProductPrice,p.count from Product p,ProductClass pc where p.ClassID=pc.ClassID and ClassID='{0}'",pc.ClassID);
            return DBHelper.GetDataTable(sql);
        }
        public bool GetByNameP(ProductInfo p)
        {
            string sql = string.Format("select*from Product where ProductName='{0}'",p.ProductName);
            return DBHelper.ExecuteNonQuery(sql);
        }
        public DataTable AllP()
        {
            string sql = "select p.ProductID,p.ProductName,pc.ClassName,oi.Num,oi.Num,p.ProductPrice from Product p,ProductClass pc,OrderItem oi where oi.ProductID=p.ProductID and p.ClassID=pc.ClassID";
            return DBHelper.GetDataTable(sql);
        }
        public DataTable GetP(ProductInfo p)
        {
            string sql = string.Format("select p.ProductName,p.ProductID,p.ProductPrice,p.count from Product p,OrderItem oi where oi.ProductID=p.ProductID  and p.ProductID=1");
            //string sql = string.Format("select ProductID 编号,ProductName 商品名,ProductPrice 淘淘价,count 数量 from Product");
            return DBHelper.GetDataTable(sql);
        }
        public DataTable GetSum(ProductInfo p)
        {
            string sql = string.Format("select sum(Sprice) s from Product where ProductID=1");
            return DBHelper.GetDataTable(sql);
        }
        public bool DelByIDP(ProductInfo pi)
        {
            string sql = "delete from Product where ProductID="+pi.ProductID;
            return DBHelper.ExecuteNonQuery(sql);
        }
        //public bool AddP(ProductInfo pi)
        //{
        //    string sql = string.Format("insert into Product(productname,productpic,productprice,productdesc) values('{0}','{1}',{2},'{3}')",pi.ProductName,pi.ProductPic,pi.ProductPrice,pi.ProductDesc);
        //    return DBHelper.ExecuteNonQuery(sql);
        //}
        public DataTable AllO()
        {
            string sql = "select o.OrderID,o.OrderTime,oi.Convery,o.checkeds,o.OrderTime,o.qianshou from [Order] o,OrderItem oi where o.OrderID=oi.OrderID";
            return DBHelper.GetDataTable(sql);
        }
        public DataTable ByIDO(OrderInfo oi)
        {
            string sql = string.Format("select o.OrderID,u.UserName,p.ProductName,oi.Num,p.ProductPrice,oi.Convery from [Order] o,UserInfo u,Product p,OrderItem oi where o.UserID=u.UserID and o.OrderID=oi.OrderID and oi.ProductID=p.ProductID and o.OrderID={0}",oi.OrderID);
            return DBHelper.GetDataTable(sql);
        }
        public DataTable AllOT()
        {
            string sql = string.Format("select p.productname,p.productid,o.ordermoney,p.count from OrderItem oi,[Order] o,Product p where oi.productid=p.productid and o.orderid=oi.orderid and p.ClassID=1");
            return DBHelper.GetDataTable(sql);
        }
        public DataTable GetAllOt()
        {
            string sql = "select*from orderitem";
            return DBHelper.GetDataTable(sql);
        }
        public DataTable GetAllPbyName(ProductInfo p)
        {
            string sql = string.Format("select * from Product where ProductName like '%{0}%'", p.ProductName);
            return DBHelper.GetDataTable(sql);
        }
        public DataTable Selectid(ProductInfo p)
        {
            string sql = string.Format("select ProductID,ProductName,ProductPic,ProductPrice,ProductDesc from Product where ProductID='{0}'", p.ProductID);
            return DBHelper.GetDataTable(sql);
        }
    }
}
