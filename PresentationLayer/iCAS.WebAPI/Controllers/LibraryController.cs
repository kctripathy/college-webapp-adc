using Micro.BusinessLayer.ICAS.LIBRARY;
using Micro.Objects.ICAS.LIBRARY;
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
    public class LibraryController : ApiController
    {

        public HttpResponseMessage Get()
        {
            List<Book> BookList = LibraryManagement.GetInstance.GetBooksList();
            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JArray.FromObject(BookList).ToString(), Encoding.UTF8, "application/json")
            };
        }

        
        // GET: api/Library
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "value1", "value2" };
        //}

        // GET: api/Library/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Library
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Library/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Library/5
        public void Delete(int id)
        {
        }
    }
}
