using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Micro.Objects.ICAS
{
    [Serializable]
    public class StudentInfo
    {
        public int StudentID { get; set; }
        public string Address_Present_TownOrCity { get; set; }
        public int Address_Present_DistrictID { get; set; }
        public string Address_Present_PinCode { get; set; }
        public string PhoneNumber { get; set; }
        public string Mobile { get; set; }
        public string EMailID { get; set; }
    }
}
