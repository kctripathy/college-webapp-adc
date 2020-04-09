using Micro.BusinessLayer.HumanResource;
using Micro.Objects.HumanResource;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace iCAS.WebAPI.Controllers
{
    public class StaffProfileController : ApiController
    {
        // GET: api/StaffProfile
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/StaffProfile/5
        //public string Get(int id)
        //{
        //    return "value";
        //}

        public HttpResponseMessage Get(int id)
        {
            
            List<EmployeeProfile> EmployeeProfileList = EmployeeProfileManagement.GetInstance.GetEmployeeProfileImageByEmployeeID(id);
            MemoryStream ms;
            if (EmployeeProfileList.Count > 0)
            {
                ms = new MemoryStream(EmployeeProfileList[0].SettingKeyValue);
                
            }
            else
            {
                Byte[] b = System.IO.File.ReadAllBytes(string.Concat(System.Web.Hosting.HostingEnvironment.MapPath("/"), @"/no_photo.png"));
                ms = new MemoryStream(b);

            }
            HttpResponseMessage response = new HttpResponseMessage(HttpStatusCode.OK);
            response.Content = new StreamContent(ms);
            response.Content.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue("image/png");
            return response;

            //ImageDbEntities db = new ImageDbEntities();
            //var data = from i in db.Images
            //           where i.Id == id
            //           select i;
            //Image img = (Image)data.SingleOrDefault();
            //byte[] imgData = img.ImageData;
            //MemoryStream ms = new MemoryStream(imgData);
            //HttpResponseMessage response = new HttpResponseMessage(HttpStatusCode.OK);
            //response.Content = new StreamContent(ms);
            //response.Content.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue("image/png");
            //return response;
        }

        // POST: api/StaffProfile
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/StaffProfile/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/StaffProfile/5
        public void Delete(int id)
        {
        }
    }
}
