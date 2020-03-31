using Micro.BusinessLayer.ICAS.ADMIN;
using Micro.Objects.ICAS.ADMIN;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Text;
using System.Web.Http;

namespace iCAS.WebAPI.Controllers
{
    
    public class UsersController : ApiController
    {

      

        // GET: api/Users
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Users/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Users
        //public void Post([FromBody]string value)
        //{
        //}

        [HttpPost]
        [Route("api/user/login")]
        public HttpResponseMessage Login ([FromBody] UserLogin user)
        {
            if (user == null || user.UserName == null || user.UserPassword == null)
            {
                return new HttpResponseMessage(HttpStatusCode.OK)
                {
                    Content = new StringContent("Bad Request", Encoding.UTF8, "application/json")
                };
            }

            //===============================================================================
            User loggedOnUser  = UserManagement.GetInstance.GetUserByLoginName(user.UserName);
            //===============================================================================

            ReturnResponse returnResponse = new ReturnResponse();

            if (loggedOnUser == null || loggedOnUser.UserID.Equals(0))
            {

                
                returnResponse.result = "User not found!";
                returnResponse.status = new ReturnStatus("-1", "User Not Found"); ;

                var formatter = new JsonMediaTypeFormatter();
                var content = new ObjectContent<ReturnResponse>(returnResponse, formatter, "application/json");
                return new HttpResponseMessage(HttpStatusCode.BadRequest) { Content = content };

            }
            else if (Micro.Commons.MicroSecurity.Encrypt(user.UserPassword) != loggedOnUser.Password)
            {

                returnResponse.result = "Incorrect password!";
                returnResponse.status = new ReturnStatus("-2", "Invalid Password!"); ;

                var formatter = new JsonMediaTypeFormatter();
                var content = new ObjectContent<ReturnResponse>(returnResponse, formatter, "application/json");
                return new HttpResponseMessage(HttpStatusCode.BadRequest) { Content = content };

                //var content = new ObjectContent<string>("woof", "text/plain", new[] { new PlainTextFormatter() });  // including formatters here doesn't actually help!
                //var response = new HttpResponseMessage { Content = content };

                //return response;


                //return new HttpResponseMessage(HttpStatusCode.OK)
                //{
                //    Content = new StringContent(JArray.FromObject(returnResponse).ToString(), Encoding.UTF8, "application/json")
                //};

                //HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.BadRequest, "Error message");
                //return response;
            }
            else
            {
                List<User> userList = new List<User>();
                userList.Add(loggedOnUser);


                //ReturnStatus returnStatus = new ReturnStatus();
                //returnStatus.Code = "1";
                //returnStatus.Message = "Success";


                //returnResponse.Result = userList;
                //returnResponse.Status = returnStatus;

                //var formatter = new JsonMediaTypeFormatter();
                //var content = new ObjectContent<ReturnResponse>(returnResponse, formatter, "application/json");
                //return new HttpResponseMessage { Content = content };
                //return new HttpResponseMessage(HttpStatusCode.OK)
                //{
                //    Content = content
                //};

                //return new HttpResponseMessage(HttpStatusCode.OK)
                //{
                //    Content = new StringContent(JArray.FromObject(userList).ToString(), Encoding.UTF8, "application/json")
                //};

                ReturnResponse objReturnResponse = new ReturnResponse
                {
                    result = loggedOnUser,
                    status = new ReturnStatus("1","Success")
                };

                return Request.CreateResponse(HttpStatusCode.OK, objReturnResponse);
            }
        }

        // PUT: api/Users/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Users/5
        public void Delete(int id)
        {
        }
    }
}
