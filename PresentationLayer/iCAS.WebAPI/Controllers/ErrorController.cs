using System;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Dispatcher;
using System.Web.Http.Controllers;
using System.Web.Http.ExceptionHandling;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Http.Filters;
using System.Security;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Micro.ErrorLogger;

namespace iCAS.WebAPI.Controllers
{

    public class ErrorController : ApiController
    {
        /// <summary>
        /// Handles all wrong URL requests
        /// </summary>
        /// <returns></returns>
        [HttpGet, HttpPost, HttpPut, HttpDelete, HttpHead, HttpOptions, AcceptVerbs("PATCH")]
        public HttpResponseMessage Handle404()
        {
            string resultFromMethod = string.Empty;
            resultFromMethod = "The requested resource is not found";
            return new HttpResponseMessage()
            {
                Content = new StringContent(resultFromMethod, Encoding.UTF8, "application/json"),
                StatusCode = HttpStatusCode.NotFound
            };
        }
    }
    
    public class HttpNotFoundAwareDefaultHttpControllerSelector : DefaultHttpControllerSelector
    {
        public HttpNotFoundAwareDefaultHttpControllerSelector(HttpConfiguration configuration)
            : base(configuration)
        {
        }
        public override HttpControllerDescriptor SelectController(HttpRequestMessage request)
        {
            HttpControllerDescriptor decriptor = null;
            try
            {
                decriptor = base.SelectController(request);
            }
            catch (HttpResponseException ex)
            {
                var code = ex.Response.StatusCode;
                if (code != HttpStatusCode.NotFound)
                    throw;
                var routeValues = request.GetRouteData().Values;
                routeValues["controller"] = "Error";
                routeValues["action"] = "Handle404";
                decriptor = base.SelectController(request);
            }
            return decriptor;
        }
    }

    public class HttpNotFoundAwareControllerActionSelector : ApiControllerActionSelector
    {
        public HttpNotFoundAwareControllerActionSelector()
        {
        }

        public override HttpActionDescriptor SelectAction(HttpControllerContext controllerContext)
        {
            HttpActionDescriptor decriptor = null;
            try
            {
                decriptor = base.SelectAction(controllerContext);
            }
            catch (HttpResponseException ex)
            {
                var code = ex.Response.StatusCode;
                if (code != HttpStatusCode.NotFound && code != HttpStatusCode.MethodNotAllowed)
                    throw;
                var routeData = controllerContext.RouteData;
                routeData.Values["action"] = "Handle404";
                IHttpController httpController = new ErrorController();
                controllerContext.Controller = httpController;
                controllerContext.ControllerDescriptor = new HttpControllerDescriptor(controllerContext.Configuration, "Error", httpController.GetType());
                decriptor = base.SelectAction(controllerContext);
            }
            return decriptor;
        }
    }

    public class ExceptionHandlingAttribute : ExceptionFilterAttribute
    {
        public override void OnException(HttpActionExecutedContext context)
        {
            //Log Critical errors
            //Debug.WriteLine(context.Exception);

            if (context.Exception is ArgumentNullException ||
                context.Exception is UnauthorizedAccessException ||
                context.Exception is System.IO.FileNotFoundException)
            {
                throw new HttpResponseException(new HttpResponseMessage(HttpStatusCode.InternalServerError)
                {
                    Content = new StringContent(context.Exception.Message),
                    ReasonPhrase = "Exception"
                });

            }
            else
            {
                throw new HttpResponseException(new HttpResponseMessage(HttpStatusCode.InternalServerError)
                {
                    Content = new StringContent("An error occurred, please try again or contact the administrator."),
                    ReasonPhrase = "Critical Exception"
                });
            }
        }
    }

    /*http://www.asp.net/web-api/overview/error-handling/web-api-global-error-handling */


    public class MyExceptionHandler : ExceptionHandler
    {
        public override void Handle(ExceptionHandlerContext context)
        {
            context.Result = new ExceptionResponse
            {
                statusCode = context.Exception is SecurityException ? HttpStatusCode.Unauthorized : HttpStatusCode.InternalServerError,
                message = "An internal exception occurred. We'll take care of it.",
                request = context.Request
            };
        }

        public override bool ShouldHandle(ExceptionHandlerContext context)
        {
            return context.ExceptionContext.CatchBlock.IsTopLevel;
        }

    }

    public class ExceptionResponse : IHttpActionResult
    {
        public HttpStatusCode statusCode { get; set; }
        public string message { get; set; }
        public HttpRequestMessage request { get; set; }

        public Task<HttpResponseMessage> ExecuteAsync(CancellationToken cancellationToken)
        {
            var response = new HttpResponseMessage(statusCode);
            response.RequestMessage = request;
            response.Content = new StringContent(message);
            response.ReasonPhrase = "Critical Exception";
            return Task.FromResult(response);
        }
    }



    /// Defines a global logger for unhandled exceptions.
    public class MyExceptionLogger : ExceptionLogger
    {
        /// Writes log record to the database synchronously.
        public override void Log(ExceptionLoggerContext context)
        {
            try
            {
                
                var request = context.Request;
                var exception = context.Exception;

                //var id = LogError(
                //  request.RequestUri.ToString(),
                //  context.RequestContext == null ?
                //    null : context.RequestContext.Principal.Identity.Name,
                //  request.ToString(),
                //  exception.Message,
                //  exception.StackTrace);

                //// associates retrieved error ID with the current exception
                //exception.Data["NesterovskyBros:id"] = id;
                LogError(exception);
            }
            catch (Exception ex)
            {
                string s = ex.Message;
                // logger shouldn't throw an exception!!!
            }
        }

        private void LogError (Exception ex )
        {
            ErrorLog.CreateLog(ex);
        }

        private long LogError(
          string address,
          string userid,
          string request,
          string message,
          string stackTrace)
        {
            Int64 ErrorId = default(Int64);

            //SqlParameter[] spParams = new SqlParameter[6];

            //spParams[0] = new SqlParameter("@ApplicationName", SqlDbType.VarChar, 20);
            //spParams[0].Value = "S2ANJLS";

            //spParams[1] = new SqlParameter("@Message", SqlDbType.VarChar, 2038);
            //spParams[1].Value = message;

            //spParams[2] = new SqlParameter("@Source", SqlDbType.VarChar, 255);
            //spParams[2].Value = request;

            //spParams[3] = new SqlParameter("@Severity", SqlDbType.Int);
            //spParams[3].Value = 1;

            //spParams[4] = new SqlParameter("@Priority", SqlDbType.Int);
            //spParams[4].Value = 1;

            //spParams[5] = new SqlParameter("@CreatedBy", SqlDbType.VarChar, 30);
            //spParams[5].Value = "S2ANJLS";

            //DataHandler.BuildParamList(spParams, false);
            //using (SqlConnection connection = NewConnection())
            //{
            //    ErrorId = SSA.S2ANJLS.DataAccess.SqlHelper.ExecuteNonQuery(connection, CommandType.StoredProcedure, "InsertErrorLog", spParams);
            //}
            
            return ErrorId;
        }


        private SqlConnection NewConnection()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString);
        }

    }

}
