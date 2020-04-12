using Micro.BusinessLayer.HumanResource;
using Micro.BusinessLayer.ICAS.STAFFS;
using Micro.Objects.HumanResource;
using Micro.Objects.ICAS.ADMIN;
using Micro.Objects.ICAS.STAFFS;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
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

        [HttpPost]
        [Route("api/staff/update")]
        public HttpResponseMessage UpdateEmployeeInfo([FromBody] EmployeeInfo employee)
        {
            //UpdateEmployeeInfo
            int successFlag = EmployeeManagement.GetInstance.UpdateEmployeeInfo(employee);

            ReturnResponse objReturnResponse = new ReturnResponse
            {
                result = (successFlag>0? "Successfully updated the profile": "Failed to update"),
                status = new ReturnStatus(successFlag.ToString(), (successFlag>0? "Success": "Failure"))
            };

            return Request.CreateResponse(HttpStatusCode.OK, objReturnResponse);
        }

        //[Route("api/staff/Uploadfile/{UserType}/{id}")]
        //public async Task<object> Uploadfile(string UserType, int id)
        //{
        //    try
        //    {
        //        var fileuploadPath = "P:\\";
        //        var provider = new MultipartFormDataStreamProvider(fileuploadPath);
        //        var content = new StreamContent(HttpContext.Current.Request.GetBufferlessInputStream(true));
        //        foreach (var header in Request.Content.Headers)
        //        {
        //            content.Headers.TryAddWithoutValidation(header.Key, header.Value);
        //        }
        //        await content.ReadAsMultipartAsync(provider);
        //        string uploadingFileName = provider.FileData.Select(x => x.LocalFileName).FirstOrDefault();
        //        string originalFileName = String.Concat(fileuploadPath, "\\" + (provider.Contents[0].Headers.ContentDisposition.FileName).Trim(new Char[] { '"' }));
        //        var filename = provider.Contents[0].Headers.ContentDisposition.FileName;
        //        if (File.Exists(originalFileName))
        //        {
        //            File.Delete(originalFileName);
        //        }
        //        File.Move(uploadingFileName, originalFileName);
        //        //Stotefile sf = new Stotefile();
        //        //sf.File = filename;
        //        //DB.Stotefiles.Add(sf);
        //        //DB.SaveChanges();
        //        return new Response
        //        {
        //            Status = "Updated",
        //            Message = "Updated Successfully"
        //        };
        //    }
        //    catch (Exception ex)
        //    {
        //        return new Response
        //        {
        //            Status = "Error",
        //            Message = "Error"
        //        };
        //    }
        //}
    }
}
