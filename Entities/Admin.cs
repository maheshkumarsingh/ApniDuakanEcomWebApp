﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Admin
    {
        public Int64 AdminID { get; set; }
        public string AdminName { get; set; }

        public string AdminEmailID { get; set; }

        public string AdminPassword { get; set; }
    }
}
