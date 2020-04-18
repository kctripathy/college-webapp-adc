﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;

namespace Micro.Objects.ICAS.ESTBLMT
{
    [Serializable]
    public class Establishment
    {
        public int EstbID
        {
            get;
            set;
        }
        public string EstbCode
        {
            get;
            set;
        }
        public string EstbTypeCode
        {
            get;

            set;

        }

        public string EstbTypeCodeDesc
        {
            get
            {
                string _typeCodeDesc = string.Empty;
                if (this.EstbTypeCode.Equals("N"))
                {
                    _typeCodeDesc = "Notice";
                }
                else if (this.EstbTypeCode.Equals("T"))
                {
                    _typeCodeDesc = "Tender";
                }
                else if (this.EstbTypeCode.Equals("M"))
                {
                    _typeCodeDesc = "Media Release";
                }
                else if (this.EstbTypeCode.Equals("C"))
                {
                    _typeCodeDesc = "Circular";
                }
                else if (this.EstbTypeCode.Equals("S"))
                {
                    _typeCodeDesc = "Syllabus";
                }
                else if (this.EstbTypeCode.Equals("R"))
                {
                    _typeCodeDesc = "Recent Activity";
                }
                else if (this.EstbTypeCode.Equals("1") || this.EstbTypeCode.Equals("PAC"))
                {
                    _typeCodeDesc = "Article/Column";
                }
                else if (this.EstbTypeCode.Equals("2") || this.EstbTypeCode.Equals("PPP"))
                {
                    _typeCodeDesc = "Project Paper";
                }
                else if (this.EstbTypeCode.Equals("3") || this.EstbTypeCode.Equals("PBP") )
                {
                    _typeCodeDesc = "Book/Proceeding";
                }
                else if (this.EstbTypeCode.Equals("4"))
                {
                    _typeCodeDesc = "Award/Achievment";
                }
                else if (this.EstbTypeCode.Equals("5") || this.EstbTypeCode.Equals("PSP"))
                {
                    _typeCodeDesc = "Seminar Paper";
                }
                else if (this.EstbTypeCode.Equals("6") || this.EstbTypeCode.Equals("PSM"))
                {
                    _typeCodeDesc = "Study Material";
                }
                else if (this.EstbTypeCode.Equals("7") || this.EstbTypeCode.Equals("LNK"))
                {
                    _typeCodeDesc = "Hyperlink";
                }
                else if (this.EstbTypeCode.Equals("8"))
                {
                    _typeCodeDesc = "Profile";
                }
                else if (this.EstbTypeCode.Equals("9"))
                {
                    _typeCodeDesc = "Downloadable";
                }
                else if (this.EstbTypeCode.Equals("IMG") || this.EstbTypeCode.Equals("GIM"))
                {
                    _typeCodeDesc = "Photo";
                }
                else if (this.EstbTypeCode.Equals("VDO") || this.EstbTypeCode.Equals("GVD"))
                {
                    _typeCodeDesc = "Video";
                }
                else if (this.EstbTypeCode.Equals("MoM"))
                {
                    _typeCodeDesc = "Minute of Meeting";
                }
                else if (this.EstbTypeCode.Equals("RAA"))
                {
                    _typeCodeDesc = "Academic Activity";
                }
                else if (this.EstbTypeCode.Equals("RSA"))
                {
                    _typeCodeDesc = "Sports Activity";
                }
                else if (this.EstbTypeCode.Equals("RSO"))
                {
                    _typeCodeDesc = "Social Activity";
                }
                else if (this.EstbTypeCode.Equals("RCA"))
                {
                    _typeCodeDesc = "Cultural Activity";
                }
                else if (this.EstbTypeCode.Equals("RYA"))
                {
                    _typeCodeDesc = "YRC Activity";
                }
                else if (this.EstbTypeCode.Equals("RRA"))
                {
                    _typeCodeDesc = "RRC Activity";
                }
                else if (this.EstbTypeCode.Equals("RNA"))
                {
                    _typeCodeDesc = "NSS Activity";
                }
                else if (this.EstbTypeCode.Equals("RSG"))
                {
                    _typeCodeDesc = "Scout & Guide Activity";
                }
                else if (this.EstbTypeCode.Equals("ROA"))
                {
                    _typeCodeDesc = "Other Activity";
                }
                return _typeCodeDesc;
            }
        }

        public string EstbTitle
        {
            get;
            set;

        }

        public int EstbTitletZoneMaxLengh
        {
            get
            {
                //return 25;
                return int.Parse(ConfigurationManager.AppSettings["EstbTitletZoneMaxLengh"].ToString());
            }
        }
        public string EstbTitleZone
        {
            get
            {
                if (EstbTitle.Length > EstbTitletZoneMaxLengh)
                {
                    return string.Concat(CommonFunctions.StringSplit(EstbTitle, EstbTitletZoneMaxLengh).ToString(), "...");
                }
                else
                {
                    return EstbTitle;
                }
            }

        }
        //public string EstbTitleZone
        //{
        //    get
        //    {
        //        if (EstbTitle.Length > EstbTitletZoneMaxLengh)
        //        {
        //            return string.Concat(EstbTitle.ToString().Substring(0, EstbTitletZoneMaxLengh), "...");
        //        }
        //        else
        //        {
        //            return EstbTitle;
        //        }
        //    }

        //}
        public string EstbDescription
        {
            get;
            set;
        }
        public DateTime EstbDate
        {
            get;
            set;
        }
        public string EstbMessage
        {
            get;
            set;
        }
        public byte[] EstbUploadFile
        {
            set;
            get;
        }

        public string EstbUploadFileType
        {
            get;
            set;
        }
        public DateTime EstbViewStartDate
        {
            get;
            set;
        }

        public DateTime EstbViewEndDate
        {
            get;
            set;
        }
        public string EstbStatusFlag
        {
            get;
            set;
        }

        public string EstbStatusFlagDesc
        {
            get
            {
                string _desc = string.Empty;
                if (this.EstbStatusFlag.Equals("A"))
                {
                    _desc = "Approved";
                }
                else if (this.EstbStatusFlag.Equals("P"))
                {
                    _desc = "Pending";
                }
                else if (this.EstbStatusFlag.Equals("R"))
                {
                    _desc = "Rejected";
                }
                return _desc;
            }
        }
        public bool IsActive
        {
            get;
            set;
        }
        public bool IsDeleted
        {
            get;
            set;
        }
        public int AddedBy
        {
            get;
            set;

        }

        public int ModifiedBy
        {
            get;
            set;
        }

        public string DateAdded
        {
            get;
            set;
        }

        public string DateModified
        {
            get;
            set;

        }
        public int OfficeID
        {
            get;
            set;

        }
        public int CompanyID
        {
            get;
            set;
        }
        public string FileNameWithPath
        {
            get;
            set;

        }
        public string AuthorOrContributorName
        {
            get;
            set;

        }
    }

    [Serializable]
    public class EstablishmentType
    {
        public int EstbTypeID
        {
            get;
            set;
        }
        public string EstbTypeCode
        {
            get;
            set;
        }
        public string EstbTypeCodeDescription
        {
            get;

            set;

        }

        public int TotalRecords
        {
            get
            {
              return 0; // SELECT COUNT(*) FROM 
            }
        }
    }
    
    public class Establishments
    {
        public string EstbIDs { get; set; }
        public string Operation { get; set; }
        public int OperationByUserID { get; set; }
    }
    
}
