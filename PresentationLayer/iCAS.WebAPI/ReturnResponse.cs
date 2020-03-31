using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iCAS.WebAPI
{
    public class ReturnResponse
    {
        public object result { get; set; }
        public ReturnStatus status { get; set; }
    }

    public class ReturnStatus
    {
        public string code { get; set; }
        public string message { get; set; }

        public ReturnStatus(string code, string messsage)
        {
            this.code = code;
            this.message = messsage;

        }

         
    }

    
}