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
    
    public partial class LIB_Books_SelectAllByCategory_Result
    {
        public long BookID { get; set; }
        public Nullable<int> AccessionNo { get; set; }
        public string BookType { get; set; }
        public Nullable<byte> SegmentCode { get; set; }
        public string ClassNo { get; set; }
        public Nullable<int> AuthorID { get; set; }
        public string AuthorName { get; set; }
        public string Title { get; set; }
        public string Edition { get; set; }
        public Nullable<short> bookYear { get; set; }
        public string VolumeNo { get; set; }
        public Nullable<int> Pages { get; set; }
        public Nullable<int> PublisherID { get; set; }
        public string PublisherName { get; set; }
        public Nullable<int> SupplierID { get; set; }
        public string SupplierName { get; set; }
        public Nullable<decimal> BookPrice { get; set; }
        public string billNo { get; set; }
        public Nullable<System.DateTime> billDate { get; set; }
        public Nullable<int> Category { get; set; }
        public string remarks { get; set; }
        public bool Issued { get; set; }
        public string IBNNo { get; set; }
        public Nullable<System.DateTime> ACCDate { get; set; }
        public Nullable<int> AddedBy { get; set; }
        public Nullable<System.DateTime> AddedDated { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public string VC_Field1 { get; set; }
        public Nullable<int> Nu_Field1 { get; set; }
        public Nullable<System.DateTime> Dt_Field1 { get; set; }
        public bool YN_Field1 { get; set; }
        public string Book_ImageURL_Small { get; set; }
        public string Book_ImageURL_Medium { get; set; }
        public string Book_Image_URL_Big { get; set; }
        public string Book_PDF_URL { get; set; }
        public bool IsDeleted { get; set; }
        public bool IsActive { get; set; }
        public bool IsIssued { get; set; }
        public Nullable<int> Issued2UserID { get; set; }
    }
}
