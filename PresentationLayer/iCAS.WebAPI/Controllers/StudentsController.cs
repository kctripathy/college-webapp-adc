using Micro.BusinessLayer.ICAS.STUDENT;
using Micro.Objects.ICAS;
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
            List<Student> studentsList = StudentManagement.GetInstance.GetStudentList(true,false,false);
            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JArray.FromObject(studentsList).ToString(), Encoding.UTF8, "application/json")
            };
        }

        [HttpPost]
        [Route("api/student/update")]
        public HttpResponseMessage UpdateStudentInfo([FromBody] StudentInfo student)
        {
            //UpdateEmployeeInfo
            int successFlag = StudentManagement.GetInstance.UpdateStudentInfo(student);

            ReturnResponse objReturnResponse = new ReturnResponse
            {
                result = (successFlag > 0 ? "Successfully updated the profile" : "Failed to update"),
                status = new ReturnStatus(successFlag.ToString(), (successFlag > 0 ? "Success" : "Failure"))
            };

            return Request.CreateResponse(HttpStatusCode.OK, objReturnResponse);
        }
    }
}
