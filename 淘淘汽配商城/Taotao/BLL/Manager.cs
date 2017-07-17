using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using DAL;
using System.Data;

namespace BLL
{
    public class Manager
    {
        //public bool UpdateT(OrderInfo o)
        //{
        //    return s.UpdateT(o);
        //}
        public DataTable GetByP(ProductInfo p)
        {
            return s.GetByP(p);
        }
        public bool AddP(ProductInfo p)
        {
            return s.AddP(p);
        }
        public DataTable GetPi(ProductInfo p)
        {
            return s.GetPi(p);
        }
        public DataTable GetPC(ProductClass pc)
        {
            return s.GetPC(pc);
        }
        public bool UpdateMinusP(ProductInfo p)
        {
            return s.UpdateMinusP(p);
        }
        public bool UpdateAddP(ProductInfo p)
        {
            return s.UpdateAddP(p);
        }
        public DataTable GetByIDP(ProductInfo p)
        {
            return s.GetByIDP(p);
        }
        Service s = new Service();
        public UserInfo LoginCheck(string username, string pwd)
        {
            return s.LoginCheck(username, pwd);
        }
        public DataTable All()
        {
            return s.All();
        }     
        public DataTable GetByNameU(UserInfo u)
        {
            return s.GetByNameU(u);
        }
        public bool AddU(UserInfo u)
        {
            return s.AddU(u);
        }
        public bool DelByIDU(UserInfo u)
        {
            return s.DelByIDU(u);
        }
        public DataTable AllC()
        {
            return s.AllC();
        }
        public bool DelByIDC(ProductClass pc)
        {
            return s.DelByIDC(pc);
        }
        public bool AddC(ProductClass pc)
        {
            return s.AddC(pc);
        }
        public DataTable ByIDC(ProductClass pc)
        {
            return s.ByIDC(pc);
        }
        public bool UpdateByIDC(ProductClass pc)
        {
            return s.UpdateByIDC(pc);
        }
        public DataTable GetAllP()
        {
            return s.GetAllP();
        }
        public DataTable GetAllPC(ProductClass pc)
        {
            return s.GetAllPC(pc);
        }
        public DataTable GetP(ProductInfo p)
        {
            return s.GetP(p);
        }      
        public DataTable GetSum(ProductInfo p)
        {
            return s.GetSum(p);
        }
        public DataTable AllP()
        {
            return s.AllP();
        }
        public bool GetByNameP(ProductInfo p)
        {
            return s.GetByNameP(p);
        }
        public bool DelByIDP(ProductInfo pi)
        {
            return s.DelByIDP(pi);
        }
        //public bool AddP(ProductInfo pi)
        //{
        //    return s.AddP(pi);
        //}
        public DataTable AllO()
        {
            return s.AllO();
        }
        public DataTable ByIDO(OrderInfo oi)
        {
            return s.ByIDO(oi);
        }
        public DataTable AllOT()
        {
            return s.AllOT();
        }
        public DataTable GetAllOt()
        {
            return s.GetAllOt();
        }
        public DataTable GetAllPbyName(ProductInfo p)
        {
            return s.GetAllPbyName(p);
        }
        public DataTable Selectid(ProductInfo p)
        {
            return s.Selectid(p);
        }
    }
}
