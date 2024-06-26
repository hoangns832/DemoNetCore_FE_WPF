﻿using System;
using System.Collections.Generic;

namespace Model.Models
{
    public partial class VoucherSeafood
    {
        public Guid Id { get; set; }
        public string Title { get; set; } = null!;
        public int TypeVoucher { get; set; }
        public int ReductionAmount { get; set; }
        public string Code { get; set; } = null!;
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
        public int? ConditionsApply { get; set; }
        public string? Note { get; set; }
        public bool IsDeleted { get; set; }
        public DateTime? DeletedAt { get; set; }
        public string? DeletedBy { get; set; }
        public DateTime CreatedAt { get; set; }
        public string CreatedBy { get; set; } = null!;
        public DateTime? UpdatedAt { get; set; }
        public string? UpdatedBy { get; set; }
    }
}
