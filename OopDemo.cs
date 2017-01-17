using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace fundManage
{
    public class OopDemo
    {
        private string fistname;
        private String lastname;
        
        public OopDemo(String fnm,String lnm)
        {
            this.fistname = fnm;
            this.lastname = lnm;

        }

        public String Display()
        {
            return fistname + "~" + lastname;
        }



    }
    public class mydemo
    {
        public static void main(String[] args)
        {
            OopDemo obj = new OopDemo("yuval", "Prajapati");
           Console.Write(obj.Display());
           

        }

    }
}