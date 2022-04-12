using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace LogOnService.Controllers
{
    public class LogOnController : ApiController
    {
        [HttpPost]
        [Route("Register")]
        public IHttpActionResult Register(UserDetails request)
        {
            return Ok(true);
        }


        [HttpGet]
        [Route("User")]
        public IHttpActionResult GetUser(string userID)
        {
            return Ok("Hello I am User "+userID);
        }
    }
}
