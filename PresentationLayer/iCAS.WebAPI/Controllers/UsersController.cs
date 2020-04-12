using Micro.BusinessLayer.HumanResource;
using Micro.BusinessLayer.ICAS.ADMIN;
using Micro.Objects.HumanResource;
using Micro.Objects.ICAS.ADMIN;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;

namespace iCAS.WebAPI.Controllers
{

    public class UsersController : ApiController
    {

        [HttpPost]
        [Route("api/user/login")]
        public HttpResponseMessage Login([FromBody] UserLogin user)
        {
            if (user == null || user.UserName == null || user.UserPassword == null)
            {
                return new HttpResponseMessage(HttpStatusCode.OK)
                {
                    Content = new StringContent("Bad Request", Encoding.UTF8, "application/json")
                };
            }

            //===============================================================================
            User loggedOnUser = UserManagement.GetInstance.GetUserByLoginName(user.UserName);
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
                    status = new ReturnStatus("1", "Success")
                };

                return Request.CreateResponse(HttpStatusCode.OK, objReturnResponse);
            }
        }

        [Route("api/user/UploadPhoto/{UserType}/{id}")]
        public async Task<object> Uploadfile(string UserType, int id)
        {
            try
            {
                //if (UserType == "Employee1")
                //{
                //    //HttpPostedFile img = fileUploader.PostedFile;
                //    //byte[] Image = new byte[fileUploader.PostedFile.ContentLength];
                //    //img.InputStream.Read(Image, 0, (int)fileUploader.PostedFile.ContentLength);

                //    byte[] parms = await Request.Content.ReadAsByteArrayAsync();
                //    EmployeeProfile theEmployeeProfile = new EmployeeProfile();
                //    theEmployeeProfile.EmployeeID = id;
                //    theEmployeeProfile.SettingKeyValue = parms;

                //    EmployeeProfileManagement.GetInstance.UpdateEmployeeProfilePhoto(theEmployeeProfile);
                //}
                //else
                //{
                var fileuploadPath = string.Concat(System.Web.Hosting.HostingEnvironment.ApplicationPhysicalPath,
                                                "..\\",
                                                ConfigurationManager.AppSettings["WebAppFolderName"].ToString(),
                                                "\\Themes\\Profiles\\");

                var provider = new MultipartFormDataStreamProvider(fileuploadPath);
                var content = new StreamContent(HttpContext.Current.Request.GetBufferlessInputStream(true));

                //byte[] arr = System.Threading.Tasks.Task
                foreach (var header in Request.Content.Headers)
                {
                    content.Headers.TryAddWithoutValidation(header.Key, header.Value);
                }
                await content.ReadAsMultipartAsync(provider);
                string uploadingFileName = provider.FileData.Select(x => x.LocalFileName).FirstOrDefault();
                string originalFileName = String.Concat(fileuploadPath, "\\", UserType + "_Profile_" + id.ToString(), "_Photo.jpg");
                //string originalFileName = String.Concat(fileuploadPath, "\\" + (provider.Contents[0].Headers.ContentDisposition.FileName).Trim(new Char[] { '"' }));
                var filename = provider.Contents[0].Headers.ContentDisposition.FileName;
                if (File.Exists(originalFileName))
                {
                    File.Delete(originalFileName);
                }
                File.Move(uploadingFileName, originalFileName);
                //}
                return new Response
                {
                    Status = "Updated",
                    Message = "Updated Successfully"
                };
            }
            catch (Exception ex)
            {
                return new Response
                {
                    Status = "Error",
                    Message = "Error"
                };
            }
        }


        [Route("api/user/photo/{UserType}/{id}/{refreshTag}")]
        public HttpResponseMessage GetUserPhoto(string UserType,int id, string refreshTag)
        {
            var filePath = string.Concat(System.Web.Hosting.HostingEnvironment.ApplicationPhysicalPath,
                                                "..\\",
                                                ConfigurationManager.AppSettings["WebAppFolderName"].ToString(),
                                                "\\Themes\\Profiles\\");

            string fileName = String.Concat(filePath, "\\", UserType + "_Profile_" + id.ToString(), "_Photo.jpg");

            MemoryStream ms;
            if (File.Exists(fileName))
            {
                Byte[] b = System.IO.File.ReadAllBytes(fileName);
                ms = new MemoryStream(b);
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
            
        }
    }
}
