using Micro.BusinessLayer.ICAS.STUDENT;
using Micro.Objects.ICAS.STUDENT;
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
    public class StudentsController : ApiController
    {

        public HttpResponseMessage Get()
        {
            List<Student> studentsList = StudentManagement.GetInstance.GetStudentList();
            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JArray.FromObject(studentsList).ToString(), Encoding.UTF8, "application/json")
            };
        }


        //// GET: api/Students
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "value1", "value2" };
        //}

        // GET: api/Students/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Students
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Students/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Students/5
        public void Delete(int id)
        {
        }
    }
}
