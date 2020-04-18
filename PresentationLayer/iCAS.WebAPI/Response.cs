using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Text;
using System.Web;

namespace iCAS.WebAPI
{
    public class Response
    {
        public string Code { get; set; }
        public string Status { get; set; }
        public string Message { get; set; }
    }

    public class ReturnResponse
    {
        public object result { get; set; }
        public ReturnStatus status { get; set; }
    }

    public class ReturnStatus
    {
        public string code { get; set; }
        public string message { get; set; }

        public ReturnStatus(string code, string messsage)
        {
            this.code = code;
            this.message = messsage;

        }
    }

    public class ResponseMessage
    {

        public HttpResponseMessage ReturnHttpResponseMessage(bool isSuccess, string code, string message)
        {
            
            ReturnResponse returnResponse = new ReturnResponse();
            returnResponse.result = message;
            returnResponse.status = new ReturnStatus(code, (isSuccess ? "SUCCESS" : "FAILURE"));

            var formatter = new JsonMediaTypeFormatter();
            var content = new ObjectContent<ReturnResponse>(returnResponse, formatter, "application/json");

            if (isSuccess)
                return new HttpResponseMessage(HttpStatusCode.OK) { Content = content };
            else
                return new HttpResponseMessage(HttpStatusCode.BadRequest) { Content = content };

        }

        public HttpResponseMessage ReturnHttpResponseMessage(bool isSuccess, int code, string message)
        {

            ReturnResponse returnResponse = new ReturnResponse();
            returnResponse.result = message;
            returnResponse.status = new ReturnStatus(code.ToString(), (isSuccess ? "SUCCESS" : "FAILURE"));

            var formatter = new JsonMediaTypeFormatter();
            var content = new ObjectContent<ReturnResponse>(returnResponse, formatter, "application/json");

            if (isSuccess)
                return new HttpResponseMessage(HttpStatusCode.OK) { Content = content };
            else
                return new HttpResponseMessage(HttpStatusCode.BadRequest) { Content = content };

        }
        public HttpResponseMessage ReturnHttpResponseMessage(object theList)
        {
            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JArray.FromObject(theList).ToString(), Encoding.UTF8, "application/json")
            };
        }
    }

}