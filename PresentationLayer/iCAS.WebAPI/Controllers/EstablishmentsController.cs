using Micro.BusinessLayer.ICAS.ESTBLMT;
using Micro.Objects.ICAS.ESTBLMT;
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
    public class EstablishmentsController : ApiController
    {
        // GET: api/Establishments
        public HttpResponseMessage Get()
        {
            //return new string[] { "value1", "value2" };

            List<Establishment> establishmentList = Micro.BusinessLayer.ICAS.ESTBLMT.EstablishmentManagement.GetInstance.GetEstablishmentList();

            //List<Establishment> establishmentList = EstablishmentManagement.GetInstance.GetEstablishmentListByTypeCodes("N,T,C,R,S"); //.Find(a=> a.EstbViewEndDate < DateTime.Today).ToList();
            //List<Establishment> theTotalist = (from abc in establishmentList
            //                                   where (abc.EstbStatusFlag.Equals("A") && (abc.EstbViewStartDate <= DateTime.Today && abc.EstbViewEndDate >= DateTime.Today))
            //                                   select abc)                                         
            //                                   .OrderByDescending(y => y.EstbID)
            //                                   .ToList();

           
            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JArray.FromObject(establishmentList).ToString(), Encoding.UTF8, "application/json")
            };
        }

        // GET: api/Establishments/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Establishments
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Establishments/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Establishments/5
        public void Delete(int id)
        {
        }
    }
}
