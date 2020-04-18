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
            List<Establishment> establishmentList = Micro.BusinessLayer.ICAS.ESTBLMT.EstablishmentManagement.GetInstance.GetEstablishmentList();

            return new iCAS.WebAPI.ResponseMessage().ReturnHttpResponseMessage(establishmentList);
            //return new HttpResponseMessage(HttpStatusCode.OK)
            //{
            //    Content = new StringContent(JArray.FromObject(establishmentList).ToString(), Encoding.UTF8, "application/json")
            //};
        }

        [HttpPost]
        [Route("api/establishment/add/{userid}")]
        public HttpResponseMessage AddEstablishment([FromBody] Establishment establishment,int userid)
        {
            int returnResult = EstablishmentManagement.GetInstance.InsertEstablishment(establishment, userid);
            if (returnResult>0)
                return new iCAS.WebAPI.ResponseMessage().ReturnHttpResponseMessage(true, returnResult.ToString(), "Establishment added successfully");
            else
                return new iCAS.WebAPI.ResponseMessage().ReturnHttpResponseMessage(false, "-1", "Failed to add the establishment");

        }

        [HttpPut]
        [Route("api/establishment/edit")]
        public HttpResponseMessage EditEstablishment([FromBody] Establishment establishment)
        {
            return new iCAS.WebAPI.ResponseMessage().ReturnHttpResponseMessage(true, "1", "Okay");

        }

        [HttpPost]
        [Route("api/establishments/update")]
        public HttpResponseMessage UpdateEstablishments([FromBody] Establishments establishments)
        {
            int totalRecordsEffected = EstablishmentManagement.GetInstance.UpdateEstablishments(establishments);
            if (totalRecordsEffected>0)
                return new iCAS.WebAPI.ResponseMessage().ReturnHttpResponseMessage(true, totalRecordsEffected, string.Format("Successfully updated {0} records", totalRecordsEffected));
            else
                return new iCAS.WebAPI.ResponseMessage().ReturnHttpResponseMessage(false, totalRecordsEffected, "Failed to update any record");
        }

        [HttpDelete]
        [Route("api/establishment/delete")]
        public HttpResponseMessage DeleteEstablishment([FromBody] Establishment establishment)
        {
            return new iCAS.WebAPI.ResponseMessage().ReturnHttpResponseMessage(true, "1", "Okay");
        }
    }
}
