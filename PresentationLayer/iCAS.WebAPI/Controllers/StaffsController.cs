using Micro.BusinessLayer.ICAS.STAFFS;
using Micro.Objects.ICAS.STAFFS;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;

namespace iCAS.WebAPI.Controllers
{
    public class StaffsController : ApiController
    {
        public HttpResponseMessage Get()
        {
            List<StaffMaster> staffsList = StaffMasterManagement.GetInstance.GetOfficeEmployeeList();
            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JArray.FromObject(staffsList).ToString(), Encoding.UTF8, "application/json")
            };
        }
        //// GET: api/Staffs
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "value1", "value2" };
        //}

        // GET: api/Staffs/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Staffs
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Staffs/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Staffs/5
        public void Delete(int id)
        {
        }
    }
}
