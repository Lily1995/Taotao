using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Admin
    {
        private int adminid;

        public int AdminID
        {
            get { return adminid; }
            set { adminid = value; }
        }
        private string adminname;

        public string AdminName
        {
            get { return adminname; }
            set { adminname = value; }
        }
        private string adminpwd;

        public string AdminPwd
        {
            get { return adminpwd; }
            set { adminpwd = value; }
        }
        private string admintype;

        public string AdminType
        {
            get { return admintype; }
            set { admintype = value; }
        }
    }
}
