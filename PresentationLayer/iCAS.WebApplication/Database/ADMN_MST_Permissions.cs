//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TCon.iCAS.WebApplication.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class ADMN_MST_Permissions
    {
        public int PermissionID { get; set; }
        public string PermissionDescription { get; set; }
        public string BriefDescription { get; set; }
        public string ForFormOrMenu { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
        public Nullable<System.DateTime> DateAdded { get; set; }
        public Nullable<int> AddedBy { get; set; }
        public Nullable<System.DateTime> DateModified { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public string VC_FIELD1 { get; set; }
        public string VC_FIELD2 { get; set; }
        public Nullable<int> NU_FIELD1 { get; set; }
        public Nullable<int> NU_FIELD2 { get; set; }
        public Nullable<System.DateTime> DT_FIELD1 { get; set; }
        public Nullable<System.DateTime> DT_FIELD2 { get; set; }
        public string CH_FIELD1 { get; set; }
        public string CH_FIELD2 { get; set; }
        public Nullable<int> CompanyID { get; set; }
    }
}
