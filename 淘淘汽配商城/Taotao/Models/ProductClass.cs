using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class ProductClass
    {
        private int classid;

        public int ClassID
        {
            get { return classid; }
            set { classid = value; }
        }
        private string classname;

        public string ClassName
        {
            get { return classname; }
            set { classname = value; }
        }
    }
}
