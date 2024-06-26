﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domains.DTOs
{
    public class CategoryRequest
    {
        public string? Name { get; set; }

        public string? Description { get; set; }

        public string? Note { get; set; }

        public string? Code { get; set; }

        public string? Icon { get; set; }

        public bool? IsDeleted { get; set; }
    }
}
