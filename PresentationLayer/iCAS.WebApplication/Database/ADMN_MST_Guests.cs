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
    
    public partial class ADMN_MST_Guests
    {
        public int GuestID { get; set; }
        public string GuestCode { get; set; }
        public string Salutation { get; set; }
        public string GuestName { get; set; }
        public Nullable<int> Age { get; set; }
        public string Gender { get; set; }
        public string Address_Present_TownOrCity { get; set; }
        public string Address_Present_Landmark { get; set; }
        public string Address_Present_PinCode { get; set; }
        public Nullable<int> Address_Present_DistrictID { get; set; }
        public string PhoneNumber { get; set; }
        public string MobileNumber { get; set; }
        public string OfficialEMailID { get; set; }
        public string PersonalEMailID { get; set; }
        public Nullable<System.DateTime> EffectiveDateFrom { get; set; }
        public Nullable<System.DateTime> EffectiveDateTo { get; set; }
        public Nullable<int> OfficeID { get; set; }
        public string Remarks { get; set; }
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
