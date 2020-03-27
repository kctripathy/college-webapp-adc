using System;
using System.Reflection;

namespace Micro.Objects.ICAS.STUDENT
{
    
    [Serializable]
    public class Student
    {

        public int StudentID
        {
            get;
            set;
        }

        public string RegistrationNumber
        {
            get;
            set;
        }
        public string StudentCode
        {
            get;
            set;
        }
        public string MRINO
        {
            get;
            set;
        }
        public string ReceiptNo
        {
            get;
            set;
        }
        public string TCNo
        {
            get;
            set;
        }
        public string RollNo
        {
            get;
            set;
        }
        public int ClassID
        {
            get;
            set;
        }
        public string ClassName
        {
            get
            {
                return GetClassName(this.ClassID);
            }
        }
        public int QualID
        {
            get;
            set;
        }
        public int StreamID
        {
            get;
            set;
        }
        public string Salutation
        {
            get;
            set;
        }
		public string StudentName
		{
			get;
			set;
		}


		public string StudentRollNoName
		{
			get
			{
				int padLength = (31 - this.RollNo.Length);
				return String.Format("{0}{1} {2}", "", this.RollNo.ToUpper().PadRight(padLength, '\u00A0'), this.StudentName.ToUpper());
			}
		}
		public string StudentNameRollNo
		{
			get
			{
				int padLength = (50 - this.StudentName.Length);
				return String.Format("{0}{1} {2}", "", this.StudentName.ToUpper().PadRight(padLength, '\u00A0'), this.RollNo);
			}
		}
        public string FatherName
        {
            get;
            set;
        }
        public string MotherName
        {
            get;
            set;
        }
        public string Gender
        {
            get;
            set;
        }
        public string Caste
        {
            get;
            set;
        }
        public string PHStatus
        {
            get;
            set;
        }
        public string Status
        {
            get;
            set;
        }
        public string BloodGroup
        {
            get;
            set;
        }
        public string TotalFeesPaid
        {
            get;
            set;
        }
        public string DateOfBirth
        {
            get;
            set;
        }
        public string DateOfAdmission
        {
            get;
            set;
        }
        public string DateOfLeaving
        {
            get;
            set;
        }
        public int Age
        {
            get;
            set;
        }
        public string Address_Present_TownOrCity
        {
            get;
            set;
        }
        public string Address_Present_Landmark
        {
            get;
            set;
        }
        public string Address_Present_PinCode
        {
            get;
            set;
        }
        public int Address_Present_DistrictID
        {
            get;
            set;
        }
        public string Address_Present_DistrictName
        {
            get;
            set;
        }

        public int Address_Present_StateID
        {
            get;
            set;
        }

        public string Address_Present_StateName
        {
            get;
            set;
        }

        public int Address_Present_CountryID
        {
            get;
            set;
        }

        public string Address_Present_CountryName
        {
            get;
            set;
        }

        public string Address_Permanent_TownOrCity
        {
            get;
            set;
        }
   
        public string Address_Permanent_Landmark
        {
            get;
            set;
        }
     
        public string Address_Permanent_PinCode
        {
            get;
            set;
        }
     
        public int Address_Permanent_DistrictID
        {
            get;
            set;
        }

        public string Address_Permanent_DistrictName
        {
            get;
            set;
        }

        public int Address_Permanent_StateID
        {
            get;
            set;
        }

        public string Address_Permanent_StateName
        {
            get;
            set;
        }

        public int Address_Permanent_CountryID
        {
            get;
            set;
        }

        public string Address_Permanent_CountryName
        {
            get;
            set;
        }

        public string PhoneNumber
        {
            get;
            set;
        }
     
        public string Mobile
        {
            get;
            set;
        }
        public string EMailID
        {
            get;
            set;
        }

        public int SessionID
        {
            get;
            set;
        }
        //Student Account Pass Varibles
        public string AccountIDs
        {
            get;
            set;
        }

        public string AccountCodes
        {
            get;
            set;
        }

        public string AccountNames
        {
            get;
            set;
        }

        public string AccountFees
        {
            get;
            set;
        }

        public string BalanceTypes
        {
            get;
            set;
        }
        public string Narations
        {
            get;
            set;
        }



        public string AlumniFlag
        {
            get;
            set;
        }


        public int OfficeID
        {
            get;
            set;
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
        public int CompanyID
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
        public string LifeMemberStatus
        {
            get;
            set;
        }
        public int AlumniMembershipFeesPaid
        {
            get;
            set;
        }
        public string AlumniMembershipFeesPaidDetails
        {
            get;
            set;
        }
        public string AlumniPresentOccupation
        {
            get;
            set;
        }
        public string AlumniYearOfPassing
        {
            get;
            set;
        }
        public static PropertyInfo[] GetProperties(object obj)
        {
            return obj.GetType().GetProperties();
        }

        private static string GetClassName(int classid)
        {

            string class_name = string.Empty;
            switch (classid)
            {
                case 9: class_name = "+2 FIRST YEAR ARTS"; break;
                case 2: class_name = "+2 FIRST YEAR SCIENCE"; break;
                case 10: class_name = "+2 SECOND YEAR ARTS"; break;
                case 3: class_name = "+2 SECOND YEAR SCIENCE"; break;
                case 12: class_name = "+3 FIRST YEAR ARTS"; break;
                case 5: class_name = "+3 FIRST YEAR SCIENCE"; break;
                case 13: class_name = "+3 SECOND YEAR ARTS"; break;
                case 6: class_name = "+3 SECOND YEAR SCIENCE"; break;
                case 14: class_name = "+3 THIRD YEAR ARTS"; break;
                case 7: class_name = "+3 THIRD YEAR SCIENCE"; break;
            }

            //return string.Format("Class {0}", classid);
            return class_name;
        }
    }  
} 
