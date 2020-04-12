using Micro.BusinessLayer.Administration;
using Micro.Objects.Administration;
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
    public class CommonsController : ApiController
    {
        [Route("api/common/districts")]
        public HttpResponseMessage GetDistricts ()
        {
            List<District> allDistricts = DistrictManagement.GetInstance.GetAllDistricts();
            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JArray.FromObject(allDistricts).ToString(), Encoding.UTF8, "application/json")
            };
        }
    }
}
