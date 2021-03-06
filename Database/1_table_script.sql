use adc_jnprasad
go

ALTER TABLE [dbo].[LIB_Book_TransactionDetails] DROP CONSTRAINT [FK_LIB_Book_TransactionDetails_LIB_Book_TransactionDetails1]
GO
ALTER TABLE [dbo].[LIB_Book_TransactionDetails] DROP CONSTRAINT [FK_LIB_Book_TransactionDetails_LIB_Book_TransactionDetails]
GO
--ALTER TABLE [dbo].[LIB_Transactions] DROP CONSTRAINT [DF__LIB_Trans__Trans__6F16424E]
--GO
--ALTER TABLE [dbo].[iCAS_TRANSACTIONS] DROP CONSTRAINT [DF__iCAS_TRAN__TRAN___58F12BAE]
--GO
ALTER TABLE [dbo].[iCAS_StudentSubjectsRegistered] DROP CONSTRAINT [DF_iCAS_StudentSubjectsRegistered_DateAdded]
GO
ALTER TABLE [dbo].[iCAS_StudentSubjectsRegistered] DROP CONSTRAINT [DF_iCAS_StudentSubjectsRegistered_IsDeleted]
GO
ALTER TABLE [dbo].[iCAS_StudentSubjectsRegistered] DROP CONSTRAINT [DF_iCAS_StudentSubjectsRegistered_IsActive]
GO
--ALTER TABLE [dbo].[iCAS_Student_SectionRegister] DROP CONSTRAINT [DF__iCAS_Stud__IsAct__4B973090]
--GO
ALTER TABLE [dbo].[iCAS_Student_SectionGrouping] DROP CONSTRAINT [DF_iCAS_Student_SectionGrouping_DateAdded]
GO
ALTER TABLE [dbo].[iCAS_Student_SectionGrouping] DROP CONSTRAINT [DF_iCAS_Student_SectionGrouping_IsDeleted]
GO
ALTER TABLE [dbo].[iCAS_Student_SectionGrouping] DROP CONSTRAINT [DF_iCAS_Student_SectionGrouping_IsActive]
GO
ALTER TABLE [dbo].[iCAS_Student_DailyAttendance] DROP CONSTRAINT [DF_iCAS_Student_DailyAttendance_DateAdded]
GO
ALTER TABLE [dbo].[iCAS_Student_DailyAttendance] DROP CONSTRAINT [DF_iCAS_Student_DailyAttendance_IsDeleted]
GO
ALTER TABLE [dbo].[iCAS_Student_DailyAttendance] DROP CONSTRAINT [DF_iCAS_Student_DailyAttendance_IsActive]
GO
ALTER TABLE [dbo].[iCAS_FINA_TRN_Transactions] DROP CONSTRAINT [DF_iCASFINA_TRN_Transactions_DateAdded_1]
GO
ALTER TABLE [dbo].[iCAS_FINA_TRN_Transactions] DROP CONSTRAINT [DF_iCASFINA_TRN_Transactions_IsDeleted_1]
GO
ALTER TABLE [dbo].[iCAS_FINA_TRN_Transactions] DROP CONSTRAINT [DF_iCASFINA_TRN_Transactions_IsActive_1]
GO
ALTER TABLE [dbo].[iCAS_FINA_Accounts] DROP CONSTRAINT [iCAS_FINA_MST_Accounts_DateAdded_1]
GO
ALTER TABLE [dbo].[iCAS_FINA_Accounts] DROP CONSTRAINT [iCAS_FINA_MST_Accounts_IsDeleted_1]
GO
ALTER TABLE [dbo].[iCAS_FINA_Accounts] DROP CONSTRAINT [iCAS_FINA_MST_Accounts_IsActive_1]
GO
ALTER TABLE [dbo].[iCAS_FINA_Accounts] DROP CONSTRAINT [iCAS_FINA_MST_Accounts_IsPrimary]
GO
ALTER TABLE [dbo].[HRMS_TRN_TransactionPasswords] DROP CONSTRAINT [DF_HRMS_TRN_TransactionPasswords_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_TRN_TransactionPasswords] DROP CONSTRAINT [DF_HRMS_TRN_TransactionPasswords_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_TRN_TransactionPasswords] DROP CONSTRAINT [DF_HRMS_TRN_TransactionPasswords_IsActive]
GO
ALTER TABLE [dbo].[HRMS_TRN_TourApplications] DROP CONSTRAINT [DF_HRMS_TRN_TourApplications_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_TRN_TourApplications] DROP CONSTRAINT [DF_HRMS_TRN_TourApplications_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_TRN_TourApplications] DROP CONSTRAINT [DF_HRMS_TRN_TourApplications_IsActive]
GO
ALTER TABLE [dbo].[HRMS_TRN_TourApplications] DROP CONSTRAINT [DF_HRMS_TRN_TourApplications_Status]
GO
ALTER TABLE [dbo].[HRMS_TRN_StaffLIC_InstalMentReceive] DROP CONSTRAINT [DF_HRMS_TRN_StaffLIC_InstalMentReceive_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_TRN_StaffLIC_InstalMentReceive] DROP CONSTRAINT [DF_HRMS_TRN_StaffLIC_InstalMentReceive_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_TRN_StaffLIC_InstalMentReceive] DROP CONSTRAINT [DF_HRMS_TRN_StaffLIC_InstalMentReceive_IsActive]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeOfficeAccesses] DROP CONSTRAINT [DF_HRMS_TRN_EmployeeOfficeAccesses_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeOfficeAccesses] DROP CONSTRAINT [DF_HRMS_TRN_EmployeeOfficeAccesses_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeOfficeAccesses] DROP CONSTRAINT [DF_HRMS_TRN_EmployeeOfficeAccesses_IsActive]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeLoanReceipts] DROP CONSTRAINT [DF_HRMS_TRN_EmployeeLoanReceipts_AddedBy]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeLoanReceipts] DROP CONSTRAINT [DF_HRMS_TRN_EmployeeLoanReceipts_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeLoanReceipts] DROP CONSTRAINT [DF_HRMS_TRN_EmployeeLoanReceipts_IsCancelled]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeLoanReceipts] DROP CONSTRAINT [DF_HRMS_TRN_EmployeeLoanReceipts_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeLoanReceipts] DROP CONSTRAINT [DF_HRMS_TRN_EmployeeLoanReceipts_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_Settings] DROP CONSTRAINT [DF_HRMS_MST_Settings_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_Settings] DROP CONSTRAINT [DF_HRMS_MST_Settings_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_Settings] DROP CONSTRAINT [DF_HRMS_MST_Settings_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_RequestTypes] DROP CONSTRAINT [DF_MICRO_RequestType_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_RequestTypes] DROP CONSTRAINT [DF_MICRO_RequestType_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_RequestTypes] DROP CONSTRAINT [DF_MICRO_RequestType_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_PolicyTypes] DROP CONSTRAINT [DF_HRMS_MST_PolicyTypes_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_PolicyTypes] DROP CONSTRAINT [DF_HRMS_MST_PolicyTypes_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_PolicyTypes] DROP CONSTRAINT [DF_HRMS_MST_PolicyTypes_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_PayStructures] DROP CONSTRAINT [DF_HRMS_MST_PayStructures_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_PayStructures] DROP CONSTRAINT [DF_HRMS_MST_PayStructures_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_PayStructures] DROP CONSTRAINT [DF_HRMS_MST_PayStructures_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_PayRolls] DROP CONSTRAINT [DF_HRMS_MST_PayRolls_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_PayRolls] DROP CONSTRAINT [DF_HRMS_MST_PayRolls_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_PayRolls] DROP CONSTRAINT [DF_HRMS_MST_PayRolls_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_PayRoll] DROP CONSTRAINT [DF_HRMS_MST_PayRoll_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_PayRoll] DROP CONSTRAINT [DF_HRMS_MST_PayRoll_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_PayRoll] DROP CONSTRAINT [DF_HRMS_MST_PayRoll_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_PayGrades] DROP CONSTRAINT [DF_HRMS_MST_PayGrades_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_PayGrades] DROP CONSTRAINT [DF_HRMS_MST_PayGrades_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_PayGrades] DROP CONSTRAINT [DF_HRMS_MST_PayGrades_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_PayCategories] DROP CONSTRAINT [DF_HRMS_MST_PayCategory_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_PayCategories] DROP CONSTRAINT [DF_HRMS_MST_PayCategory_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_PayCategories] DROP CONSTRAINT [DF_HRMS_MST_PayCategory_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_OfficeTimings] DROP CONSTRAINT [DF_HRMS_MST_OfficeTimings_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_OfficeTimings] DROP CONSTRAINT [DF_HRMS_MST_OfficeTimings_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_OfficeTimings] DROP CONSTRAINT [DF_HRMS_MST_OfficeTimings_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_OfficeTimings] DROP CONSTRAINT [DF_HRMS_MST_OfficeTimings_OnlyForThisOffice]
GO
ALTER TABLE [dbo].[HRMS_MST_OfficeTimings] DROP CONSTRAINT [DF_HRMS_MST_OfficeTimings_ForAll]
GO
ALTER TABLE [dbo].[HRMS_MST_LeaveTypes_Officewise] DROP CONSTRAINT [DF_HRMS_MST_LeaveTypes_Officewise_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_LeaveTypes_Officewise] DROP CONSTRAINT [DF_HRMS_MST_LeaveTypes_Officewise_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_LeaveTypes_Officewise] DROP CONSTRAINT [DF_HRMS_MST_LeaveTypes_Officewise_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_Events] DROP CONSTRAINT [DF_MICRO_Events_AddedBy]
GO
ALTER TABLE [dbo].[HRMS_MST_Events] DROP CONSTRAINT [DF_MICRO_Events_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_Events] DROP CONSTRAINT [DF_MICRO_Events_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_Events] DROP CONSTRAINT [DF_MICRO_Events_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeesPayComponents] DROP CONSTRAINT [DF_HRMS_MST_EmployeesPayComponents_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeesPayComponents] DROP CONSTRAINT [DF_HRMS_MST_EmployeesPayComponents_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeeFingerPrints] DROP CONSTRAINT [DF_HRMS_MST_EmployeeFingerPrints_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeeFingerPrints] DROP CONSTRAINT [DF_HRMS_MST_EmployeeFingerPrints_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeeFingerPrints] DROP CONSTRAINT [DF_HRMS_MST_EmployeeFingerPrints_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeeBankAccounts] DROP CONSTRAINT [DF_HRMS_MST_EmployeeBankAccounts_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeeBankAccounts] DROP CONSTRAINT [DF_HRMS_MST_EmployeeBankAccounts_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeeBankAccounts] DROP CONSTRAINT [DF_HRMS_MST_EmployeeBankAccounts_IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_DesignationOfficewiseTimings] DROP CONSTRAINT [DF_HRMS_MST_DesignationOfficewiseTimings_DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_DesignationOfficewiseTimings] DROP CONSTRAINT [DF_HRMS_MST_DesignationOfficewiseTimings_IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_DesignationOfficewiseTimings] DROP CONSTRAINT [DF_HRMS_MST_DesignationOfficewiseTimings_IsActive]
GO
ALTER TABLE [dbo].[FINA_TRN_Vouchers] DROP CONSTRAINT [DF_FINA_TRN_Vouchers_DateAdded]
GO
ALTER TABLE [dbo].[FINA_TRN_Vouchers] DROP CONSTRAINT [DF_FINA_TRN_Vouchers_IsDeleted]
GO
ALTER TABLE [dbo].[FINA_TRN_Vouchers] DROP CONSTRAINT [DF_FINA_TRN_Vouchers_IsActive]
GO
ALTER TABLE [dbo].[FINA_TRN_Vouchers] DROP CONSTRAINT [DF_FINA_TRN_Vouchers_IsActive1]
GO
ALTER TABLE [dbo].[FINA_TRN_VoucherDetails] DROP CONSTRAINT [DF_FINA_TRN_VoucherDetails_DateAdded]
GO
ALTER TABLE [dbo].[FINA_TRN_VoucherDetails] DROP CONSTRAINT [DF_FINA_TRN_VoucherDetails_IsDeleted]
GO
ALTER TABLE [dbo].[FINA_TRN_VoucherDetails] DROP CONSTRAINT [DF_FINA_TRN_VoucherDetails_IsActive]
GO
ALTER TABLE [dbo].[FINA_TRN_Remittances] DROP CONSTRAINT [DF_FINA_TRN_Remittances_DateAdded]
GO
ALTER TABLE [dbo].[FINA_TRN_Remittances] DROP CONSTRAINT [DF_FINA_TRN_Remittances_IsDeleted]
GO
ALTER TABLE [dbo].[FINA_TRN_Remittances] DROP CONSTRAINT [DF_FINA_TRN_Remittances_IsActive]
GO
ALTER TABLE [dbo].[FINA_TRN_Remittances] DROP CONSTRAINT [DF_FINA_TRN_Remittances_ReceiptStatus]
GO
ALTER TABLE [dbo].[FINA_MST_ACCOUNTLEDGERS] DROP CONSTRAINT [DF_FINA_MST_Accounts_DateAdded]
GO
ALTER TABLE [dbo].[FINA_MST_ACCOUNTLEDGERS] DROP CONSTRAINT [DF_FINA_MST_Accounts_IsDeleted]
GO
ALTER TABLE [dbo].[FINA_MST_ACCOUNTLEDGERS] DROP CONSTRAINT [DF_FINA_MST_Accounts_IsActive]
GO
ALTER TABLE [dbo].[FINA_MST_ACCOUNTLEDGERS] DROP CONSTRAINT [DF_FINA_MST_AccountLedgers_IsUserDefined]
GO
ALTER TABLE [dbo].[FINA_MST_ACCOUNTLEDGERS] DROP CONSTRAINT [DF_FINA_MST_AccountLedgers_IsPrimary]
GO
ALTER TABLE [dbo].[FINA_DT_TRANSACTIONS] DROP CONSTRAINT [DF_FINA_DT_TRANSACTIONS_IsPosted]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] DROP CONSTRAINT [DF_CRM_MST_FieldForces_DateAdded]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] DROP CONSTRAINT [DF_CRM_MST_FieldForces_IsDeleted]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] DROP CONSTRAINT [DF_CRM_MST_FieldForces_IsActive]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] DROP CONSTRAINT [DF_CRM_MST_FieldForces_HasServiceComplain]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] DROP CONSTRAINT [DF_CRM_MST_FieldForces_BankBranchID]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] DROP CONSTRAINT [DF_CRM_MST_FieldForces_Nominee_Permanent_DistrictID]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] DROP CONSTRAINT [DF_CRM_MST_FieldForces_Address_Permanent_DistrictID]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] DROP CONSTRAINT [DF_CRM_MST_FieldForces_Address_Present_DistrictID]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] DROP CONSTRAINT [DF_CRM_MST_FieldForces_DateOfBirth]
GO
ALTER TABLE [dbo].[Banks] DROP CONSTRAINT [DF_Banks_DateAdded]
GO
ALTER TABLE [dbo].[Banks] DROP CONSTRAINT [DF_Banks_IsDeleted]
GO
ALTER TABLE [dbo].[Banks] DROP CONSTRAINT [DF_Banks_IsActive]
GO
ALTER TABLE [dbo].[BankBranches] DROP CONSTRAINT [DF_BankBranches_DateAdded]
GO
ALTER TABLE [dbo].[BankBranches] DROP CONSTRAINT [DF_BankBranches_IsDeleted]
GO
ALTER TABLE [dbo].[BankBranches] DROP CONSTRAINT [DF_BankBranches_IsActive]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageRecipients] DROP CONSTRAINT [DF_MICRO_MailRecipients_DateAdded]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageRecipients] DROP CONSTRAINT [DF_MICRO_MailRecipients_IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageRecipients] DROP CONSTRAINT [DF_MICRO_MailRecipients_IsActive]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageRecipients] DROP CONSTRAINT [DF_MICRO_MailRecipients_ReceipientType]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageAttachments] DROP CONSTRAINT [DF_Micro_MailAttachments_DateAdded]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageAttachments] DROP CONSTRAINT [DF_Micro_MailAttachments_IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageAttachments] DROP CONSTRAINT [DF_Micro_MailAttachments_IsActive]
GO
ALTER TABLE [dbo].[ADMN_TRN_LogUserLogins] DROP CONSTRAINT [DF_ADMN_TRN_LogUserLogins_LoginDate]
GO
ALTER TABLE [dbo].[ADMN_MST_Users_Incharge] DROP CONSTRAINT [DF_ADMN_MST_Users_Incharge_DateAdded]
GO
ALTER TABLE [dbo].[ADMN_MST_Users_Incharge] DROP CONSTRAINT [DF_ADMN_MST_Users_Incharge_IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_Users_Incharge] DROP CONSTRAINT [DF_ADMN_MST_Users_Incharge_IsActive]
GO
ALTER TABLE [dbo].[ADMN_MST_Users_Companywise] DROP CONSTRAINT [DF_ADMN_MST_Users_Companywise_DateAdded]
GO
ALTER TABLE [dbo].[ADMN_MST_Users_Companywise] DROP CONSTRAINT [DF_ADMN_MST_Users_Companywise_IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_Users_Companywise] DROP CONSTRAINT [DF_ADMN_MST_Users_Companywise_IsActive]
GO
ALTER TABLE [dbo].[ADMN_MST_UserRolePermissionExceptions] DROP CONSTRAINT [DF_MICRO_UserPermissionExceptions_IsActive]
GO
ALTER TABLE [dbo].[ADMN_MST_UserRolePermissionExceptions] DROP CONSTRAINT [DF_MICRO_UserPermissionExceptions_IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_Settings_Officewise] DROP CONSTRAINT [DF_ADMN_MST_Settings_Officewise_DateAdded]
GO
ALTER TABLE [dbo].[ADMN_MST_Settings_Officewise] DROP CONSTRAINT [DF_ADMN_MST_Settings_Officewise_IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_Settings_Officewise] DROP CONSTRAINT [DF_ADMN_MST_Settings_Officewise_IsActive]
GO
ALTER TABLE [dbo].[ADMN_MST_RolePermissions] DROP CONSTRAINT [DF_ADMN_MST_RolePermissions_DateAdded_1]
GO
ALTER TABLE [dbo].[ADMN_MST_RolePermissions] DROP CONSTRAINT [DF_ADMN_MST_RolePermissions_IsDeleted_1]
GO
ALTER TABLE [dbo].[ADMN_MST_RolePermissions] DROP CONSTRAINT [DF_ADMN_MST_RolePermissions_IsActive_1]
GO
ALTER TABLE [dbo].[ADMN_MST_OfficeGroups] DROP CONSTRAINT [DF_ADMN_MST_OfficeGroupTemplates_DateAdded]
GO
ALTER TABLE [dbo].[ADMN_MST_OfficeGroups] DROP CONSTRAINT [DF_ADMN_MST_OfficeGroupTemplates_IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_OfficeGroups] DROP CONSTRAINT [DF_ADMN_MST_OfficeGroupTemplates_IsActive]
GO
ALTER TABLE [dbo].[ADMN_MST_MenuItems] DROP CONSTRAINT [DF_ADMN_MST_MenuItems_BAK_DateAdded_1]
GO
ALTER TABLE [dbo].[ADMN_MST_MenuItems] DROP CONSTRAINT [DF_ADMN_MST_MenuItems_BAK_IsDeleted_1]
GO
ALTER TABLE [dbo].[ADMN_MST_MenuItems] DROP CONSTRAINT [DF_ADMN_MST_MenuItems_BAK_IsActive_1]
GO
ALTER TABLE [dbo].[ADMN_MST_BankBranches] DROP CONSTRAINT [DF_ADMN_MST_BankBranches_DateAdded]
GO
ALTER TABLE [dbo].[ADMN_MST_BankBranches] DROP CONSTRAINT [DF_ADMN_MST_BankBranches_IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_BankBranches] DROP CONSTRAINT [DF_ADMN_MST_BankBranches_IsActive]
GO
ALTER TABLE [dbo].[Accounts_BookClose] DROP CONSTRAINT [DF_Accounts_BookClosing_IsBookClosedFlag]
GO
/****** Object:  Table [dbo].[TSDC_SQL_Tracing]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[TSDC_SQL_Tracing]
GO
/****** Object:  Table [dbo].[TMP_Updation]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[TMP_Updation]
GO
/****** Object:  Table [dbo].[theSettingKeyId]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[theSettingKeyId]
GO
/****** Object:  Table [dbo].[theKeyId]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[theKeyId]
GO
/****** Object:  Table [dbo].[s_SmsLog]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[s_SmsLog]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Numbers]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[Numbers]
GO
/****** Object:  Table [dbo].[LIB_Transactions]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[LIB_Transactions]
GO
/****** Object:  Table [dbo].[LIB_MasterSuppliers]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[LIB_MasterSuppliers]
GO
/****** Object:  Table [dbo].[LIB_MasterSegments]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[LIB_MasterSegments]
GO
/****** Object:  Table [dbo].[LIB_MasterPublishers]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[LIB_MasterPublishers]
GO
/****** Object:  Table [dbo].[LIB_MasterCategories]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[LIB_MasterCategories]
GO
/****** Object:  Table [dbo].[LIB_MasterAuthors]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[LIB_MasterAuthors]
GO
/****** Object:  Table [dbo].[LIB_Master_Books]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[LIB_Master_Books]
GO
/****** Object:  Table [dbo].[LIB_Book_Transactions]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[LIB_Book_Transactions]
GO
/****** Object:  Table [dbo].[LIB_Book_TransactionDetails]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[LIB_Book_TransactionDetails]
GO
/****** Object:  Table [dbo].[ICAS_UserFeedbacks]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ICAS_UserFeedbacks]
GO
/****** Object:  Table [dbo].[iCAS_TRANSACTIONS]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_TRANSACTIONS]
GO
/****** Object:  Table [dbo].[iCAS_SubjectType]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_SubjectType]
GO
/****** Object:  Table [dbo].[iCAS_Subjects]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_Subjects]
GO
/****** Object:  Table [dbo].[iCAS_SubjectPapers]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_SubjectPapers]
GO
/****** Object:  Table [dbo].[iCAS_StudentSubjectsTaken]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_StudentSubjectsTaken]
GO
/****** Object:  Table [dbo].[iCAS_StudentSubjectsRegistered]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_StudentSubjectsRegistered]
GO
/****** Object:  Table [dbo].[iCAS_StudentSection]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_StudentSection]
GO
/****** Object:  Table [dbo].[iCAS_Students]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_Students]
GO
/****** Object:  Table [dbo].[iCAS_StudentExams]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_StudentExams]
GO
/****** Object:  Table [dbo].[iCAS_Student_SectionRegister]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_Student_SectionRegister]
GO
/****** Object:  Table [dbo].[iCAS_Student_SectionGrouping]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_Student_SectionGrouping]
GO
/****** Object:  Table [dbo].[iCAS_Student_PreviousQuals]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_Student_PreviousQuals]
GO
/****** Object:  Table [dbo].[iCAS_Student_DailyAttendance]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_Student_DailyAttendance]
GO
/****** Object:  Table [dbo].[iCAS_Streams]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_Streams]
GO
/****** Object:  Table [dbo].[iCAS_Sessions]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_Sessions]
GO
/****** Object:  Table [dbo].[ICAS_Questions]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ICAS_Questions]
GO
/****** Object:  Table [dbo].[ICAS_Question_Option]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ICAS_Question_Option]
GO
/****** Object:  Table [dbo].[iCAS_Quals]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_Quals]
GO
/****** Object:  Table [dbo].[iCAS_FINA_TRN_Transactions]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_FINA_TRN_Transactions]
GO
/****** Object:  Table [dbo].[iCAS_FINA_Accounts]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_FINA_Accounts]
GO
/****** Object:  Table [dbo].[iCAS_FINA_AccountHeads]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_FINA_AccountHeads]
GO
/****** Object:  Table [dbo].[ICAS_FIN_DefaultAccountFee]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ICAS_FIN_DefaultAccountFee]
GO
/****** Object:  Table [dbo].[iCAS_ExamSchedule]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_ExamSchedule]
GO
/****** Object:  Table [dbo].[iCAS_ExamPassed]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_ExamPassed]
GO
/****** Object:  Table [dbo].[iCAS_Examintation]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_Examintation]
GO
/****** Object:  Table [dbo].[ICAS_EstablishmentTypes]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ICAS_EstablishmentTypes]
GO
/****** Object:  Table [dbo].[ICAS_Establishments]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ICAS_Establishments]
GO
/****** Object:  Table [dbo].[iCAS_Classes]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_Classes]
GO
/****** Object:  Table [dbo].[iCAS_Alumni]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[iCAS_Alumni]
GO
/****** Object:  Table [dbo].[HRMS_TRN_TransactionPasswords]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_TransactionPasswords]
GO
/****** Object:  Table [dbo].[HRMS_TRN_TourApplications]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_TourApplications]
GO
/****** Object:  Table [dbo].[HRMS_TRN_StaffLIC_Payments]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_StaffLIC_Payments]
GO
/****** Object:  Table [dbo].[HRMS_TRN_StaffLIC_InstalMentReceive]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_StaffLIC_InstalMentReceive]
GO
/****** Object:  Table [dbo].[HRMS_TRN_ShiftSchedules]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_ShiftSchedules]
GO
/****** Object:  Table [dbo].[HRMS_TRN_LoanPayments]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_LoanPayments]
GO
/****** Object:  Table [dbo].[HRMS_TRN_LeaveTypeSettings]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_LeaveTypeSettings]
GO
/****** Object:  Table [dbo].[HRMS_TRN_LeaveApplications]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_LeaveApplications]
GO
/****** Object:  Table [dbo].[HRMS_TRN_EmployeeOfficeAccesses]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_EmployeeOfficeAccesses]
GO
/****** Object:  Table [dbo].[HRMS_TRN_EmployeeLoanReceipts]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_EmployeeLoanReceipts]
GO
/****** Object:  Table [dbo].[HRMS_TRN_EmployeeLeaveBalances]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_EmployeeLeaveBalances]
GO
/****** Object:  Table [dbo].[HRMS_TRN_Attendances]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_Attendances]
GO
/****** Object:  Table [dbo].[HRMS_TRN_AttendanceApplications]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_AttendanceApplications]
GO
/****** Object:  Table [dbo].[HRMS_TRN_AttendanceAmendments]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_TRN_AttendanceAmendments]
GO
/****** Object:  Table [dbo].[HRMS_MST_ShiftTimings]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_ShiftTimings]
GO
/****** Object:  Table [dbo].[HRMS_MST_Shifts_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_Shifts_Officewise]
GO
/****** Object:  Table [dbo].[HRMS_MST_Shifts]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_Shifts]
GO
/****** Object:  Table [dbo].[HRMS_MST_Settings]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_Settings]
GO
/****** Object:  Table [dbo].[HRMS_MST_RequestTypes]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_RequestTypes]
GO
/****** Object:  Table [dbo].[HRMS_MST_PolicyTypes]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_PolicyTypes]
GO
/****** Object:  Table [dbo].[HRMS_MST_PayStructures]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_PayStructures]
GO
/****** Object:  Table [dbo].[HRMS_MST_PayRolls]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_PayRolls]
GO
/****** Object:  Table [dbo].[HRMS_MST_PayRoll]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_PayRoll]
GO
/****** Object:  Table [dbo].[HRMS_MST_PayGrades]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_PayGrades]
GO
/****** Object:  Table [dbo].[HRMS_MST_PayComponents]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_PayComponents]
GO
/****** Object:  Table [dbo].[HRMS_MST_PayCategories]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_PayCategories]
GO
/****** Object:  Table [dbo].[HRMS_MST_OfficeTimings]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_OfficeTimings]
GO
/****** Object:  Table [dbo].[HRMS_MST_LoanTypes]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_LoanTypes]
GO
/****** Object:  Table [dbo].[HRMS_MST_LeaveTypes_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_LeaveTypes_Officewise]
GO
/****** Object:  Table [dbo].[HRMS_MST_LeaveTypes]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_LeaveTypes]
GO
/****** Object:  Table [dbo].[HRMS_MST_Holidays_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_Holidays_Officewise]
GO
/****** Object:  Table [dbo].[HRMS_MST_Holidays]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_Holidays]
GO
/****** Object:  Table [dbo].[HRMS_MST_Events]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_Events]
GO
/****** Object:  Table [dbo].[HRMS_MST_EmployeesPayComponents]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_EmployeesPayComponents]
GO
/****** Object:  Table [dbo].[HRMS_MST_EmployeeServiceDetails]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_EmployeeServiceDetails]
GO
/****** Object:  Table [dbo].[HRMS_MST_Employees]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_Employees]
GO
/****** Object:  Table [dbo].[HRMS_MST_EmployeeQualificationDetails]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_EmployeeQualificationDetails]
GO
/****** Object:  Table [dbo].[HRMS_MST_EmployeeProfiles]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_EmployeeProfiles]
GO
/****** Object:  Table [dbo].[HRMS_MST_EmployeeFingerPrints]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_EmployeeFingerPrints]
GO
/****** Object:  Table [dbo].[HRMS_MST_EmployeeBankAccounts]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_EmployeeBankAccounts]
GO
/****** Object:  Table [dbo].[HRMS_MST_Designations_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_Designations_Officewise]
GO
/****** Object:  Table [dbo].[HRMS_MST_Designations]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_Designations]
GO
/****** Object:  Table [dbo].[HRMS_MST_DesignationOfficewiseTimings]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_DesignationOfficewiseTimings]
GO
/****** Object:  Table [dbo].[HRMS_MST_Departments_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_Departments_Officewise]
GO
/****** Object:  Table [dbo].[HRMS_MST_Departments]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_Departments]
GO
/****** Object:  Table [dbo].[HRMS_MST_Courses]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[HRMS_MST_Courses]
GO
/****** Object:  Table [dbo].[FINA_TRN_Vouchers]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_TRN_Vouchers]
GO
/****** Object:  Table [dbo].[FINA_TRN_VoucherDetails]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_TRN_VoucherDetails]
GO
/****** Object:  Table [dbo].[FINA_TRN_Transactions]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_TRN_Transactions]
GO
/****** Object:  Table [dbo].[FINA_TRN_Remittances]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_TRN_Remittances]
GO
/****** Object:  Table [dbo].[FINA_TRN_MonthEnds]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_TRN_MonthEnds]
GO
/****** Object:  Table [dbo].[FINA_TRN_MonthEndDetails]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_TRN_MonthEndDetails]
GO
/****** Object:  Table [dbo].[FINA_PERIOD_CLOSE]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_PERIOD_CLOSE]
GO
/****** Object:  Table [dbo].[FINA_MST_Accounts]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_MST_Accounts]
GO
/****** Object:  Table [dbo].[FINA_MST_ACCOUNTLEDGERS]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_MST_ACCOUNTLEDGERS]
GO
/****** Object:  Table [dbo].[FINA_MST_AccountingYears]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_MST_AccountingYears]
GO
/****** Object:  Table [dbo].[FINA_MST_AccountHeads]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_MST_AccountHeads]
GO
/****** Object:  Table [dbo].[FINA_MST_ACCOUNTGROUPS]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_MST_ACCOUNTGROUPS]
GO
/****** Object:  Table [dbo].[FINA_MST_ACCOUNT_BALANCE]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_MST_ACCOUNT_BALANCE]
GO
/****** Object:  Table [dbo].[FINA_DT_TRANSACTIONS]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[FINA_DT_TRANSACTIONS]
GO
/****** Object:  Table [dbo].[CRM_MST_FieldForces]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[CRM_MST_FieldForces]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[Banks]
GO
/****** Object:  Table [dbo].[BankBranches]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[BankBranches]
GO
/****** Object:  Table [dbo].[ADMN_TRN_UserPageVisits]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_TRN_UserPageVisits]
GO
/****** Object:  Table [dbo].[ADMN_TRN_OfficeGroupTemplates]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_TRN_OfficeGroupTemplates]
GO
/****** Object:  Table [dbo].[ADMN_TRN_MessageRecipients]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_TRN_MessageRecipients]
GO
/****** Object:  Table [dbo].[ADMN_TRN_MessageAttachments]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_TRN_MessageAttachments]
GO
/****** Object:  Table [dbo].[ADMN_TRN_LogUserLogins]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_TRN_LogUserLogins]
GO
/****** Object:  Table [dbo].[ADMN_TRN_LogTransactions]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_TRN_LogTransactions]
GO
/****** Object:  Table [dbo].[ADMN_TRN_ErrorLog]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_TRN_ErrorLog]
GO
/****** Object:  Table [dbo].[ADMN_MST_WebForms]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_WebForms]
GO
/****** Object:  Table [dbo].[ADMN_MST_UserSettings]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_UserSettings]
GO
/****** Object:  Table [dbo].[ADMN_MST_UserSettingKeys]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_UserSettingKeys]
GO
/****** Object:  Table [dbo].[ADMN_MST_Users_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Users_Officewise]
GO
/****** Object:  Table [dbo].[ADMN_MST_Users_Log]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Users_Log]
GO
/****** Object:  Table [dbo].[ADMN_MST_Users_Incharge]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Users_Incharge]
GO
/****** Object:  Table [dbo].[ADMN_MST_Users_Companywise]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Users_Companywise]
GO
/****** Object:  Table [dbo].[ADMN_MST_Users]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Users]
GO
/****** Object:  Table [dbo].[ADMN_MST_UserRolePermissionExceptions]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_UserRolePermissionExceptions]
GO
/****** Object:  Table [dbo].[ADMN_MST_States]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_States]
GO
/****** Object:  Table [dbo].[ADMN_MST_Settings_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Settings_Officewise]
GO
/****** Object:  Table [dbo].[ADMN_MST_Settings]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Settings]
GO
/****** Object:  Table [dbo].[ADMN_MST_SettingKeys]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_SettingKeys]
GO
/****** Object:  Table [dbo].[ADMN_MST_Roles]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Roles]
GO
/****** Object:  Table [dbo].[ADMN_MST_RolePermissions_Web]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_RolePermissions_Web]
GO
/****** Object:  Table [dbo].[ADMN_MST_RolePermissions]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_RolePermissions]
GO
/****** Object:  Table [dbo].[ADMN_MST_Reports]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Reports]
GO
/****** Object:  Table [dbo].[ADMN_MST_Permissions]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Permissions]
GO
/****** Object:  Table [dbo].[ADMN_MST_OfficeTypes]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_OfficeTypes]
GO
/****** Object:  Table [dbo].[ADMN_MST_Offices]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Offices]
GO
/****** Object:  Table [dbo].[ADMN_MST_OfficeGroupTemplates]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_OfficeGroupTemplates]
GO
/****** Object:  Table [dbo].[ADMN_MST_OfficeGroups]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_OfficeGroups]
GO
/****** Object:  Table [dbo].[ADMN_MST_Modules]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Modules]
GO
/****** Object:  Table [dbo].[ADMN_MST_MenuItemsWeb]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_MenuItemsWeb]
GO
/****** Object:  Table [dbo].[ADMN_MST_MenuItems]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_MenuItems]
GO
/****** Object:  Table [dbo].[ADMN_MST_MasterCodes_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_MasterCodes_Officewise]
GO
/****** Object:  Table [dbo].[ADMN_MST_MasterCodes]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_MasterCodes]
GO
/****** Object:  Table [dbo].[ADMN_MST_Guests]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Guests]
GO
/****** Object:  Table [dbo].[ADMN_MST_Forms]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Forms]
GO
/****** Object:  Table [dbo].[ADMN_MST_Districts]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Districts]
GO
/****** Object:  Table [dbo].[ADMN_MST_Currency]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Currency]
GO
/****** Object:  Table [dbo].[ADMN_MST_Countries]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Countries]
GO
/****** Object:  Table [dbo].[ADMN_MST_Companies]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Companies]
GO
/****** Object:  Table [dbo].[ADMN_MST_CommonKeys]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_CommonKeys]
GO
/****** Object:  Table [dbo].[ADMN_MST_Calendar]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Calendar]
GO
/****** Object:  Table [dbo].[ADMN_MST_Banks]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_Banks]
GO
/****** Object:  Table [dbo].[ADMN_MST_BankBranches]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[ADMN_MST_BankBranches]
GO
/****** Object:  Table [dbo].[Accounts_TranVouchers]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[Accounts_TranVouchers]
GO
/****** Object:  Table [dbo].[Accounts_Transactions]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[Accounts_Transactions]
GO
/****** Object:  Table [dbo].[Accounts_NumberControl]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[Accounts_NumberControl]
GO
/****** Object:  Table [dbo].[Accounts_MonthlyProcess]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[Accounts_MonthlyProcess]
GO
/****** Object:  Table [dbo].[Accounts_Master]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[Accounts_Master]
GO
/****** Object:  Table [dbo].[Accounts_Group]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[Accounts_Group]
GO
/****** Object:  Table [dbo].[Accounts_BookClose]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[Accounts_BookClose]
GO
/****** Object:  Table [dbo].[Accounts_Balance]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[Accounts_Balance]
GO
/****** Object:  Table [dbo].[Account_Years]    Script Date: 4/6/2020 7:07:00 PM ******/
DROP TABLE [dbo].[Account_Years]
GO
/****** Object:  Table [dbo].[Account_Years]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account_Years](
	[ACC_YEAR_ID] [int] IDENTITY(1,1) NOT NULL,
	[ACC_YEAR_CODE] [varchar](10) NULL,
	[CURRENT_START_DATE] [date] NOT NULL,
	[CURRENT_END_DATE] [date] NOT NULL,
	[PREVIOUS_START_DATE] [date] NULL,
	[PREVIOUS_END_DATE] [date] NULL,
	[BOOK_CLOSING_FLAG] [varchar](1) NULL,
	[YEAR_CLOSING_FLAG] [varchar](1) NULL,
	[STATUS_FLAG] [varchar](2) NULL,
	[STATUS_UP_FLAG] [varchar](2) NULL,
	[MOD_DATE] [date] NULL,
	[AUTH_CODE] [varchar](2) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyID] [int] NOT NULL,
 CONSTRAINT [PK_Account_Years] PRIMARY KEY CLUSTERED 
(
	[ACC_YEAR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts_Balance]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts_Balance](
	[AccountsYearID] [int] NOT NULL,
	[FinYearStartDate] [date] NOT NULL,
	[FinYearCloseDate] [date] NOT NULL,
	[AccountsID] [int] NOT NULL,
	[FinYearOpeningBalance] [decimal](18, 2) NULL CONSTRAINT [DF_Accounts_Balance_FinYearOpeningBalance]  DEFAULT ((0)),
	[FinYearOpeningBalanceType] [char](2) NULL CONSTRAINT [DF_Accounts_Balance_FinYearOpeningBalanceType]  DEFAULT ('DB'),
	[Total_DB_Balance_Month_04] [decimal](18, 2) NULL,
	[Total_CR_Balance_Month_04] [decimal](18, 2) NULL,
	[Total_DB_Balance_Month_05] [decimal](18, 2) NULL,
	[Total_CR_Balance_Month_05] [decimal](18, 2) NULL,
	[Total_DB_Balance_Month_06] [decimal](18, 2) NULL,
	[Total_CR_Balance_Month_06] [decimal](18, 2) NULL,
	[Total_DB_Balance_Month_07] [decimal](18, 2) NULL,
	[Total_CR_Balance_Month_07] [decimal](18, 2) NULL,
	[Total_DB_Balance_Month_08] [decimal](18, 2) NULL,
	[Total_CR_Balance_Month_08] [decimal](18, 2) NULL,
	[Total_DB_Balance_Month_09] [decimal](18, 2) NULL,
	[Total_CR_Balance_Month_09] [decimal](18, 2) NULL,
	[Total_DB_Balance_Month_10] [decimal](18, 2) NULL,
	[Total_CR_Balance_Month_10] [decimal](18, 2) NULL,
	[Total_DB_Balance_Month_11] [decimal](18, 2) NULL,
	[Total_CR_Balance_Month_11] [decimal](18, 2) NULL,
	[Total_DB_Balance_Month_12] [decimal](18, 2) NULL,
	[Total_CR_Balance_Month_12] [decimal](18, 2) NULL,
	[Total_DB_Balance_Month_01] [decimal](18, 2) NULL,
	[Total_CR_Balance_Month_01] [decimal](18, 2) NULL,
	[Total_DB_Balance_Month_02] [decimal](18, 2) NULL,
	[Total_CR_Balance_Month_02] [decimal](18, 2) NULL,
	[Total_DB_Balance_Month_03] [decimal](18, 2) NULL,
	[Total_CR_Balance_Month_03] [decimal](18, 2) NULL,
	[Total_DEBIT_Transactions] [decimal](18, 2) NULL,
	[Total_CREDIT_Transactions] [decimal](18, 2) NULL,
	[VC_FIELD1] [varchar](50) NULL,
	[VC_FIELD2] [varchar](50) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [date] NULL,
	[DT_FIELD2] [date] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[AuthorisationID] [int] NULL,
	[CompanyID] [int] NOT NULL,
	[OfficeID] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts_BookClose]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts_BookClose](
	[RecordNumber] [int] IDENTITY(1,1) NOT NULL,
	[AccountYearID] [int] NOT NULL,
	[AccountYearMonth] [char](8) NOT NULL,
	[IsBookClosed] [char](1) NULL,
	[BookClosedByUserID] [int] NULL,
	[BookCloseDateTime] [datetime] NULL,
	[VC_FIELD1] [varchar](50) NULL,
	[VC_FIELD2] [varchar](50) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [date] NULL,
	[DT_FIELD2] [date] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[AuthorisationID] [int] NULL,
	[CompanyID] [int] NOT NULL,
	[OfficeID] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts_Group]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts_Group](
	[AccountGroupID] [int] IDENTITY(1,1) NOT NULL,
	[AccountGroupDescription] [varchar](100) NULL,
	[AccountGroupAlias] [varchar](50) NULL,
	[AccountGroupParentID] [int] NULL,
	[AccountGroupNature] [varchar](20) NULL,
	[IsUserDefined] [bit] NULL CONSTRAINT [DF_Accounts_Group_IsUserDefined]  DEFAULT ((0)),
	[IsActive] [bit] NULL CONSTRAINT [DF_Accounts_Group_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_Accounts_Group_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts_Master]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts_Master](
	[AccountGroupID] [int] NULL,
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[AccountCode] [varchar](50) NULL,
	[AccountDescription] [varchar](100) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_Accounts_Master_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_Accounts_Master_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_Accounts_Master] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts_MonthlyProcess]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts_MonthlyProcess](
	[RecordNumber] [int] IDENTITY(1,1) NOT NULL,
	[ProcessForMonthEndDate] [date] NOT NULL,
	[MonthEnd_Balance_DB] [int] NOT NULL,
	[MonthEnd_Balance_CR] [int] NOT NULL,
	[Total_Balance_DB] [int] NOT NULL,
	[Total_Balance_CR] [int] NOT NULL,
	[ProcessedByUserId] [int] NULL,
	[MonthEndProcessingDate] [date] NOT NULL,
	[VC_FIELD1] [varchar](50) NULL,
	[VC_FIELD2] [varchar](50) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [date] NULL,
	[DT_FIELD2] [date] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts_NumberControl]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts_NumberControl](
	[TRANSACTION_NUMBER] [bigint] IDENTITY(1,1) NOT NULL,
	[REMARK] [char](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts_Transactions]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts_Transactions](
	[RecordNumber] [int] IDENTITY(1,1) NOT NULL,
	[VoucherNumber] [varchar](150) NOT NULL,
	[TranDate] [date] NOT NULL,
	[TranNumber] [int] NOT NULL,
	[SerialNumber] [int] NOT NULL,
	[AccountsID] [int] NOT NULL,
	[AccountsCode] [varchar](50) NOT NULL,
	[TranType] [char](10) NOT NULL,
	[TranAmount] [decimal](18, 2) NOT NULL,
	[BalanceType] [char](2) NOT NULL,
	[Narration] [varchar](max) NULL,
	[IsPosted] [char](1) NULL,
	[PostedBy] [int] NULL,
	[PostedDate] [date] NULL,
	[PostMode] [char](1) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_Accounts_DailyTransactions_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_Accounts_DailyTransactions_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_Accounts_Transactions_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](50) NULL,
	[VC_FIELD2] [varchar](50) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [date] NULL,
	[DT_FIELD2] [date] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
 CONSTRAINT [PK_Accounts_Transactions] PRIMARY KEY CLUSTERED 
(
	[RecordNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts_TranVouchers]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts_TranVouchers](
	[VoucherID] [bigint] IDENTITY(1,1) NOT NULL,
	[TranNumber] [int] NOT NULL,
	[TranDate] [date] NOT NULL,
	[VoucherNumber] [nchar](10) NOT NULL,
	[OfficeID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[AccountsYearId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ADMN_MST_BankBranches]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_BankBranches](
	[BankBranchID] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [varchar](100) NULL,
	[BankID] [int] NULL,
	[BranchAddress] [varchar](150) NULL,
	[CityOrTown] [varchar](50) NULL,
	[DistrictID] [int] NULL,
	[PinCode] [varchar](20) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Banks]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Banks](
	[BankID] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [varchar](50) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_Banks_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_Banks_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_Banks_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Calendar]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Calendar](
	[TheDateID] [int] IDENTITY(1,1) NOT NULL,
	[CalendarDate] [date] NOT NULL,
	[CalendarDateDesc] [varchar](max) NULL,
	[IsMicroHoliday] [char](1) NULL,
	[IsLocalHoliday] [char](1) NULL,
	[IsGovtHoliday] [char](1) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CalendarDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_CommonKeys]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_CommonKeys](
	[CommonKeyID] [int] IDENTITY(1,1) NOT NULL,
	[CommonKeyName] [varchar](100) NOT NULL,
	[CommonKeyValue] [varchar](100) NOT NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_CommonKeys_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_CommonKeys_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_CommonKeys_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_ADMN_MST_CommonKeys] PRIMARY KEY CLUSTERED 
(
	[CommonKeyName] ASC,
	[CommonKeyValue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Companies]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Companies](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](100) NULL,
	[CompanyAliasName] [varchar](100) NULL,
	[CompanyCode] [varchar](100) NULL,
	[CompanyMailingName] [varchar](100) NULL,
	[CompanyRegisteredOfficeID] [int] NULL,
	[CompanyHeadOfficeID] [int] NULL,
	[CompanyRegistrationNumber] [varchar](100) NULL,
	[CompanyEPFRegistrationNumber] [varchar](100) NULL,
	[CompanyLogoBigSize] [varbinary](max) NULL,
	[CompanyLogoBigType] [varchar](10) NULL,
	[CompanyLogoMediumSize] [varbinary](max) NULL,
	[CompanyLogoMediumType] [varchar](10) NULL,
	[CompanyLogoSmallSize] [varbinary](max) NULL,
	[CompanyLogoSmallType] [varchar](10) NULL,
	[CompanyLoginImage] [varbinary](max) NULL,
	[CompanyLoginImageType] [varchar](10) NULL,
	[CompanyLoginLabelForeColor] [varchar](50) NULL,
	[EstablishmentDate] [date] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_Companies_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_Companies_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_Companies_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Countries]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Countries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryCode] [varchar](10) NULL,
	[CountryName] [nvarchar](100) NULL,
	[CapitalName] [varchar](50) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_Countries_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_Countries_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_Countries_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Currency]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Currency](
	[CurrencyID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](100) NULL,
	[CountryCapital] [varchar](100) NULL,
	[CurrencyName] [varchar](100) NULL,
	[CurrencyCode] [varchar](50) NULL,
	[CompanyID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_Currency_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_Currency_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NOT NULL CONSTRAINT [DF_ADMN_MST_Currency_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](50) NULL,
	[VC_FIELD2] [varchar](50) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [date] NULL,
	[DT_FIELD2] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Districts]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Districts](
	[DistrictID] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [nvarchar](100) NULL,
	[StateID] [int] NULL,
	[HeadQuarterName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_Districts_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_Districts_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_Districts_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Forms]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Forms](
	[FormID] [int] IDENTITY(1,1) NOT NULL,
	[FormName] [varchar](100) NULL,
	[ActualFormName] [varchar](100) NULL,
	[ActualFormNameWeb] [varchar](100) NULL,
	[ActualFormClassName] [nvarchar](max) NULL,
	[ActualFormClassNameWeb] [nvarchar](max) NULL,
	[ImageURL_Small] [nvarchar](max) NULL,
	[ImageURL_Medium] [nvarchar](max) NULL,
	[ImageURL_Big] [nvarchar](max) NULL,
	[NavigationURL] [nvarchar](max) NULL,
	[ModuleID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_Forms_BAK_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_Forms_BAK_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_Forms_BAK_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyCode] [varchar](10) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Guests]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Guests](
	[GuestID] [int] IDENTITY(1,1) NOT NULL,
	[GuestCode] [varchar](50) NULL,
	[Salutation] [varchar](10) NULL,
	[GuestName] [varchar](200) NULL,
	[Age] [int] NULL,
	[Gender] [varchar](15) NULL,
	[Address_Present_TownOrCity] [varchar](200) NULL,
	[Address_Present_Landmark] [varchar](100) NULL,
	[Address_Present_PinCode] [varchar](10) NULL,
	[Address_Present_DistrictID] [int] NULL,
	[PhoneNumber] [varchar](20) NULL,
	[MobileNumber] [varchar](20) NULL,
	[OfficialEMailID] [varchar](50) NULL,
	[PersonalEMailID] [varchar](50) NULL,
	[EffectiveDateFrom] [date] NULL CONSTRAINT [DF_ADMN_MST_Guests_EffectiveDateFrom]  DEFAULT (getdate()),
	[EffectiveDateTo] [date] NULL,
	[OfficeID] [int] NULL,
	[Remarks] [varchar](1000) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_Guests_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_Guests_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_Guests_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_MasterCodes]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_MasterCodes](
	[MasterCodeID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleID] [int] NULL,
	[TableName] [varchar](100) NULL,
	[ColumnName] [varchar](100) NULL,
	[CodeTemplate] [varchar](100) NULL,
	[LastGeneratedCode] [varchar](100) NULL,
	[IsGeneratedOfficewise] [bit] NULL CONSTRAINT [DF_ADMN_MST_MasterCodes_IsGeneratedOfficewise]  DEFAULT ((0)),
	[IsResetAnnually] [bit] NULL CONSTRAINT [DF_ADMN_MST_MasterCodes_IsResetAnnually]  DEFAULT ((0)),
	[IsResetDaily] [bit] NULL CONSTRAINT [DF_ADMN_MST_MasterCodes_IsResetDaily]  DEFAULT ((0)),
	[EffectiveDateFrom] [date] NULL CONSTRAINT [DF_ADMN_MST_MasterCodes_EffectiveDateFrom_1]  DEFAULT (getdate()),
	[EffectiveDateTo] [date] NULL,
	[Remarks] [varchar](200) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_MasterCodes_IsActive_1]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_MasterCodes_IsDeleted_1]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_MasterCodes_DateAdded_1]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_MasterCodes_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_MasterCodes_Officewise](
	[MasterCodeOfficewiseID] [int] IDENTITY(1,1) NOT NULL,
	[MasterCodeID] [int] NULL,
	[OfficeID] [int] NULL CONSTRAINT [DF_ADMN_MST_MasterCodes_Officewise_OfficeID]  DEFAULT ((1)),
	[LastGeneratedCode] [varchar](200) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_MasterCodes_Officewise_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_MasterCodes_Officewise_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_MasterCodes_Officewise_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_MenuItems]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_MenuItems](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[MenuItemName] [varchar](50) NULL,
	[ShortcutKey] [varchar](100) NULL,
	[ShortcutDisplayString] [varchar](100) NULL,
	[ParentMenuID] [int] NULL,
	[ModuleID] [int] NULL,
	[FormID] [int] NULL,
	[DisplayOrder] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyCode] [varchar](10) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_MenuItemsWeb]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_MenuItemsWeb](
	[WebMenuID] [int] IDENTITY(1,1) NOT NULL,
	[MenuDisplayText] [nvarchar](100) NULL,
	[MenuValueText] [nvarchar](100) NULL,
	[ParentWebMenuID] [int] NULL,
	[ModuleID] [int] NULL,
	[WebFormID] [int] NULL,
	[MenuToolTip] [nvarchar](200) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[NavigationURL] [nvarchar](max) NULL,
	[DisplayOrder] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF__ADMN_MST___IsAct__4A6ECD84]  DEFAULT ('True'),
	[IsDeleted] [bit] NULL CONSTRAINT [DF__ADMN_MST___IsDel__4B62F1BD]  DEFAULT ('False'),
	[DateAdded] [datetime] NULL CONSTRAINT [DF__ADMN_MST___WebMenuItems__DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyID] [int] NULL,
	[CompanyCode] [varchar](20) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Modules]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Modules](
	[ModuleID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleName] [varchar](100) NULL,
	[ModuleMenuText] [varchar](100) NULL,
	[ParentModuleID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_MICRO_Modules_IsActive_1]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_MICRO_Modules_IsDeleted_1]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_MICRO_Modules_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyCode] [varchar](10) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_MICRO_Modules] PRIMARY KEY CLUSTERED 
(
	[ModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_OfficeGroups]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_OfficeGroups](
	[OfficeGroupID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeGroupName] [varchar](100) NULL,
	[OfficeGroupDescription] [varchar](max) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_OfficeGroupTemplates]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_OfficeGroupTemplates](
	[OfficeGroupTemplateID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeGroupTemplateName] [varchar](100) NULL,
	[OfficeIDs] [varchar](1000) NULL,
	[EffectiveDateFrom] [date] NULL,
	[EffectiveDateTo] [date] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Offices]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Offices](
	[OfficeID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeName] [varchar](100) NULL,
	[OfficeTypeID] [int] NULL,
	[OfficeCode] [varchar](10) NULL,
	[Address_TownOrCity] [varchar](200) NULL,
	[Address_Landmark] [varchar](100) NULL,
	[Address_PinCode] [varchar](10) NULL,
	[Address_DistrictID] [int] NULL,
	[Address_StateID] [int] NULL,
	[EstablishmentDate] [date] NULL,
	[ParentOfficeID] [int] NULL,
	[ManagerEmployeeID] [int] NULL,
	[ContactPerson1] [varchar](50) NULL,
	[ContactPerson2] [varchar](50) NULL,
	[ContactPerson3] [varchar](50) NULL,
	[StdCodePhone] [varchar](20) NULL,
	[Phone1] [varchar](20) NULL,
	[Phone2] [varchar](20) NULL,
	[Phone3] [varchar](20) NULL,
	[Extension1] [varchar](20) NULL,
	[Extension2] [varchar](20) NULL,
	[Extension3] [varchar](20) NULL,
	[StdCodeFax] [varchar](20) NULL,
	[Fax1] [varchar](20) NULL,
	[Fax2] [varchar](20) NULL,
	[Fax3] [varchar](20) NULL,
	[Mobile1] [varchar](20) NULL,
	[Mobile2] [varchar](20) NULL,
	[Mobile3] [varchar](20) NULL,
	[Email1] [varchar](100) NULL,
	[Email2] [varchar](100) NULL,
	[Email3] [varchar](100) NULL,
	[IsHavingShift] [bit] NULL CONSTRAINT [DF_ADMN_MST_Offices_IsHavingShift]  DEFAULT ((0)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_Offices_IsDeleted]  DEFAULT ((0)),
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_Offices_IsActive]  DEFAULT ((1)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_Offices_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_OfficeTypes]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_OfficeTypes](
	[OfficeTypeID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeTypeName] [varchar](100) NULL,
	[OfficeTypeDescription] [varchar](200) NULL,
	[OfficeTypeAbbreviation] [varchar](5) NULL,
	[ParentOfficeTypeID] [int] NULL,
	[HierarchyIndex] [int] NULL,
	[LastGeneratedCode] [varchar](100) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_OfficeTypes_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_OfficeTypes_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_OfficeTypes_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Permissions]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Permissions](
	[PermissionID] [int] IDENTITY(1,1) NOT NULL,
	[PermissionDescription] [varchar](20) NULL,
	[BriefDescription] [varchar](max) NULL,
	[ForFormOrMenu] [char](1) NULL CONSTRAINT [DF_ADMN_MST_Permissions_ForFormOrMenu]  DEFAULT ('B'),
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_Permissions_IsActive_1]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_Permissions_IsDeleted_1]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_Permissions_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL CONSTRAINT [DF_ADMN_MST_Permissions_AddedBy]  DEFAULT ((1)),
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_ADMN_MST_Permissions] PRIMARY KEY CLUSTERED 
(
	[PermissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Reports]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Reports](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[ReportDisplayName] [varchar](100) NULL,
	[ReportFileName] [varchar](100) NULL,
	[ReportFilePath] [nvarchar](max) NULL,
	[ReportTitle] [nvarchar](max) NULL,
	[ModuleID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_Reports_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_Reports_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_Reports_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_RolePermissions]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_RolePermissions](
	[RolePermissionID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[PermissionID] [int] NULL,
	[FormOrMenuID] [int] NULL,
	[FormOrMenu] [char](1) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_RolePermissions_Web]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_RolePermissions_Web](
	[RolePermissionID] [int] IDENTITY(1,1) NOT NULL,
	[FormOrMenuID] [int] NULL,
	[RoleID] [int] NULL,
	[PermissionID] [int] NULL,
	[FormOrMenu] [char](1) NULL,
	[IsActive] [bit] NULL DEFAULT ('True'),
	[IsDeleted] [bit] NULL DEFAULT ('False'),
	[DateAdded] [datetime] NULL DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Roles]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleDescription] [varchar](30) NULL,
	[RolePosition] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_Roles_IsActive_1]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_Roles_IsDeleted_1]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_Roles_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_ADMN_MST_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_SettingKeys]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_SettingKeys](
	[SettingKeyID] [int] IDENTITY(1,1) NOT NULL,
	[SettingKeyName] [varchar](50) NULL,
	[SettingKeyModuleID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_SettingKeys_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_SettingKeys_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_SettingKeys_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Settings]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Settings](
	[SettingID] [int] IDENTITY(1,1) NOT NULL,
	[SettingKeyID] [int] NULL,
	[SettingDataType] [varchar](20) NULL,
	[SettingValue] [varchar](max) NULL,
	[EffectiveDateFrom] [date] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_Settings_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_Settings_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_Settings_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Settings_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Settings_Officewise](
	[SettingOfficewiseID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeID] [int] NULL,
	[SettingID] [int] NULL,
	[EffectiveDateFrom] [date] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_States]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_States](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](50) NULL,
	[StateCapitalName] [varchar](50) NULL,
	[CountryID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_States_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_States_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_States_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_UserRolePermissionExceptions]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_UserRolePermissionExceptions](
	[UserPermissionExceptionID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[FormOrMenuID] [int] NULL,
	[FormOrMenu] [char](1) NULL,
	[PermissionID] [int] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_MICRO_UserRolePermissionExceptions] PRIMARY KEY CLUSTERED 
(
	[UserPermissionExceptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Users]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[RoleID] [int] NULL,
	[UserType] [varchar](50) NULL,
	[UserReferenceID] [int] NULL,
	[SecretQuestion] [varchar](100) NULL,
	[SecretQuestionAnswer] [varchar](100) NULL,
	[IsPasswordChangeDue] [bit] NULL CONSTRAINT [DF_ADMN_MST_Users_IsPasswordChangeDue]  DEFAULT ((0)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_MICRO_Users_IsDeleted_1]  DEFAULT ((0)),
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_Users_IsActive]  DEFAULT ((1)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_MICRO_Users_DateAdded_1]  DEFAULT (getdate()),
	[AddedBy] [int] NULL CONSTRAINT [DF_ADMN_MST_Users_AddedBy]  DEFAULT ((1)),
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
	[CompanyCode] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Users_Companywise]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Users_Companywise](
	[UserCompanywiseID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[RoleID] [int] NULL,
	[EffectiveDateFrom] [date] NULL,
	[EffectiveDateTo] [date] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Users_Incharge]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Users_Incharge](
	[UserInchargeID] [int] IDENTITY(1,1) NOT NULL,
	[ParentUserID] [int] NULL,
	[InChargeUserID] [int] NULL,
	[EffectiveDateFrom] [date] NULL,
	[EffectiveDateTo] [date] NULL,
	[ReferenceLetterNumber] [varchar](20) NULL,
	[ReferenceLetterDate] [date] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Users_Log]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Users_Log](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[LoggedOnDateTime] [datetime] NULL,
	[LoggedOutDateTime] [datetime] NULL,
	[LoggedOnFromSystemIP] [varchar](50) NULL,
	[ClientComputerName] [varchar](50) NULL,
	[SessionId] [varchar](150) NULL,
	[DomainUserName] [varchar](150) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_Users_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_Users_Officewise](
	[UserOfficewiseID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[OfficeID] [int] NULL,
	[CanAccessAllOffices] [bit] NULL CONSTRAINT [DF_ADMN_MST_Users_Officewise_CanAccessAllOffices_1]  DEFAULT ((0)),
	[EffectiveDateFrom] [date] NULL,
	[EffectiveDateTo] [date] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_Users_Officewise_IsActive_1]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_Users_Officewise_IsDeleted_1]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_Users_Officewise_DateAdded_1]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_UserSettingKeys]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_UserSettingKeys](
	[UserSettingKeyID] [int] IDENTITY(1,1) NOT NULL,
	[UserSettingKeyName] [varchar](50) NULL,
	[UserSettingKeyDescription] [varchar](max) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_UserSettingKeys_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ADMN_MST_UserSettingKeys_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_UserSettingKeys_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL CONSTRAINT [DF_ADMN_MST_UserSettingKeys_AddedBy]  DEFAULT ((1)),
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_UserSettings]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_UserSettings](
	[UserSettingID] [int] IDENTITY(1,1) NOT NULL,
	[UserSettingKeyID] [int] NULL,
	[UserSettingValue] [varchar](max) NULL,
	[UserID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ADMN_MST_UserSettings_IsActive]  DEFAULT ((1)),
	[IsDelete] [bit] NULL CONSTRAINT [DF_ADMN_MST_UserSettings_IsDelete]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ADMN_MST_UserSettings_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_MST_WebForms]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_MST_WebForms](
	[ModuleID] [int] NULL,
	[WebFormID] [int] IDENTITY(1,1) NOT NULL,
	[WebFormName] [varchar](100) NULL,
	[WebFormDescription] [varchar](250) NULL,
	[WebFormURL] [varchar](100) NULL,
	[WebFormImageURL] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyCode] [varchar](10) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_TRN_ErrorLog]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_TRN_ErrorLog](
	[ErrorRecordID] [bigint] IDENTITY(1,1) NOT NULL,
	[ErrorDate] [datetime] NULL,
	[Ticket] [varchar](max) NULL,
	[Environment] [varchar](max) NULL,
	[ThePage] [varchar](max) NULL,
	[TheMessage] [varchar](max) NULL,
	[TheInnerMessage] [varchar](max) NULL,
	[ErrorStack] [varchar](max) NULL,
	[UserDomain] [varchar](max) NULL,
	[Language] [varchar](max) NULL,
	[TargetSite] [varchar](max) NULL,
	[TheClass] [varchar](max) NULL,
	[TheUserAgent] [varchar](max) NULL,
	[TypeLog] [varchar](max) NULL,
	[UserId] [int] NULL,
	[OfficeId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_TRN_LogTransactions]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_TRN_LogTransactions](
	[TransactionLogID] [int] IDENTITY(1,1) NOT NULL,
	[DateOfTransaction] [datetime] NULL,
	[UserID] [int] NULL,
	[TableName] [varchar](100) NULL,
	[ColumnName] [varchar](100) NULL,
	[RowID] [nchar](10) NULL,
	[Action] [varchar](10) NULL,
	[OldValue] [nvarchar](max) NULL,
	[NewValue] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_TRN_LogUserLogins]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_TRN_LogUserLogins](
	[LogUserLoginID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[LoginDate] [datetime] NULL,
	[LoginIP] [varchar](100) NULL,
	[LogoutDate] [datetime] NULL,
	[Remarks] [nvarchar](max) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_TRN_MessageAttachments]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_TRN_MessageAttachments](
	[AttachmentID] [int] IDENTITY(1,1) NOT NULL,
	[MailItemID] [int] NULL,
	[FileName] [nvarchar](max) NULL,
	[ContentTypeID] [int] NULL,
	[FileContents] [varbinary](max) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_TRN_MessageRecipients]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_TRN_MessageRecipients](
	[MailRecipientListID] [int] IDENTITY(1,1) NOT NULL,
	[MailItemID] [int] NULL,
	[ReceipientType] [int] NULL,
	[RecipientUserID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_TRN_OfficeGroupTemplates]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMN_TRN_OfficeGroupTemplates](
	[OfficeGroupTemplateID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeGroupID] [int] NULL,
	[OfficeID] [int] NULL,
	[EffectiveDateFrom] [date] NULL,
	[EffectiveDateTo] [date] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADMN_TRN_UserPageVisits]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMN_TRN_UserPageVisits](
	[RecordID] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [int] NOT NULL,
	[WebMenuId] [int] NOT NULL,
	[InTime] [datetime] NOT NULL,
	[OutTime] [datetime] NULL,
 CONSTRAINT [PK_ADMN_TRN_UserPageVisits] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BankBranches]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankBranches](
	[BankBranchID] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [varchar](100) NULL,
	[BankID] [int] NULL,
	[BranchAddress] [varchar](150) NULL,
	[CityOrTown] [varchar](50) NULL,
	[DistrictID] [int] NULL,
	[PinCode] [varchar](20) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banks](
	[BankID] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CRM_MST_FieldForces]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CRM_MST_FieldForces](
	[OfficeID] [int] NULL,
	[FieldForceID] [int] IDENTITY(1,1) NOT NULL,
	[FieldForceCode] [varchar](20) NULL,
	[FieldForceRankID] [int] NULL,
	[FieldForceRankDescription] [varchar](50) NULL,
	[ReportingToFieldForceID] [int] NULL,
	[Salutation] [varchar](10) NULL,
	[FieldForceName] [varchar](200) NULL,
	[FatherName] [varchar](100) NULL,
	[HusbandName] [varchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[MaritalStatus] [varchar](10) NULL,
	[DateOfJoin] [datetime] NULL,
	[DateOfBirth] [datetime] NULL,
	[Age] [int] NULL,
	[Address_Present_TownOrCity] [varchar](1000) NULL,
	[Address_Present_Landmark] [varchar](100) NULL,
	[Address_Present_PinCode] [varchar](10) NULL,
	[Address_Present_DistrictID] [int] NULL,
	[Address_Permanent_TownOrCity] [varchar](1000) NULL,
	[Address_Permanent_Landmark] [varchar](100) NULL,
	[Address_Permanent_PinCode] [varchar](10) NULL,
	[Address_Permanent_DistrictID] [int] NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Mobile] [varchar](20) NULL,
	[EMailID] [varchar](50) NULL,
	[FieldForce_Qualification] [varchar](50) NULL,
	[Occupation] [varchar](50) NULL,
	[Nationality] [varchar](20) NULL,
	[Religion] [varchar](20) NULL,
	[Caste] [varchar](10) NULL,
	[NomineeName] [varchar](100) NULL,
	[Nominee_Permanent_TownOrCity] [varchar](100) NULL,
	[Nominee_Permanent_Landmark] [varchar](100) NULL,
	[Nominee_Permanent_PinCode] [varchar](10) NULL,
	[Nominee_Permanent_DistrictID] [int] NULL,
	[NomineeRelationship] [varchar](20) NULL,
	[NomineeAge] [int] NULL,
	[IsNomineeACoWorker] [bit] NULL,
	[Nominee_Qualification] [varchar](50) NULL,
	[BankBranchID] [int] NULL,
	[BankAccountNumber] [varchar](50) NULL,
	[HasServiceComplain] [bit] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_CRM_MST_FieldForces] PRIMARY KEY CLUSTERED 
(
	[FieldForceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINA_DT_TRANSACTIONS]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINA_DT_TRANSACTIONS](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeID] [int] NOT NULL,
	[VoucherNumber] [varchar](150) NOT NULL,
	[VoucherDate] [date] NOT NULL,
	[SerialNumber] [int] NOT NULL,
	[AccountLedgerID] [int] NOT NULL,
	[TransactionType] [char](2) NOT NULL,
	[TransactionAmount] [int] NOT NULL,
	[BalanceType] [char](2) NOT NULL,
	[Narration] [varchar](max) NULL,
	[IsPosted] [char](1) NULL,
	[PostedBy] [int] NULL,
	[PostedDate] [date] NULL,
	[PostMode] [char](1) NULL,
	[VC_FIELD1] [varchar](50) NULL,
	[VC_FIELD2] [varchar](50) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [date] NULL,
	[DT_FIELD2] [date] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINA_MST_ACCOUNT_BALANCE]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINA_MST_ACCOUNT_BALANCE](
	[FinYearStartDate] [date] NOT NULL,
	[FinYearCloseDate] [date] NOT NULL,
	[AccountLedgerID] [int] NOT NULL,
	[FinYearOpeningBalance] [int] NOT NULL,
	[FinYearOpeningBalanceType] [char](2) NOT NULL,
	[Total_DB_Balance_Month_04] [int] NOT NULL,
	[Total_CR_Balance_Month_04] [int] NOT NULL,
	[Total_DB_Balance_Month_05] [int] NOT NULL,
	[Total_CR_Balance_Month_05] [int] NOT NULL,
	[Total_DB_Balance_Month_06] [int] NOT NULL,
	[Total_CR_Balance_Month_06] [int] NOT NULL,
	[Total_DB_Balance_Month_07] [int] NOT NULL,
	[Total_CR_Balance_Month_07] [int] NOT NULL,
	[Total_DB_Balance_Month_08] [int] NOT NULL,
	[Total_CR_Balance_Month_08] [int] NOT NULL,
	[Total_DB_Balance_Month_09] [int] NOT NULL,
	[Total_CR_Balance_Month_09] [int] NOT NULL,
	[Total_DB_Balance_Month_10] [int] NOT NULL,
	[Total_CR_Balance_Month_10] [int] NOT NULL,
	[Total_DB_Balance_Month_11] [int] NOT NULL,
	[Total_CR_Balance_Month_11] [int] NOT NULL,
	[Total_DB_Balance_Month_12] [int] NOT NULL,
	[Total_CR_Balance_Month_12] [int] NOT NULL,
	[Total_DB_Balance_Month_01] [int] NOT NULL,
	[Total_CR_Balance_Month_01] [int] NOT NULL,
	[Total_DB_Balance_Month_02] [int] NOT NULL,
	[Total_CR_Balance_Month_02] [int] NOT NULL,
	[Total_DB_Balance_Month_03] [int] NOT NULL,
	[Total_CR_Balance_Month_03] [int] NOT NULL,
	[Total_DEBIT_Transactions] [int] NOT NULL,
	[Total_CREDIT_Transactions] [int] NOT NULL,
	[VC_FIELD1] [varchar](50) NULL,
	[VC_FIELD2] [varchar](50) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [date] NULL,
	[DT_FIELD2] [date] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[AuthorisationID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINA_MST_ACCOUNTGROUPS]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINA_MST_ACCOUNTGROUPS](
	[AccountGroupID] [int] IDENTITY(1,1) NOT NULL,
	[AccountGroupDescription] [varchar](100) NULL,
	[AccountGroupAlias] [varchar](50) NULL,
	[AccountGroupParentID] [int] NULL,
	[AccountGroupNature] [varchar](20) NULL CONSTRAINT [DF_FINA_MST_AccountGroups_IsPrimary]  DEFAULT ('Secondary'),
	[IsUserDefined] [bit] NULL CONSTRAINT [DF_FINA_MST_AccountGroups_IsUserDefined]  DEFAULT ((0)),
	[IsActive] [bit] NULL CONSTRAINT [DF_FINA_MST_AccountGroups_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_FINA_MST_AccountGroups_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_FINA_MST_AccountGroups_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINA_MST_AccountHeads]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINA_MST_AccountHeads](
	[AccountHeadID] [int] IDENTITY(1,1) NOT NULL,
	[AccountHeadDescription] [varchar](100) NULL,
	[AccountHeadType] [varchar](20) NULL,
	[ParentAccountHeadID] [int] NULL,
	[IsPrimary] [bit] NULL CONSTRAINT [DF_FINA_MST_AccountHeads_IsPrimary]  DEFAULT ((0)),
	[DisplayOrder] [int] NOT NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_FINA_MST_AccountHeads_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_FINA_MST_AccountHeads_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_FINA_MST_AccountHeads_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINA_MST_AccountingYears]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINA_MST_AccountingYears](
	[AccountingYearID] [int] IDENTITY(1,1) NOT NULL,
	[AccountingYearDescription] [varchar](20) NULL,
	[YearStartDate] [date] NULL,
	[YearEndDate] [date] NULL,
	[BookClosingFlag] [bit] NULL,
	[YearClosingFlag] [bit] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF__FINA_MST___IsAct__5303482E]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF__FINA_MST___IsDel__520F23F5]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF__FINA_MST___DateA__53F76C67]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINA_MST_ACCOUNTLEDGERS]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINA_MST_ACCOUNTLEDGERS](
	[AccountLedgerID] [int] IDENTITY(1,1) NOT NULL,
	[AccountLedgerAlias] [varchar](50) NULL,
	[AccountLedgerDescription] [varchar](100) NULL,
	[AccountGroupID] [int] NULL,
	[AccountLedgerNature] [varchar](20) NULL,
	[IsUserDefined] [bit] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINA_MST_Accounts]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINA_MST_Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[AccountDescription] [varchar](100) NULL,
	[AccountHeadID] [int] NULL,
	[ParentAccountID] [int] NULL,
	[IsPrimary] [bit] NULL CONSTRAINT [DF_FINA_MST_Accounts_IsPrimary]  DEFAULT ((0)),
	[AccessType] [varchar](20) NULL,
	[AnalysisFlag] [varchar](20) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_FINA_MST_Accounts_IsActive_1]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_FINA_MST_Accounts_IsDeleted_1]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_FINA_MST_Accounts_DateAdded_1]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINA_PERIOD_CLOSE]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINA_PERIOD_CLOSE](
	[FinYearStartDate] [date] NULL,
	[FinYearCloseDate] [date] NULL,
	[CloseMonth] [smallint] NULL,
	[CloseYear] [smallint] NULL,
	[PeriodCloseFlag] [char](1) NULL,
	[VC_FIELD1] [varchar](50) NULL,
	[VC_FIELD2] [varchar](50) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [date] NULL,
	[DT_FIELD2] [date] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINA_TRN_MonthEndDetails]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINA_TRN_MonthEndDetails](
	[MonthEndDetailID] [int] IDENTITY(1,1) NOT NULL,
	[MonthEndID] [int] NULL,
	[AccountID] [int] NULL,
	[TransactionAmount] [decimal](18, 0) NULL,
	[EntrySide] [varchar](6) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_FINA_TRN_MonthEndDetails_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_FINA_TRN_MonthEndDetails_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_FINA_TRN_MonthEndDetails_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINA_TRN_MonthEnds]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FINA_TRN_MonthEnds](
	[MonthEndID] [int] IDENTITY(1,1) NOT NULL,
	[DateFrom] [datetime] NULL,
	[DateTo] [datetime] NULL,
	[GraceDays] [int] NULL CONSTRAINT [DF_FINA_TRN_MonthEnds_GraceDays]  DEFAULT ((2)),
	[ClosingDate] [datetime] NULL,
	[Status] [bit] NULL CONSTRAINT [DF_FINA_TRN_MonthEnds_Status]  DEFAULT ((0)),
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_FINA_TRN_MonthEnds_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_FINA_TRN_MonthEnds_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_FINA_TRN_MonthEnds_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FINA_TRN_Remittances]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINA_TRN_Remittances](
	[RemittanceID] [int] IDENTITY(1,1) NOT NULL,
	[RemittanceDate] [datetime] NULL,
	[RemittancePaidBy] [int] NULL,
	[RemittancePaidTo] [int] NULL,
	[TransactionAmount] [decimal](18, 0) NULL,
	[RemittanceMode] [varchar](20) NULL,
	[BankBranchID] [int] NULL,
	[BankAccountNo] [varchar](50) NULL,
	[ReceiptStatus] [bit] NULL,
	[ReceiptDate] [datetime] NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINA_TRN_Transactions]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINA_TRN_Transactions](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionCode] [varchar](50) NULL,
	[TransactionDate] [datetime] NULL,
	[AccountID] [int] NULL,
	[TransactionToCategory] [varchar](100) NULL,
	[TransactionToID] [int] NULL,
	[ThirdPartyDescription] [varchar](100) NULL,
	[TransactionAmount] [decimal](18, 2) NULL,
	[TransactionMode] [varchar](20) NULL,
	[TransactionReference] [varchar](250) NULL,
	[BankName] [varchar](250) NULL,
	[ChqDate] [varchar](250) NULL,
	[ChqNumber] [varchar](250) NULL,
	[EntrySide] [varchar](10) NULL,
	[Remarks] [varchar](max) NULL,
	[AutoReferenceID] [int] NULL,
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_FINA_TRN_Transactions_IsActive_1]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_FINA_TRN_Transactions_IsDeleted_1]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_FINA_TRN_Transactions_DateAdded_1]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINA_TRN_VoucherDetails]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINA_TRN_VoucherDetails](
	[VoucherDetailID] [int] IDENTITY(1,1) NOT NULL,
	[VoucherID] [int] NULL,
	[AccountLedgerID] [int] NULL,
	[VoucherAmount] [decimal](18, 0) NULL,
	[VoucherEntryType] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FINA_TRN_Vouchers]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FINA_TRN_Vouchers](
	[VoucherID] [int] IDENTITY(1,1) NOT NULL,
	[VoucherCode] [varchar](100) NULL,
	[VoucherType] [varchar](100) NULL,
	[VoucherDate] [datetime] NULL,
	[VoucherNarration] [varchar](100) NULL,
	[IsPosted] [bit] NULL,
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_Courses]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_Courses](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](20) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_Courses_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_Courses_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_Courses_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_Departments]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_Departments](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentDescription] [nvarchar](100) NULL,
	[ParentDepartmentID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_Departments_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_Departments_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_Departments_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyCode] [varchar](10) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_Departments_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_Departments_Officewise](
	[DepartmentOfficewiseID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeID] [int] NULL,
	[DepartmentID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_Departments_Officewise_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_Departments_Officewise_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_Departments_Officewise_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_DesignationOfficewiseTimings]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_DesignationOfficewiseTimings](
	[DesignationOfficewiseTimingID] [int] IDENTITY(1,1) NOT NULL,
	[DesignationOfficewiseID] [int] NULL,
	[InTime] [time](0) NULL,
	[OutTime] [time](0) NULL,
	[EffectiveDateFrom] [date] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_Designations]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_Designations](
	[DesignationID] [int] IDENTITY(1,1) NOT NULL,
	[DesignationDescription] [varchar](30) NULL,
	[RoleID] [int] NULL,
	[ReportingToDesignationID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_Designations_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_Designations_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_Designations_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyCode] [varchar](10) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_Designations_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_Designations_Officewise](
	[DesignationOfficewiseID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeID] [int] NULL,
	[DesignationID] [int] NULL,
	[InTime] [time](0) NULL,
	[OutTime] [time](0) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_Designations_Officewise_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_Designations_Officewise_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_Designations_Officewise_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_EmployeeBankAccounts]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_EmployeeBankAccounts](
	[EmployeeBankAccountID] [int] IDENTITY(1,1) NOT NULL,
	[BankAccountNumber] [varchar](50) NULL,
	[EmployeeID] [int] NULL,
	[BankBranchID] [int] NULL,
	[AccountDetails] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_EmployeeFingerPrints]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_EmployeeFingerPrints](
	[EmployeeFingerPrintID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[Finger01] [varbinary](max) NULL,
	[Finger02] [varbinary](max) NULL,
	[Finger03] [varbinary](max) NULL,
	[Finger04] [varbinary](max) NULL,
	[Finger05] [varbinary](max) NULL,
	[Finger06] [varbinary](max) NULL,
	[Finger07] [varbinary](max) NULL,
	[Finger08] [varbinary](max) NULL,
	[Finger09] [varbinary](max) NULL,
	[Finger10] [varbinary](max) NULL,
	[UserPrivilege] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_EmployeeProfiles]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_EmployeeProfiles](
	[EmployeeProfileID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[SettingKeyName] [varchar](50) NULL,
	[SettingKeyID] [int] NULL,
	[SettingKeyValue] [varbinary](max) NULL,
	[SettingKeyDescription] [varchar](max) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_EmployeeProfiles_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_EmployeeProfiles_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_EmployeeProfiles_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_EmployeeQualificationDetails]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_EmployeeQualificationDetails](
	[EmployeeQualificationID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[EmployeeID] [int] NULL,
	[PaassingYear] [varchar](50) NULL,
	[Board] [varchar](50) NULL,
	[Division] [varchar](20) NULL,
	[PercentageMark] [varchar](50) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_EmployeeQualificationDetails_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_EmployeeQualificationDetails_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_EmployeeQualificationDetails_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_Employees]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [varchar](20) NULL,
	[Salutation] [varchar](10) NULL,
	[EmployeeName] [varchar](200) NULL,
	[FatherName] [varchar](100) NULL,
	[SpouseName] [varchar](100) NULL,
	[DateOfBirth] [datetime] NULL,
	[Gender] [varchar](15) NULL,
	[BloodGroup] [varchar](10) NULL,
	[Religion] [varchar](20) NULL,
	[Nationality] [varchar](20) NULL,
	[MaritalStatus] [varchar](20) NULL,
	[KnownAilments] [varchar](100) NULL,
	[IdentificationMark] [varchar](100) NULL,
	[Address_Present_TownOrCity] [varchar](200) NULL,
	[Address_Present_Landmark] [varchar](100) NULL,
	[Address_Present_PinCode] [varchar](10) NULL,
	[Address_Present_DistrictID] [int] NULL,
	[Address_Permanent_TownOrCity] [varchar](200) NULL,
	[Address_Permanent_Landmark] [varchar](100) NULL,
	[Address_Permanent_PinCode] [varchar](10) NULL,
	[Address_Permanent_DistrictID] [int] NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Mobile] [varchar](20) NULL,
	[EMailID] [varchar](50) NULL,
	[PHStatus] [varchar](20) NULL,
	[UserID] [int] NULL,
	[DesignationID] [int] NULL,
	[DepartmentID] [int] NULL,
	[OfficeID] [int] NULL,
	[BioDeviceEmployeeID] [varchar](15) NULL CONSTRAINT [DF_HRMS_MST_EMPLOYEES_BioDeviceEmployeeID]  DEFAULT (''),
	[EPAndGPFAcNo] [varchar](100) NULL,
	[PanNo] [varchar](100) NULL,
	[SbiAccountNo] [varchar](100) NULL,
	[ScaleOfPay] [varchar](100) NULL,
	[GpOrAGP] [varchar](100) NULL,
	[DateOfNextIncrement] [datetime] NULL,
	[ChseRegdNo] [varchar](100) NULL,
	[UnivRegdNo] [varchar](100) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_EMPLOYEES_IsActive_1]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_EMPLOYEES_IsDeleted_1]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_EMPLOYEES_DateAdded_1]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyCode] [varchar](10) NULL,
	[ReferenceName] [varchar](100) NULL,
	[Refmail] [varchar](100) NULL,
	[ReferenceMobile] [varchar](20) NULL,
	[ReferencePhone] [varchar](20) NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_HRMS_MST_EMPLOYEES] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_EmployeeServiceDetails]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_EmployeeServiceDetails](
	[EmployeeServiceDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[JoiningDateInOffice] [datetime] NULL,
	[JoiningDateInService] [datetime] NULL,
	[PostingOfficeID] [int] NULL,
	[DesignationID] [int] NULL,
	[DepartmentID] [int] NULL,
	[Employeetype1] [varchar](50) NULL,
	[Employeetype2] [varchar](50) NULL,
	[Employeetype3] [varchar](50) NULL,
	[Employeetype4] [varchar](50) NULL,
	[ServiceStatusChangeRequestDate] [date] NULL CONSTRAINT [DF_HRMS_MST_EmployeeServiceDetails_ServiceStatusChangeRequestDate]  DEFAULT ('1900-01-01'),
	[ServiceStatusLastWorkingDate] [date] NULL CONSTRAINT [DF_HRMS_MST_EmployeeServiceDetails_ServiceStatusLastWorkingDate]  DEFAULT ('1900-01-01'),
	[ReportingToEmployeeID] [int] NULL,
	[ReportingToEffectiveDateFrom] [datetime] NULL,
	[Intime] [time](2) NULL,
	[OutTime] [time](2) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_EmployeeServiceDetails_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_EmployeeServiceDetails_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_EmployeeServiceDetails_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_EmployeesPayComponents]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_EmployeesPayComponents](
	[RecordNumber] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[PayComponentID] [int] NOT NULL,
	[PayAmount] [numeric](18, 2) NOT NULL,
	[SessionID] [int] NOT NULL,
	[DisplayOrder] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_Events]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_Events](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventDescription] [nvarchar](100) NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_Holidays]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_Holidays](
	[HolidayID] [int] IDENTITY(1,1) NOT NULL,
	[Occasion] [varchar](50) NULL,
	[DateOfOccasion] [date] NULL,
	[IsDateFixed] [bit] NULL CONSTRAINT [DF_MICRO_Holidays_IsDateFixed]  DEFAULT ((0)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_MICRO_Holidays_IsDeleted]  DEFAULT ((0)),
	[IsActive] [bit] NULL CONSTRAINT [DF_MICRO_Holidays_IsActive]  DEFAULT ((1)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_MICRO_Holidays_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_Micro_Holidays] PRIMARY KEY CLUSTERED 
(
	[HolidayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_Holidays_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_Holidays_Officewise](
	[HolidaysOfficewiseID] [int] IDENTITY(1,1) NOT NULL,
	[HolidayID] [int] NULL,
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_MICRO_Holidays_Officewise_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_MICRO_Holidays_Officewise_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_MICRO_Holidays_Officewise_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyCode] [varchar](10) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_Micro_Holidays_Officewise] PRIMARY KEY CLUSTERED 
(
	[HolidaysOfficewiseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_LeaveTypes]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_LeaveTypes](
	[LeaveTypeID] [int] IDENTITY(1,1) NOT NULL,
	[LeaveTypeDescription] [varchar](50) NULL,
	[LeaveTypeAlias] [varchar](20) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF__HRMS_MST___IsAct__353DDB1D]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF__HRMS_MST___IsDel__3631FF56]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF__HRMS_MST___DateA__3726238F]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_LeaveTypes_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_LeaveTypes_Officewise](
	[LeaveTypeOfficewiseID] [int] IDENTITY(1,1) NOT NULL,
	[LeaveTypeID] [int] NULL,
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_LoanTypes]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_LoanTypes](
	[LoanID] [int] IDENTITY(1,1) NOT NULL,
	[LoanTypeDescriptions] [varchar](50) NULL,
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_LoanTypes_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_LoanTypes_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_LoanTypes_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_OfficeTimings]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_OfficeTimings](
	[OfficeTimingID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeID] [int] NULL,
	[InTime] [time](2) NULL,
	[OutTime] [time](2) NULL,
	[IsForAll] [bit] NULL,
	[IsForSelf] [bit] NULL,
	[EffectiveDateFrom] [date] NULL,
	[EffectiveDateTo] [date] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_PayCategories]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_PayCategories](
	[PayCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[PayCategoryDescription] [varchar](30) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_PayComponents]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_PayComponents](
	[PayComponentID] [int] IDENTITY(1,1) NOT NULL,
	[PayComponentDescription] [varchar](30) NULL,
	[PayComponentType] [varchar](20) NULL,
	[ParentComponentID] [int] NULL,
	[Relation] [varchar](50) NULL,
	[DisplayOrder] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_PayComponents_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_PayComponents_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_PayComponents_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Comment] [varchar](100) NULL,
	[PayComponentCategory] [varchar](100) NULL,
	[IsParent] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_PayGrades]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_PayGrades](
	[PayGradeID] [int] IDENTITY(1,1) NOT NULL,
	[PayGradeDescription] [varchar](30) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_PayRoll]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_PayRoll](
	[PayRollID] [int] IDENTITY(1,1) NOT NULL,
	[BillNo] [int] NULL,
	[TvNo] [int] NULL,
	[SessionID] [int] NULL,
	[Month] [varchar](20) NULL,
	[Year] [varchar](20) NULL,
	[BillDDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[GrossPay] [decimal](18, 2) NULL,
	[TotalWorkingDays] [int] NULL,
	[TotalPresentWorkingDays] [int] NULL,
	[BankLoanEMI] [decimal](18, 2) NULL,
	[FixedDeduction] [decimal](18, 2) NULL,
	[OtherDeduction] [decimal](18, 2) NULL,
	[PresentDay] [int] NULL,
	[NetPayable] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyCode] [varchar](10) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_PayRolls]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_PayRolls](
	[PayRollID] [int] IDENTITY(1,1) NOT NULL,
	[BillNo] [int] NULL,
	[TvNo] [int] NULL,
	[SessionID] [int] NULL,
	[Months] [varchar](20) NULL,
	[Years] [varchar](20) NULL,
	[BillDDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[GrossPay] [decimal](18, 2) NULL,
	[TotalWorkingDays] [int] NULL,
	[TotalPresentWorkingDays] [int] NULL,
	[BankLoanEMI] [decimal](18, 2) NULL,
	[FixedDeduction] [decimal](18, 2) NULL,
	[OtherDeduction] [decimal](18, 2) NULL,
	[PresentDay] [int] NULL,
	[NetPayable] [decimal](18, 2) NULL,
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyCode] [varchar](10) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_PayStructures]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_PayStructures](
	[PayStructureID] [int] NULL,
	[PayCategoryID] [int] NULL,
	[PayGradeID] [int] NULL,
	[PayComponentID] [int] NULL,
	[PayStructureValue] [decimal](18, 2) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_PolicyTypes]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_PolicyTypes](
	[PolicyID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyTypeDescriptions] [varchar](50) NULL,
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_RequestTypes]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_RequestTypes](
	[RequestTypeID] [int] IDENTITY(1,1) NOT NULL,
	[RequestTypeDescription] [varchar](100) NULL,
	[RelatedToDepartmentID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[CompanyCode] [varchar](10) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_Settings]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_Settings](
	[HRMS_SettingID] [int] IDENTITY(1,1) NOT NULL,
	[SettingKeyID] [int] NULL,
	[HRMS_SettingKeyValue] [varchar](max) NULL,
	[HRMS_SettingDescription] [varchar](max) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
	[OfficeID] [int] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_Shifts]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_Shifts](
	[ShiftID] [int] IDENTITY(1,1) NOT NULL,
	[ShiftDescription] [varchar](20) NULL,
	[ShiftAlias] [varchar](20) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_Shifts_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_Shifts_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_Shifts_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL CONSTRAINT [DF_HRMS_MST_Shifts_DateModified]  DEFAULT (getdate()),
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_Shifts_Officewise]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_Shifts_Officewise](
	[ShiftOfficewiseID] [int] IDENTITY(1,1) NOT NULL,
	[OfficeID] [int] NULL,
	[ShiftID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_Shifts_Officewise_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_Shifts_Officewise_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_Shifts_Officewise_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL CONSTRAINT [DF_HRMS_MST_Shifts_Officewise_DateModified]  DEFAULT (getdate()),
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_MST_ShiftTimings]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_MST_ShiftTimings](
	[ShiftTimingID] [int] IDENTITY(1,1) NOT NULL,
	[ShiftID] [int] NULL,
	[OfficeID] [int] NULL,
	[DepartmentID] [int] NULL,
	[InTime] [datetime] NULL,
	[OutTime] [datetime] NULL,
	[CalculationMode] [varchar](10) NULL,
	[WeeklyOffDay] [varchar](10) NULL,
	[EffectiveDate] [datetime] NULL CONSTRAINT [DF_HRMS_MST_ShiftTimings_EffectiveDate]  DEFAULT (getdate()),
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_MST_ShiftTimings_IsActive_1]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_MST_ShiftTimings_IsDeleted_1]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_MST_ShiftTimings_DateAdded_1]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_AttendanceAmendments]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_AttendanceAmendments](
	[AttendanceAmendmentID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[DateOfAttendance] [datetime] NULL,
	[AttendanceType] [varchar](3) NULL,
	[OldTime] [datetime] NULL,
	[NewTime] [datetime] NULL,
	[Reason] [varchar](100) NULL,
	[Status] [varchar](20) NULL CONSTRAINT [DF_HRMS_TRN_AttendanceAmendments_Status]  DEFAULT ('Pending'),
	[ApprovedBy] [int] NULL,
	[ApprovalOrRejectionReason] [varchar](200) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_TRN_AttendanceAmendments_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_TRN_AttendanceAmendments_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_TRN_AttendanceAmendments_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_AttendanceApplications]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_AttendanceApplications](
	[AttendanceApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[DateOfAttendance] [datetime] NULL,
	[InTime] [datetime] NULL,
	[OutTime] [datetime] NULL,
	[Reason] [varchar](100) NULL,
	[ApprovedBy] [int] NULL,
	[ApprovalOrRejectionReason] [varchar](500) NULL,
	[Status] [varchar](50) NULL CONSTRAINT [DF_HRMS_TRN_AttendanceApplications_Status]  DEFAULT ('Pending'),
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_TRN_AttendanceApplications_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_TRN_AttendanceApplications_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_TRN_AttendanceApplications_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_Attendances]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_Attendances](
	[AttendanceID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [bigint] NOT NULL,
	[DateOfAttendance] [date] NOT NULL,
	[InTime] [varchar](25) NULL CONSTRAINT [DF_HRMS_TRN_Attendances_InTime]  DEFAULT (''),
	[InSource] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_InSource]  DEFAULT ((0)),
	[OutTime] [varchar](25) NULL CONSTRAINT [DF_HRMS_TRN_Attendances_OutTime]  DEFAULT (''),
	[OutSource] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_OutSource]  DEFAULT ((0)),
	[ShiftAlias] [varchar](50) NULL,
	[IsPresent] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_IsPresent]  DEFAULT ((0)),
	[IsAbsent] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_IsAbsent]  DEFAULT ((0)),
	[IsHalfDay] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_IsHalfDay]  DEFAULT ((0)),
	[IsWeeklyOff] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_IsWeeklyOff]  DEFAULT ((0)),
	[IsPresentOnWeeklyOff] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_IsPresentOnWeeklyOff]  DEFAULT ((0)),
	[IsHoliday] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_IsHoliday]  DEFAULT ((0)),
	[HolidayType] [int] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_HolidayType]  DEFAULT ((0)),
	[IsPresentOnHoliday] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_IsPresentOnHoliday]  DEFAULT ((0)),
	[IsLeave] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_IsLeave]  DEFAULT ((0)),
	[LeaveTypeID] [int] NULL,
	[IsLate] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_IsLate]  DEFAULT ((0)),
	[LateInMinutes] [int] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_LateInMinutes]  DEFAULT ((0)),
	[IsOvertime] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_IsOvertime]  DEFAULT ((0)),
	[OvertimeInMinutes] [int] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_OvertimeInMinutes]  DEFAULT ((0)),
	[DayStatus] [varchar](30) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_TRN_Attendances_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_EmployeeLeaveBalances]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_EmployeeLeaveBalances](
	[EmployeeLeaveBalanceID] [int] IDENTITY(1,1) NOT NULL,
	[AccountingYear] [varchar](10) NULL,
	[Quarter] [char](2) NULL,
	[EmployeeID] [int] NULL,
	[LeaveTypeID] [int] NULL,
	[OpeningBalance] [int] NULL,
	[LeavesCreditedThisQuarter] [int] NULL,
	[TotalNumberOfLeavesForAdminPurpose] [int] NULL,
	[TotalNumberOfLeavesElligibleToAvail] [int] NULL,
	[LeavesConsumedThisQuarter] [int] NULL CONSTRAINT [DF_HRMS_TRN_EmployeeLeaveBalances_LeavesConsumedThisQuarter]  DEFAULT ((0)),
	[IsClosed] [bit] NULL CONSTRAINT [DF_HRMS_TRN_EmployeeLeaveBalances_IsClosed]  DEFAULT ((0)),
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_TRN_EmployeeLeaveBalances_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_TRN_EmployeeLeaveBalances_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_TRN_EmployeeLeaveBalances_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_EmployeeLoanReceipts]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_EmployeeLoanReceipts](
	[EmployeeloanReceiptID] [int] IDENTITY(1,1) NOT NULL,
	[SessionID] [varchar](20) NULL,
	[EmployeeLoanID] [int] NULL,
	[DateOfRecovery] [datetime] NULL,
	[AmountPaid] [decimal](18, 2) NULL,
	[InstallmentNumber] [int] NULL,
	[RecoveryMonth] [varchar](20) NULL,
	[RecoveryYear] [varchar](20) NULL,
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsCancelled] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_EmployeeOfficeAccesses]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_EmployeeOfficeAccesses](
	[EmployeeOfficeAccessID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_LeaveApplications]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_LeaveApplications](
	[LeaveApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[DateApplied] [datetime] NULL,
	[LeaveTypeID] [int] NULL,
	[DateFrom] [datetime] NULL,
	[DateTo] [datetime] NULL,
	[LeaveApplicationReason] [varchar](100) NULL,
	[Status] [varchar](20) NULL CONSTRAINT [DF_HRMS_TRN_LeaveApplications_Status]  DEFAULT ('Pending'),
	[ApprovedBy] [int] NULL,
	[ApprovedOn] [datetime] NULL,
	[ApprovalOrRejectionReason] [varchar](50) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_TRN_LeaveApplications_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_TRN_LeaveApplications_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_TRN_LeaveApplications_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_LeaveTypeSettings]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_LeaveTypeSettings](
	[LeaveTypeSettingID] [int] IDENTITY(1,1) NOT NULL,
	[LeaveTypeID] [int] NOT NULL,
	[NumberOfDaysAllowed] [int] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_NumberOfDaysAllowed]  DEFAULT ((0)),
	[NumberOfConsecutiveDaysAllowed] [int] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_NumberOfConsecutiveDaysAllowed]  DEFAULT ((0)),
	[ForGender] [varchar](10) NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_ForGender]  DEFAULT ('Both'),
	[CreditPeriodInMonths] [int] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_CreditPeriodInMonths]  DEFAULT ((0)),
	[MaximumAccumulatedDays] [int] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_MaximumAccumulatedDays]  DEFAULT ((0)),
	[CalculationMode] [int] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_CalculationMode]  DEFAULT ((0)),
	[IsTransferrable] [bit] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_IsTransferrable]  DEFAULT ((0)),
	[IsEncashable] [bit] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_IsEncashable]  DEFAULT ((0)),
	[LeaveCreditInterval] [varchar](10) NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_IsAddedQuarterly]  DEFAULT ('QLY'),
	[Quarter1] [int] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_Quarter1]  DEFAULT ((0)),
	[Quarter2] [int] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_Quarter2]  DEFAULT ((0)),
	[Quarter3] [int] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_Quarter3]  DEFAULT ((0)),
	[Quarter4] [int] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_Quarter4]  DEFAULT ((0)),
	[EffectiveDateFrom] [datetime] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_EffectiveDateFrom]  DEFAULT (getdate()),
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL CONSTRAINT [DF_HRMS_TRN_LeaveTypeSettings_AddedBy]  DEFAULT ((1)),
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_LoanPayments]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_LoanPayments](
	[LoanApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[LoanID] [int] NULL,
	[SessionID] [int] NULL,
	[LoanApplicationDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[LoanAmount] [decimal](18, 2) NULL,
	[LoanStatus] [bit] NULL,
	[ClosureDate] [datetime] NULL,
	[TotalNoInstallment] [int] NULL,
	[EMI] [decimal](18, 2) NULL,
	[RequiredFor] [varchar](max) NULL,
	[SanctionedByID] [int] NULL,
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_TRN_LoanPayments_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_TRN_LoanPayments_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_TRN_LoanPayments_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_ShiftSchedules]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_ShiftSchedules](
	[ShiftScheduleID] [int] IDENTITY(1,1) NOT NULL,
	[ShiftScheduleForWeekDay] [varchar](10) NULL,
	[ShiftScheduleForDate] [date] NULL,
	[EmployeeID] [int] NULL,
	[ShiftTimingID] [int] NULL,
	[EffectiveDateFrom] [datetime] NULL CONSTRAINT [DF_HRMS_TRN_ShiftSchedules_EffectiveDateFrom]  DEFAULT (getdate()),
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_TRN_ShiftSchedules_IsActive_2]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_TRN_ShiftSchedules_IsDeleted_2]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_TRN_ShiftSchedules_DateAdded_2]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_StaffLIC_InstalMentReceive]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_StaffLIC_InstalMentReceive](
	[PolicyInstalmentID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyApplicationID] [int] NULL,
	[EMI] [decimal](18, 2) NULL,
	[TotalNoInstallment] [int] NULL,
	[PayAmount] [decimal](18, 2) NULL,
	[PayDate] [datetime] NULL,
	[EmployeID] [int] NULL,
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_StaffLIC_Payments]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_StaffLIC_Payments](
	[PolicyApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyID] [int] NULL,
	[SessionID] [int] NULL,
	[PolicyDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[PolicyAmount] [decimal](18, 2) NULL,
	[PolicyStatus] [bit] NULL,
	[ClosureDate] [datetime] NULL,
	[TotalNoInstallment] [int] NULL,
	[EMI] [decimal](18, 2) NULL,
	[Comment] [varchar](max) NULL,
	[SanctionedByID] [int] NULL,
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_HRMS_TRN_StaffLIC_Payments_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_HRMS_TRN_StaffLIC_Payments_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_HRMS_TRN_StaffLIC_Payments_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_TourApplications]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_TourApplications](
	[TourApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[DateFrom] [datetime] NULL,
	[DateTo] [datetime] NULL,
	[TourPurpose] [varchar](100) NULL,
	[Status] [varchar](50) NULL,
	[ApprovedBy] [int] NULL,
	[ApprovalOrRejectionReason] [varchar](500) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRMS_TRN_TransactionPasswords]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRMS_TRN_TransactionPasswords](
	[TransactionPasswordID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[TransactionPassword] [varchar](20) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_Alumni]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_Alumni](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[StudentRegdNo] [varchar](100) NULL,
	[StudentCode] [varchar](100) NULL,
	[QualID] [int] NULL,
	[StreamID] [int] NULL,
	[MRINo] [varchar](100) NULL,
	[ClassID] [varchar](100) NULL,
	[ROLLNo] [varchar](100) NULL,
	[TCNo] [varchar](100) NULL,
	[Salutation] [varchar](10) NULL,
	[StudentName] [varchar](200) NULL,
	[FatherName] [varchar](100) NULL,
	[MotherName] [varchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[Caste] [varchar](10) NULL,
	[PHStatus] [varchar](20) NULL,
	[Status] [varchar](20) NULL,
	[TotalFeesPaid] [varchar](200) NULL,
	[DateOfBirth] [datetime] NULL,
	[DateOfAdmission] [datetime] NULL,
	[DateOfLeaving] [smalldatetime] NULL,
	[Age] [int] NULL,
	[Address_Present_TownOrCity] [varchar](200) NULL,
	[Address_Present_Landmark] [varchar](100) NULL,
	[Address_Present_PinCode] [varchar](10) NULL,
	[Address_Present_DistrictID] [int] NULL,
	[Address_Permanent_TownOrCity] [varchar](200) NULL,
	[Address_Permanent_Landmark] [varchar](100) NULL,
	[Address_Permanent_PinCode] [varchar](10) NULL,
	[Address_Permanent_DistrictID] [int] NULL,
	[LandPhoneNumber] [varchar](20) NULL,
	[MobileNumber] [varchar](20) NULL,
	[EMailID] [varchar](50) NULL,
	[ReceiptNo] [varchar](100) NULL,
	[SessionID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_iCAS_Alumni_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_iCAS_Alumni_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_iCAS_Alumni_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[RegdID] [numeric](18, 0) NULL DEFAULT ((0)),
	[ADM-STAGE-1] [int] NULL CONSTRAINT [DF_iCAS_Alumni_ADM-STAGE-1]  DEFAULT ((0)),
	[REG-STATUS] [int] NULL CONSTRAINT [DF_iCAS_Alumni_REG-STATUS]  DEFAULT ((0)),
	[AlumniFlag] [varchar](2) NULL,
	[AlumniLifeMemberStatus] [varchar](2) NULL,
	[AlumniMembershipFeesPaid] [numeric](18, 0) NULL,
	[AlumniMembershipFeesPaidDetails] [varchar](max) NULL,
	[AlumniPresentOccupation] [varchar](100) NULL,
	[AlumniYearOfPassing] [varchar](100) NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_Classes]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_Classes](
	[SessionID] [int] NULL,
	[QualID] [int] NULL,
	[StreamID] [int] NULL,
	[StreamYearNo] [varchar](5) NOT NULL,
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NOT NULL,
	[IsActive] [bit] NULL DEFAULT ((1)),
	[IsDeleted] [bit] NULL DEFAULT ((0)),
	[DateAdded] [datetime] NULL DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[NoOfSeat] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ICAS_Establishments]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ICAS_Establishments](
	[EstbID] [int] IDENTITY(1,1) NOT NULL,
	[EstbDate] [datetime] NULL CONSTRAINT [DF_ICAS_Establishments_EstbDate]  DEFAULT (getdate()),
	[EstbCode] [varchar](10) NULL,
	[EstbTypeCode] [varchar](3) NULL,
	[EstbTitle] [varchar](100) NULL,
	[EstbDescription] [varchar](max) NULL,
	[EstbUploadFile] [varbinary](max) NULL,
	[EstbUploadFileType] [varchar](50) NULL,
	[EstbMessage] [varchar](max) NULL,
	[EstbViewStartDate] [datetime] NULL,
	[EstbViewEndDate] [datetime] NULL,
	[EstbStatusFlag] [char](1) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[AddedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[DateAdded] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ICAS_EstablishmentTypes]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ICAS_EstablishmentTypes](
	[EstbTypeID] [int] IDENTITY(1,1) NOT NULL,
	[EstbTypeCode] [char](1) NULL,
	[EstbTypeDescription] [varchar](max) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[OfficeID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_Examintation]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_Examintation](
	[ExamID] [int] IDENTITY(1,1) NOT NULL,
	[ExamName] [varchar](max) NULL,
	[SessionID] [int] NULL,
	[QualID] [int] NULL,
	[DateOfStart] [datetime] NULL,
	[DateOfClose] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_iCAS_Examintation_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_iCAS_Examintation_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL DEFAULT (getdate()),
	[AddedBy] [varchar](max) NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [varchar](max) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_iCAS_Examintation] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_ExamPassed]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_ExamPassed](
	[StudentExamPassID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[QualID] [int] NULL,
	[YearOfPassing] [varchar](4) NULL,
	[InstituteName] [varchar](100) NULL,
	[Division] [varchar](10) NULL,
	[TotalMarks] [int] NULL,
	[SecureMarks] [int] NULL,
	[PercentageMarks] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_ExamSchedule]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_ExamSchedule](
	[ExamScheduleID] [int] IDENTITY(1,1) NOT NULL,
	[ExamScheduleName] [varchar](100) NULL,
	[ExamID] [int] NOT NULL,
	[StreamID] [int] NOT NULL,
	[QualID] [int] NULL,
	[ClassID] [int] NULL,
	[SubjectID] [int] NOT NULL,
	[FullMark] [int] NULL,
	[PassMark] [int] NOT NULL,
	[ExamDate] [date] NOT NULL,
	[StartTime] [numeric](18, 2) NOT NULL,
	[CloseTime] [numeric](18, 2) NOT NULL,
	[InvisilatorUserID] [int] NOT NULL,
	[RoomNo] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_iCAS_ExamSchedule] PRIMARY KEY CLUSTERED 
(
	[ExamScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ICAS_FIN_DefaultAccountFee]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ICAS_FIN_DefaultAccountFee](
	[Slno] [int] IDENTITY(1,1) NOT NULL,
	[QualID] [int] NULL,
	[StreamID] [int] NULL,
	[AccountTypeID] [int] NULL,
	[AccountGroupID] [int] NULL,
	[AccountID] [int] NULL,
	[DefaultFee] [numeric](18, 2) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ICAS_FIN_DefaultAccountFee_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ICAS_FIN_DefaultAccountFee_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ICAS_FIN_DefaultAccountFee_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](50) NULL,
	[VC_FIELD2] [varchar](50) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [date] NULL,
	[DT_FIELD2] [date] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
 CONSTRAINT [PK_ICAS_FIN_DefaultAccountFee] PRIMARY KEY CLUSTERED 
(
	[Slno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_FINA_AccountHeads]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_FINA_AccountHeads](
	[AccountHeadID] [int] IDENTITY(1,1) NOT NULL,
	[AccountHeadDescription] [varchar](100) NULL,
	[AccountHeadType] [varchar](20) NULL,
	[ParentAccountHeadID] [int] NULL,
	[IsPrimary] [bit] NULL CONSTRAINT [iCAS_FINA_AccountHeads_IsPrimary]  DEFAULT ((0)),
	[DisplayOrder] [int] NOT NULL,
	[IsActive] [bit] NULL CONSTRAINT [iCAS_FINA_AccountHeads_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [iCAS_FINA_AccountHeads_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [iCAS_FINA_AccountHeads_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_FINA_Accounts]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_FINA_Accounts](
	[AccountID] [int] NOT NULL,
	[AccountDescription] [varchar](100) NULL,
	[AccountHeadID] [int] NULL,
	[ParentAccountID] [int] NULL,
	[IsPrimary] [bit] NULL,
	[AccessType] [varchar](20) NULL,
	[AnalysisFlag] [varchar](20) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_FINA_TRN_Transactions]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_FINA_TRN_Transactions](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionCode] [varchar](50) NULL,
	[TransactionDate] [datetime] NULL,
	[AccountID] [int] NULL,
	[AccountHeadID] [varchar](100) NULL,
	[TransactionToCategory] [varchar](100) NULL,
	[TransactionToID] [varchar](200) NULL,
	[ThirdPartyDescription] [varchar](100) NULL,
	[TransactionAmount] [decimal](18, 2) NULL,
	[TransactionMode] [varchar](20) NULL,
	[TransactionReference] [varchar](250) NULL,
	[BankName] [varchar](250) NULL,
	[ChqDate] [varchar](250) NULL,
	[ChqNumber] [varchar](250) NULL,
	[EntrySide] [varchar](10) NULL,
	[Remarks] [varchar](max) NULL,
	[AutoReferenceID] [int] NULL,
	[OfficeID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_Quals]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_Quals](
	[QualID] [int] IDENTITY(1,1) NOT NULL,
	[QualCode] [varchar](7) NOT NULL,
	[QualType] [varchar](2) NOT NULL,
	[QualName] [varchar](50) NOT NULL,
	[IsActive] [bit] NULL DEFAULT ((1)),
	[IsDeleted] [bit] NULL DEFAULT ((0)),
	[DateAdded] [datetime] NULL DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[ClassType] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ICAS_Question_Option]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ICAS_Question_Option](
	[OptionID] [int] IDENTITY(1,1) NOT NULL,
	[OptionCode] [varchar](20) NULL,
	[QuestionID] [int] NULL,
	[Option1] [varchar](1000) NULL,
	[Option2] [varchar](1000) NULL,
	[Option3] [varchar](1000) NULL,
	[Option4] [varchar](1000) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ICAS_Question_Option_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ICAS_Question_Option_IsDeleted]  DEFAULT ((0)),
	[AddedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ICAS_Question_Option_DateAdded]  DEFAULT (getdate()),
	[DateModified] [datetime] NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ICAS_Questions]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ICAS_Questions](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionCode] [varchar](20) NULL,
	[QuestionTitle] [varchar](100) NULL,
	[QuestionDesc] [varchar](500) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ICAS_Questions_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ICAS_Questions_IsDeleted]  DEFAULT ((0)),
	[AddedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ICAS_Questions_DateAdded]  DEFAULT (getdate()),
	[DateModified] [datetime] NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_Sessions]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_Sessions](
	[SessionID] [int] IDENTITY(1,1) NOT NULL,
	[SessionCode] [varchar](7) NOT NULL,
	[SessionType] [varchar](2) NOT NULL,
	[SessionName] [varchar](50) NOT NULL,
	[SessionCloseFlag] [varchar](2) NOT NULL,
	[SessionStartDate] [datetime] NOT NULL,
	[SessionCloseDate] [datetime] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_Streams]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_Streams](
	[StreamID] [int] IDENTITY(1,1) NOT NULL,
	[StreamName] [varchar](50) NOT NULL,
	[IsActive] [bit] NULL DEFAULT ((1)),
	[IsDeleted] [bit] NULL DEFAULT ((0)),
	[DateAdded] [datetime] NULL DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_Student_DailyAttendance]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_Student_DailyAttendance](
	[AttenID] [int] IDENTITY(1,1) NOT NULL,
	[StudentIDS] [varchar](500) NULL,
	[SubjectID] [int] NULL,
	[StaffID] [int] NULL,
	[Date] [datetime] NULL,
	[ClassStartTime] [numeric](18, 2) NULL,
	[ClassCloseTime] [numeric](18, 2) NULL,
	[Comment] [varchar](max) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[SessionID] [int] NULL,
	[SectionID] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
	[OfficeID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_Student_PreviousQuals]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_Student_PreviousQuals](
	[PreQualID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[QualID] [int] NOT NULL,
	[PassingYear] [varchar](7) NOT NULL,
	[Board] [varchar](250) NOT NULL,
	[Division] [varchar](250) NOT NULL,
	[Percentage] [varchar](50) NOT NULL,
	[IsActive] [bit] NULL DEFAULT ((1)),
	[IsDeleted] [bit] NULL DEFAULT ((0)),
	[DateAdded] [datetime] NULL DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_Student_SectionGrouping]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_Student_SectionGrouping](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[StreamID] [int] NOT NULL,
	[ClassID] [int] NOT NULL,
	[StudentIDS] [varchar](500) NULL,
	[SubjectID] [int] NULL,
	[SectionID] [int] NULL,
	[SectionName] [varchar](300) NULL,
	[Comment] [varchar](max) NULL,
	[SessionID] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[CompanyID] [int] NULL,
	[OfficeID] [int] NULL,
 CONSTRAINT [PK_iCAS_Student_SectionGrouping] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_Student_SectionRegister]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iCAS_Student_SectionRegister](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NULL,
	[SubjectID] [int] NULL,
	[SectionID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_StudentSectionRegister] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[iCAS_StudentExams]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_StudentExams](
	[Exam_Mark_ScheduleID] [int] IDENTITY(1,1) NOT NULL,
	[ExamScheduleID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[MarksObtained] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VarifiedBy] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_Students]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_Students](
	[StudentID] [bigint] IDENTITY(10000000,1) NOT NULL,
	[SessionID] [int] NOT NULL,
	[DateOfAdmission] [datetime] NULL,
	[StreamID] [int] NULL,
	[ClassID] [int] NOT NULL,
	[QualID] [int] NULL,
	[RollNo] [varchar](100) NULL,
	[MRINo] [varchar](100) NULL,
	[StudentCode] [varchar](100) NULL,
	[StudentRegdNo] [varchar](100) NULL,
	[Salutation] [varchar](10) NULL,
	[StudentName] [varchar](200) NULL,
	[FatherName] [varchar](100) NULL,
	[MotherName] [varchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[Caste] [varchar](10) NULL,
	[PHStatus] [varchar](20) NULL,
	[BloodGroup] [varchar](20) NULL,
	[Status] [varchar](20) NULL,
	[TotalFeesPaid] [numeric](18, 0) NULL,
	[DateOfBirth] [datetime] NULL,
	[Age] [int] NULL,
	[TCNo] [varchar](100) NULL,
	[DateOfLeaving] [smalldatetime] NULL,
	[Address_Present_TownOrCity] [varchar](200) NULL,
	[Address_Present_Landmark] [varchar](100) NULL,
	[Address_Present_PinCode] [varchar](10) NULL,
	[Address_Present_DistrictID] [int] NULL,
	[Address_Permanent_TownOrCity] [varchar](200) NULL,
	[Address_Permanent_Landmark] [varchar](100) NULL,
	[Address_Permanent_PinCode] [varchar](10) NULL,
	[Address_Permanent_DistrictID] [int] NULL,
	[LandPhoneNumber] [varchar](20) NULL,
	[MobileNumber] [varchar](20) NULL,
	[EmailID] [varchar](150) NULL,
	[ReceiptNo] [varchar](100) NULL,
	[RegdID] [numeric](18, 0) NULL DEFAULT ((0)),
	[ADM-STAGE-1] [int] NULL CONSTRAINT [DF_iCAS_Students_ADM-STAGE-1]  DEFAULT ((0)),
	[REG-STATUS] [int] NULL CONSTRAINT [DF_iCAS_Students_REG-STATUS]  DEFAULT ((0)),
	[AlumniFlag] [varchar](2) NULL,
	[AlumniLifeMemberStatus] [varchar](2) NULL,
	[AlumniMembershipFeesPaid] [numeric](18, 0) NULL,
	[AlumniMembershipFeesPaidDetails] [varchar](max) NULL,
	[AlumniPresentOccupation] [varchar](100) NULL,
	[AlumniYearOfPassing] [varchar](100) NULL,
	[Photo_URL_SmallSize] [varchar](max) NULL,
	[Photo_URL_BigSize] [varchar](max) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_iCAS_Students_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_iCAS_Students_IsDeleted]  DEFAULT ((0)),
	[DateAdded] [datetime] NULL CONSTRAINT [DF_iCAS_Students_DateAdded]  DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[OfficeID] [int] NOT NULL,
	[CompanyID] [int] NULL,
	[MasterAccountID] [int] NULL,
 CONSTRAINT [PK_iCAS_Students] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_StudentSection]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_StudentSection](
	[SectionID] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [varchar](250) NULL,
 CONSTRAINT [PK_iCAS_StudentSection] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_StudentSubjectsRegistered]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_StudentSubjectsRegistered](
	[StudentSubjectsTakenID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[SubjectType] [varchar](20) NULL,
	[SubjectID] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[AddedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[DateAdded] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[SessionID] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_iCAS_StudentSubjectsRegistered] PRIMARY KEY CLUSTERED 
(
	[StudentSubjectsTakenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_StudentSubjectsTaken]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_StudentSubjectsTaken](
	[StudentSubjectsTakenID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[SubjectType] [varchar](20) NULL,
	[SubjectID] [int] NOT NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_iCAS_StudentSubjectsTaken_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_iCAS_StudentSubjectsTaken_IsDeleted]  DEFAULT ((0)),
	[AddedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[DateAdded] [datetime] NULL CONSTRAINT [DF_iCAS_StudentSubjectsTaken_DateAdded]  DEFAULT (getdate()),
	[DateModified] [datetime] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[SessionID] [int] NULL,
	[IsApproved] [int] NULL CONSTRAINT [DF_iCAS_StudentSubjectsTaken_IsApproved]  DEFAULT ((0)),
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_iCAS_StudentSubjectsTaken] PRIMARY KEY CLUSTERED 
(
	[StudentSubjectsTakenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_SubjectPapers]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_SubjectPapers](
	[SubjectPaperID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectID] [int] NOT NULL,
	[SubjectPaperName] [varchar](50) NOT NULL,
	[SubjectFullMark] [int] NULL,
	[SubjectPassMark] [int] NULL,
	[SubjectPracticalFlag] [varchar](1) NULL,
	[SubjectPracticalMark] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[AddedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[DateAdded] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_Subjects]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_Subjects](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [varchar](50) NOT NULL,
	[SubjectTypeID] [int] NULL,
	[SubjectTypeName] [varchar](100) NULL,
	[QualID] [int] NULL,
	[ClassID] [int] NULL,
	[StreamID] [int] NULL,
	[SubjectFullMark] [int] NULL,
	[SubjectPassMark] [int] NULL,
	[SubjectPracticalFlag] [bit] NULL,
	[SubjectPracticalMark] [int] NULL,
	[SessionID] [int] NULL,
	[ParentID] [varchar](max) NULL,
	[StaffID] [int] NULL,
	[isParent] [int] NULL,
	[isMain] [char](1) NULL,
	[isRoot] [char](1) NULL,
	[IsActive] [bit] NULL DEFAULT ((1)),
	[IsDeleted] [bit] NULL DEFAULT ((0)),
	[DateAdded] [datetime] NULL DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[INT_FIELD1] [int] NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_SubjectType]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_SubjectType](
	[SubjectTypeID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectTypeName] [varchar](50) NOT NULL,
	[QualID] [int] NOT NULL,
	[QualName] [varchar](50) NOT NULL,
	[IsActive] [bit] NULL DEFAULT ((1)),
	[IsDeleted] [bit] NULL DEFAULT ((0)),
	[DateAdded] [datetime] NULL DEFAULT (getdate()),
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[StreamID] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iCAS_TRANSACTIONS]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iCAS_TRANSACTIONS](
	[TRAN_ID] [int] IDENTITY(1,1) NOT NULL,
	[TRAN_DATE] [smalldatetime] NULL,
	[TRAN_MODE] [varchar](10) NULL,
	[TRAN_TYPE] [varchar](10) NULL,
	[TRAN_DRCR] [varchar](10) NULL,
	[TRAN_AMOUNT] [numeric](18, 2) NULL,
	[TRAN_SOURCE] [varchar](max) NULL,
	[ACCOUNT_CODE] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DateAdded] [datetime] NULL,
	[AddedBy] [int] NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](100) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ICAS_UserFeedbacks]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ICAS_UserFeedbacks](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[FeedbackCode] [varchar](20) NULL,
	[QuestionID] [int] NULL,
	[OptionID] [int] NULL,
	[UserID] [varchar](50) NULL,
	[OptionValue] [varchar](1000) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_ICAS_UserFeedbacks_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_ICAS_UserFeedbacks_IsDeleted]  DEFAULT ((0)),
	[AddedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[DateAdded] [datetime] NULL CONSTRAINT [DF_ICAS_UserFeedbacks_DateAdded]  DEFAULT (getdate()),
	[DateModified] [datetime] NULL,
	[OfficeID] [int] NULL,
	[CompanyID] [int] NULL,
	[VC_FIELD1] [varchar](100) NULL,
	[VC_FIELD2] [varchar](max) NULL,
	[NU_FIELD1] [int] NULL,
	[NU_FIELD2] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[DT_FIELD2] [datetime] NULL,
	[CH_FIELD1] [char](1) NULL,
	[CH_FIELD2] [char](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIB_Book_TransactionDetails]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIB_Book_TransactionDetails](
	[TranDetailsID] [bigint] IDENTITY(1,1) NOT NULL,
	[TransactionID] [bigint] NOT NULL,
	[TransactionSequence] [int] NULL CONSTRAINT [DF__LIB_Book___Trans__5D4C97CE]  DEFAULT ((1)),
	[TransactionBookID] [int] NULL,
	[Transaction2UserID] [int] NULL,
	[ExpectedReceiveDate] [datetime] NULL,
	[ActualReceiveOrMissingDate] [datetime] NULL,
	[FineAmountPerDay] [money] NULL,
	[NoOfDaysDelayed] [int] NULL,
	[FineAmountTotal] [money] NULL,
	[FineAmountCollected] [money] NULL,
 CONSTRAINT [PK__LIB_Book__F2B27FE67D53AD22] PRIMARY KEY CLUSTERED 
(
	[TranDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LIB_Book_Transactions]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIB_Book_Transactions](
	[TransactionID] [bigint] IDENTITY(1,1) NOT NULL,
	[TransactionDate] [datetime] NOT NULL CONSTRAINT [DF__LIB_Book_T__Date__569F9A3F]  DEFAULT (getdate()),
	[TransactionType] [varchar](50) NOT NULL,
	[UserType] [varchar](50) NOT NULL,
	[UserID] [int] NOT NULL,
	[TransactionFlag] [varchar](50) NULL,
	[VC_FIELD1] [varchar](max) NULL,
	[YN_FIELD1] [char](1) NULL,
	[NU_FIELD1] [int] NULL,
	[DT_FIELD1] [datetime] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF__LIB_Book___IsAct__5793BE78]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF__LIB_Book___IsDel__5887E2B1]  DEFAULT ((0)),
	[OfficeID] [int] NULL CONSTRAINT [DF__LIB_Book___Offic__597C06EA]  DEFAULT ((44)),
	[CompanyID] [int] NULL CONSTRAINT [DF__LIB_Book___Compa__5A702B23]  DEFAULT ((8))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIB_Master_Books]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIB_Master_Books](
	[BookID] [bigint] IDENTITY(10000000,1) NOT NULL,
	[BookType] [varchar](3) NULL,
	[SegmentID] [int] NULL,
	[CategoryID] [int] NULL,
	[CategoryCode] [varchar](4) NULL,
	[BillNo] [varchar](20) NULL,
	[BillDate] [datetime] NULL,
	[AuthorID] [int] NULL,
	[PublisherID] [int] NULL,
	[SupplierID] [int] NULL,
	[SubjectID] [int] NULL,
	[AccessionNo] [int] NULL,
	[AccessionDate] [datetime] NULL,
	[ClassNo] [varchar](20) NULL,
	[Title] [varchar](500) NOT NULL,
	[Edition] [varchar](20) NULL,
	[BookYear] [int] NULL,
	[VolumeNo] [varchar](20) NULL,
	[Pages] [int] NULL,
	[BookPrice] [money] NULL,
	[Remarks] [varchar](max) NULL,
	[IBNNo] [varchar](50) NULL,
	[Book_ImageURL_Small] [varchar](max) NULL,
	[Book_ImageURL_Medium] [varchar](max) NULL,
	[Book_Image_URL_Big] [varchar](max) NULL,
	[Book_PDF_URL] [varchar](max) NULL,
	[IsBookIssued] [varchar](4) NULL DEFAULT ('NO'),
	[Issued2UserID] [int] NULL,
	[Issued2UserName] [varchar](max) NULL,
	[AddedBy] [int] NULL DEFAULT ((1)),
	[AddedDated] [datetime] NULL DEFAULT (getdate()),
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[VC_Field1] [varchar](max) NULL,
	[Nu_Field1] [int] NULL,
	[Dt_Field1] [datetime] NULL,
	[IsDeleted] [bit] NULL DEFAULT ((0)),
	[IsActive] [bit] NULL DEFAULT ((1)),
	[BookStatus] [varchar](20) NULL,
	[OfficeID] [int] NULL DEFAULT ((44)),
	[CompanyID] [int] NULL DEFAULT ((8))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIB_MasterAuthors]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIB_MasterAuthors](
	[AuthorID] [int] IDENTITY(1000,2) NOT NULL,
	[Name] [varchar](max) NOT NULL,
	[Address] [varchar](500) NULL,
	[Mobile] [varchar](10) NULL,
	[Email] [varchar](130) NULL,
	[Website] [varchar](1200) NULL,
	[JoinDate] [datetime] NULL,
	[Rating] [tinyint] NULL,
	[isActive] [bit] NULL DEFAULT ((1)),
	[isDeleted] [bit] NULL DEFAULT ((0))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIB_MasterCategories]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIB_MasterCategories](
	[CategoryID] [int] IDENTITY(10,1) NOT NULL,
	[CategoryCode] [varchar](4) NULL,
	[CategoryName] [varchar](max) NULL,
	[isActive] [bit] NULL DEFAULT ((1)),
	[isDeleted] [bit] NULL DEFAULT ((0)),
	[OfficeID] [int] NULL DEFAULT ((44))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIB_MasterPublishers]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIB_MasterPublishers](
	[PublisherID] [bigint] IDENTITY(1000,1) NOT NULL,
	[Name] [varchar](300) NULL,
	[Address] [varchar](500) NULL,
	[Mobile] [varchar](10) NULL,
	[Email] [varchar](300) NULL,
	[Website] [varchar](1000) NULL,
	[JoinDate] [datetime] NULL,
	[isActive] [bit] NULL,
	[isDeleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIB_MasterSegments]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIB_MasterSegments](
	[SegmentID] [tinyint] IDENTITY(10,1) NOT NULL,
	[SegmentName] [varchar](max) NULL,
	[isActive] [bit] NULL,
	[isDeleted] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIB_MasterSuppliers]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIB_MasterSuppliers](
	[SupplierID] [bigint] IDENTITY(1000,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](300) NULL,
	[Website] [varchar](1000) NULL,
	[JoinDate] [datetime] NULL,
	[isActive] [bit] NULL,
	[isDeleted] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIB_Transactions]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIB_Transactions](
	[TransactionID] [int] IDENTITY(100000000,1) NOT NULL,
	[TransactionDate] [datetime] NULL,
	[TransactionType] [varchar](50) NULL,
	[Transaction2UserType] [varchar](50) NULL,
	[Transaction2UserID] [int] NULL,
	[TransactionBookID] [int] NULL,
	[TransactionBookAccessionNo] [int] NULL,
	[TransactionAmount] [money] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Numbers]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Numbers](
	[Number] [int] NOT NULL,
 CONSTRAINT [PK_Numbers] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[ProductDescription] [varchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[ProductImage] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[s_SmsLog]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[s_SmsLog](
	[Id] [int] NOT NULL,
	[Mobile_No] [varchar](20) NULL,
	[SMSText] [varchar](300) NULL,
	[SMSResponse] [varchar](1000) NULL,
	[Created_By] [varchar](300) NULL,
	[Created_Date] [date] NULL,
	[Modified_By] [varchar](300) NULL,
	[Modified_Date] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[theKeyId]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theKeyId](
	[UserSettingKeyID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[theSettingKeyId]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theSettingKeyId](
	[UserSettingKeyID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_Updation]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_Updation](
	[OLDID] [int] NOT NULL,
	[NewID] [int] NOT NULL,
	[OLDNAME] [varchar](100) NULL,
	[NEWNAME] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSDC_SQL_Tracing]    Script Date: 4/6/2020 7:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSDC_SQL_Tracing](
	[RowNumber] [int] IDENTITY(0,1) NOT NULL,
	[EventClass] [int] NULL,
	[ApplicationName] [nvarchar](128) NULL,
	[BinaryData] [image] NULL,
	[ClientProcessID] [int] NULL,
	[DatabaseID] [int] NULL,
	[DatabaseName] [nvarchar](128) NULL,
	[Duration] [bigint] NULL,
	[EndTime] [datetime] NULL,
	[EventSequence] [bigint] NULL,
	[GroupID] [int] NULL,
	[HostName] [nvarchar](128) NULL,
	[IsSystem] [int] NULL,
	[LineNumber] [int] NULL,
	[LoginName] [nvarchar](128) NULL,
	[LoginSid] [image] NULL,
	[NTDomainName] [nvarchar](128) NULL,
	[NTUserName] [nvarchar](128) NULL,
	[NestLevel] [int] NULL,
	[ObjectID] [int] NULL,
	[ObjectName] [nvarchar](128) NULL,
	[ObjectType] [int] NULL,
	[RequestID] [int] NULL,
	[RowCounts] [bigint] NULL,
	[SPID] [int] NULL,
	[ServerName] [nvarchar](128) NULL,
	[SessionLoginName] [nvarchar](128) NULL,
	[SourceDatabaseID] [int] NULL,
	[StartTime] [datetime] NULL,
	[TextData] [ntext] NULL,
	[TransactionID] [bigint] NULL,
	[XactSequence] [bigint] NULL,
	[Handle] [int] NULL,
	[EventSubClass] [int] NULL,
	[IntegerData] [int] NULL,
	[Error] [int] NULL,
	[Success] [int] NULL,
	[GUID] [uniqueidentifier] NULL,
	[IndexID] [int] NULL,
	[CPU] [int] NULL,
	[Reads] [bigint] NULL,
	[State] [int] NULL,
	[TargetUserName] [nvarchar](128) NULL,
	[Writes] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[RowNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Accounts_BookClose] ADD  CONSTRAINT [DF_Accounts_BookClosing_IsBookClosedFlag]  DEFAULT ('N') FOR [IsBookClosed]
GO
ALTER TABLE [dbo].[ADMN_MST_BankBranches] ADD  CONSTRAINT [DF_ADMN_MST_BankBranches_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ADMN_MST_BankBranches] ADD  CONSTRAINT [DF_ADMN_MST_BankBranches_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_BankBranches] ADD  CONSTRAINT [DF_ADMN_MST_BankBranches_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[ADMN_MST_MenuItems] ADD  CONSTRAINT [DF_ADMN_MST_MenuItems_BAK_IsActive_1]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ADMN_MST_MenuItems] ADD  CONSTRAINT [DF_ADMN_MST_MenuItems_BAK_IsDeleted_1]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_MenuItems] ADD  CONSTRAINT [DF_ADMN_MST_MenuItems_BAK_DateAdded_1]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[ADMN_MST_OfficeGroups] ADD  CONSTRAINT [DF_ADMN_MST_OfficeGroupTemplates_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ADMN_MST_OfficeGroups] ADD  CONSTRAINT [DF_ADMN_MST_OfficeGroupTemplates_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_OfficeGroups] ADD  CONSTRAINT [DF_ADMN_MST_OfficeGroupTemplates_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[ADMN_MST_RolePermissions] ADD  CONSTRAINT [DF_ADMN_MST_RolePermissions_IsActive_1]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ADMN_MST_RolePermissions] ADD  CONSTRAINT [DF_ADMN_MST_RolePermissions_IsDeleted_1]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_RolePermissions] ADD  CONSTRAINT [DF_ADMN_MST_RolePermissions_DateAdded_1]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[ADMN_MST_Settings_Officewise] ADD  CONSTRAINT [DF_ADMN_MST_Settings_Officewise_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ADMN_MST_Settings_Officewise] ADD  CONSTRAINT [DF_ADMN_MST_Settings_Officewise_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_Settings_Officewise] ADD  CONSTRAINT [DF_ADMN_MST_Settings_Officewise_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[ADMN_MST_UserRolePermissionExceptions] ADD  CONSTRAINT [DF_MICRO_UserPermissionExceptions_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_UserRolePermissionExceptions] ADD  CONSTRAINT [DF_MICRO_UserPermissionExceptions_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ADMN_MST_Users_Companywise] ADD  CONSTRAINT [DF_ADMN_MST_Users_Companywise_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ADMN_MST_Users_Companywise] ADD  CONSTRAINT [DF_ADMN_MST_Users_Companywise_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_Users_Companywise] ADD  CONSTRAINT [DF_ADMN_MST_Users_Companywise_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[ADMN_MST_Users_Incharge] ADD  CONSTRAINT [DF_ADMN_MST_Users_Incharge_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ADMN_MST_Users_Incharge] ADD  CONSTRAINT [DF_ADMN_MST_Users_Incharge_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_MST_Users_Incharge] ADD  CONSTRAINT [DF_ADMN_MST_Users_Incharge_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[ADMN_TRN_LogUserLogins] ADD  CONSTRAINT [DF_ADMN_TRN_LogUserLogins_LoginDate]  DEFAULT (getdate()) FOR [LoginDate]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageAttachments] ADD  CONSTRAINT [DF_Micro_MailAttachments_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageAttachments] ADD  CONSTRAINT [DF_Micro_MailAttachments_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageAttachments] ADD  CONSTRAINT [DF_Micro_MailAttachments_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageRecipients] ADD  CONSTRAINT [DF_MICRO_MailRecipients_ReceipientType]  DEFAULT ((1)) FOR [ReceipientType]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageRecipients] ADD  CONSTRAINT [DF_MICRO_MailRecipients_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageRecipients] ADD  CONSTRAINT [DF_MICRO_MailRecipients_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ADMN_TRN_MessageRecipients] ADD  CONSTRAINT [DF_MICRO_MailRecipients_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[BankBranches] ADD  CONSTRAINT [DF_BankBranches_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[BankBranches] ADD  CONSTRAINT [DF_BankBranches_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[BankBranches] ADD  CONSTRAINT [DF_BankBranches_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[Banks] ADD  CONSTRAINT [DF_Banks_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Banks] ADD  CONSTRAINT [DF_Banks_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Banks] ADD  CONSTRAINT [DF_Banks_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] ADD  CONSTRAINT [DF_CRM_MST_FieldForces_DateOfBirth]  DEFAULT (((1)/(1))/(1900)) FOR [DateOfBirth]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] ADD  CONSTRAINT [DF_CRM_MST_FieldForces_Address_Present_DistrictID]  DEFAULT ((0)) FOR [Address_Present_DistrictID]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] ADD  CONSTRAINT [DF_CRM_MST_FieldForces_Address_Permanent_DistrictID]  DEFAULT ((0)) FOR [Address_Permanent_DistrictID]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] ADD  CONSTRAINT [DF_CRM_MST_FieldForces_Nominee_Permanent_DistrictID]  DEFAULT ((0)) FOR [Nominee_Permanent_DistrictID]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] ADD  CONSTRAINT [DF_CRM_MST_FieldForces_BankBranchID]  DEFAULT ((0)) FOR [BankBranchID]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] ADD  CONSTRAINT [DF_CRM_MST_FieldForces_HasServiceComplain]  DEFAULT ((0)) FOR [HasServiceComplain]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] ADD  CONSTRAINT [DF_CRM_MST_FieldForces_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] ADD  CONSTRAINT [DF_CRM_MST_FieldForces_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[CRM_MST_FieldForces] ADD  CONSTRAINT [DF_CRM_MST_FieldForces_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[FINA_DT_TRANSACTIONS] ADD  CONSTRAINT [DF_FINA_DT_TRANSACTIONS_IsPosted]  DEFAULT ('N') FOR [IsPosted]
GO
ALTER TABLE [dbo].[FINA_MST_ACCOUNTLEDGERS] ADD  CONSTRAINT [DF_FINA_MST_AccountLedgers_IsPrimary]  DEFAULT ('Secondary') FOR [AccountLedgerNature]
GO
ALTER TABLE [dbo].[FINA_MST_ACCOUNTLEDGERS] ADD  CONSTRAINT [DF_FINA_MST_AccountLedgers_IsUserDefined]  DEFAULT ((0)) FOR [IsUserDefined]
GO
ALTER TABLE [dbo].[FINA_MST_ACCOUNTLEDGERS] ADD  CONSTRAINT [DF_FINA_MST_Accounts_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[FINA_MST_ACCOUNTLEDGERS] ADD  CONSTRAINT [DF_FINA_MST_Accounts_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[FINA_MST_ACCOUNTLEDGERS] ADD  CONSTRAINT [DF_FINA_MST_Accounts_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[FINA_TRN_Remittances] ADD  CONSTRAINT [DF_FINA_TRN_Remittances_ReceiptStatus]  DEFAULT ((0)) FOR [ReceiptStatus]
GO
ALTER TABLE [dbo].[FINA_TRN_Remittances] ADD  CONSTRAINT [DF_FINA_TRN_Remittances_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[FINA_TRN_Remittances] ADD  CONSTRAINT [DF_FINA_TRN_Remittances_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[FINA_TRN_Remittances] ADD  CONSTRAINT [DF_FINA_TRN_Remittances_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[FINA_TRN_VoucherDetails] ADD  CONSTRAINT [DF_FINA_TRN_VoucherDetails_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[FINA_TRN_VoucherDetails] ADD  CONSTRAINT [DF_FINA_TRN_VoucherDetails_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[FINA_TRN_VoucherDetails] ADD  CONSTRAINT [DF_FINA_TRN_VoucherDetails_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[FINA_TRN_Vouchers] ADD  CONSTRAINT [DF_FINA_TRN_Vouchers_IsActive1]  DEFAULT ((0)) FOR [IsPosted]
GO
ALTER TABLE [dbo].[FINA_TRN_Vouchers] ADD  CONSTRAINT [DF_FINA_TRN_Vouchers_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[FINA_TRN_Vouchers] ADD  CONSTRAINT [DF_FINA_TRN_Vouchers_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[FINA_TRN_Vouchers] ADD  CONSTRAINT [DF_FINA_TRN_Vouchers_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_DesignationOfficewiseTimings] ADD  CONSTRAINT [DF_HRMS_MST_DesignationOfficewiseTimings_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_DesignationOfficewiseTimings] ADD  CONSTRAINT [DF_HRMS_MST_DesignationOfficewiseTimings_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_DesignationOfficewiseTimings] ADD  CONSTRAINT [DF_HRMS_MST_DesignationOfficewiseTimings_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeeBankAccounts] ADD  CONSTRAINT [DF_HRMS_MST_EmployeeBankAccounts_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeeBankAccounts] ADD  CONSTRAINT [DF_HRMS_MST_EmployeeBankAccounts_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeeBankAccounts] ADD  CONSTRAINT [DF_HRMS_MST_EmployeeBankAccounts_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeeFingerPrints] ADD  CONSTRAINT [DF_HRMS_MST_EmployeeFingerPrints_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeeFingerPrints] ADD  CONSTRAINT [DF_HRMS_MST_EmployeeFingerPrints_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeeFingerPrints] ADD  CONSTRAINT [DF_HRMS_MST_EmployeeFingerPrints_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeesPayComponents] ADD  CONSTRAINT [DF_HRMS_MST_EmployeesPayComponents_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_EmployeesPayComponents] ADD  CONSTRAINT [DF_HRMS_MST_EmployeesPayComponents_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_Events] ADD  CONSTRAINT [DF_MICRO_Events_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_Events] ADD  CONSTRAINT [DF_MICRO_Events_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_Events] ADD  CONSTRAINT [DF_MICRO_Events_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_Events] ADD  CONSTRAINT [DF_MICRO_Events_AddedBy]  DEFAULT ((1)) FOR [AddedBy]
GO
ALTER TABLE [dbo].[HRMS_MST_LeaveTypes_Officewise] ADD  CONSTRAINT [DF_HRMS_MST_LeaveTypes_Officewise_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_LeaveTypes_Officewise] ADD  CONSTRAINT [DF_HRMS_MST_LeaveTypes_Officewise_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_LeaveTypes_Officewise] ADD  CONSTRAINT [DF_HRMS_MST_LeaveTypes_Officewise_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_OfficeTimings] ADD  CONSTRAINT [DF_HRMS_MST_OfficeTimings_ForAll]  DEFAULT ((1)) FOR [IsForAll]
GO
ALTER TABLE [dbo].[HRMS_MST_OfficeTimings] ADD  CONSTRAINT [DF_HRMS_MST_OfficeTimings_OnlyForThisOffice]  DEFAULT ((0)) FOR [IsForSelf]
GO
ALTER TABLE [dbo].[HRMS_MST_OfficeTimings] ADD  CONSTRAINT [DF_HRMS_MST_OfficeTimings_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_OfficeTimings] ADD  CONSTRAINT [DF_HRMS_MST_OfficeTimings_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_OfficeTimings] ADD  CONSTRAINT [DF_HRMS_MST_OfficeTimings_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_PayCategories] ADD  CONSTRAINT [DF_HRMS_MST_PayCategory_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_PayCategories] ADD  CONSTRAINT [DF_HRMS_MST_PayCategory_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_PayCategories] ADD  CONSTRAINT [DF_HRMS_MST_PayCategory_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_PayGrades] ADD  CONSTRAINT [DF_HRMS_MST_PayGrades_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_PayGrades] ADD  CONSTRAINT [DF_HRMS_MST_PayGrades_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_PayGrades] ADD  CONSTRAINT [DF_HRMS_MST_PayGrades_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_PayRoll] ADD  CONSTRAINT [DF_HRMS_MST_PayRoll_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_PayRoll] ADD  CONSTRAINT [DF_HRMS_MST_PayRoll_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_PayRoll] ADD  CONSTRAINT [DF_HRMS_MST_PayRoll_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_PayRolls] ADD  CONSTRAINT [DF_HRMS_MST_PayRolls_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_PayRolls] ADD  CONSTRAINT [DF_HRMS_MST_PayRolls_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_PayRolls] ADD  CONSTRAINT [DF_HRMS_MST_PayRolls_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_PayStructures] ADD  CONSTRAINT [DF_HRMS_MST_PayStructures_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_PayStructures] ADD  CONSTRAINT [DF_HRMS_MST_PayStructures_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_PayStructures] ADD  CONSTRAINT [DF_HRMS_MST_PayStructures_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_PolicyTypes] ADD  CONSTRAINT [DF_HRMS_MST_PolicyTypes_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_PolicyTypes] ADD  CONSTRAINT [DF_HRMS_MST_PolicyTypes_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_PolicyTypes] ADD  CONSTRAINT [DF_HRMS_MST_PolicyTypes_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_RequestTypes] ADD  CONSTRAINT [DF_MICRO_RequestType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_RequestTypes] ADD  CONSTRAINT [DF_MICRO_RequestType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_RequestTypes] ADD  CONSTRAINT [DF_MICRO_RequestType_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_MST_Settings] ADD  CONSTRAINT [DF_HRMS_MST_Settings_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_MST_Settings] ADD  CONSTRAINT [DF_HRMS_MST_Settings_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_MST_Settings] ADD  CONSTRAINT [DF_HRMS_MST_Settings_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeLoanReceipts] ADD  CONSTRAINT [DF_HRMS_TRN_EmployeeLoanReceipts_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeLoanReceipts] ADD  CONSTRAINT [DF_HRMS_TRN_EmployeeLoanReceipts_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeLoanReceipts] ADD  CONSTRAINT [DF_HRMS_TRN_EmployeeLoanReceipts_IsCancelled]  DEFAULT ((0)) FOR [IsCancelled]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeLoanReceipts] ADD  CONSTRAINT [DF_HRMS_TRN_EmployeeLoanReceipts_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeLoanReceipts] ADD  CONSTRAINT [DF_HRMS_TRN_EmployeeLoanReceipts_AddedBy]  DEFAULT ((1)) FOR [AddedBy]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeOfficeAccesses] ADD  CONSTRAINT [DF_HRMS_TRN_EmployeeOfficeAccesses_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeOfficeAccesses] ADD  CONSTRAINT [DF_HRMS_TRN_EmployeeOfficeAccesses_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_TRN_EmployeeOfficeAccesses] ADD  CONSTRAINT [DF_HRMS_TRN_EmployeeOfficeAccesses_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_TRN_StaffLIC_InstalMentReceive] ADD  CONSTRAINT [DF_HRMS_TRN_StaffLIC_InstalMentReceive_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_TRN_StaffLIC_InstalMentReceive] ADD  CONSTRAINT [DF_HRMS_TRN_StaffLIC_InstalMentReceive_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_TRN_StaffLIC_InstalMentReceive] ADD  CONSTRAINT [DF_HRMS_TRN_StaffLIC_InstalMentReceive_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_TRN_TourApplications] ADD  CONSTRAINT [DF_HRMS_TRN_TourApplications_Status]  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[HRMS_TRN_TourApplications] ADD  CONSTRAINT [DF_HRMS_TRN_TourApplications_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_TRN_TourApplications] ADD  CONSTRAINT [DF_HRMS_TRN_TourApplications_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_TRN_TourApplications] ADD  CONSTRAINT [DF_HRMS_TRN_TourApplications_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[HRMS_TRN_TransactionPasswords] ADD  CONSTRAINT [DF_HRMS_TRN_TransactionPasswords_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HRMS_TRN_TransactionPasswords] ADD  CONSTRAINT [DF_HRMS_TRN_TransactionPasswords_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[HRMS_TRN_TransactionPasswords] ADD  CONSTRAINT [DF_HRMS_TRN_TransactionPasswords_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[iCAS_FINA_Accounts] ADD  CONSTRAINT [iCAS_FINA_MST_Accounts_IsPrimary]  DEFAULT ((0)) FOR [IsPrimary]
GO
ALTER TABLE [dbo].[iCAS_FINA_Accounts] ADD  CONSTRAINT [iCAS_FINA_MST_Accounts_IsActive_1]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[iCAS_FINA_Accounts] ADD  CONSTRAINT [iCAS_FINA_MST_Accounts_IsDeleted_1]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[iCAS_FINA_Accounts] ADD  CONSTRAINT [iCAS_FINA_MST_Accounts_DateAdded_1]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[iCAS_FINA_TRN_Transactions] ADD  CONSTRAINT [DF_iCASFINA_TRN_Transactions_IsActive_1]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[iCAS_FINA_TRN_Transactions] ADD  CONSTRAINT [DF_iCASFINA_TRN_Transactions_IsDeleted_1]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[iCAS_FINA_TRN_Transactions] ADD  CONSTRAINT [DF_iCASFINA_TRN_Transactions_DateAdded_1]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[iCAS_Student_DailyAttendance] ADD  CONSTRAINT [DF_iCAS_Student_DailyAttendance_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[iCAS_Student_DailyAttendance] ADD  CONSTRAINT [DF_iCAS_Student_DailyAttendance_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[iCAS_Student_DailyAttendance] ADD  CONSTRAINT [DF_iCAS_Student_DailyAttendance_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[iCAS_Student_SectionGrouping] ADD  CONSTRAINT [DF_iCAS_Student_SectionGrouping_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[iCAS_Student_SectionGrouping] ADD  CONSTRAINT [DF_iCAS_Student_SectionGrouping_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[iCAS_Student_SectionGrouping] ADD  CONSTRAINT [DF_iCAS_Student_SectionGrouping_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[iCAS_Student_SectionRegister] ADD  DEFAULT ('TRUE') FOR [IsActive]
GO
ALTER TABLE [dbo].[iCAS_StudentSubjectsRegistered] ADD  CONSTRAINT [DF_iCAS_StudentSubjectsRegistered_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[iCAS_StudentSubjectsRegistered] ADD  CONSTRAINT [DF_iCAS_StudentSubjectsRegistered_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[iCAS_StudentSubjectsRegistered] ADD  CONSTRAINT [DF_iCAS_StudentSubjectsRegistered_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[iCAS_TRANSACTIONS] ADD  DEFAULT (getdate()) FOR [TRAN_DATE]
GO
ALTER TABLE [dbo].[LIB_Transactions] ADD  DEFAULT (getdate()) FOR [TransactionDate]
GO
ALTER TABLE [dbo].[LIB_Book_TransactionDetails]  WITH CHECK ADD  CONSTRAINT [FK_LIB_Book_TransactionDetails_LIB_Book_TransactionDetails] FOREIGN KEY([TranDetailsID])
REFERENCES [dbo].[LIB_Book_TransactionDetails] ([TranDetailsID])
GO
ALTER TABLE [dbo].[LIB_Book_TransactionDetails] CHECK CONSTRAINT [FK_LIB_Book_TransactionDetails_LIB_Book_TransactionDetails]
GO
ALTER TABLE [dbo].[LIB_Book_TransactionDetails]  WITH CHECK ADD  CONSTRAINT [FK_LIB_Book_TransactionDetails_LIB_Book_TransactionDetails1] FOREIGN KEY([TranDetailsID])
REFERENCES [dbo].[LIB_Book_TransactionDetails] ([TranDetailsID])
GO
ALTER TABLE [dbo].[LIB_Book_TransactionDetails] CHECK CONSTRAINT [FK_LIB_Book_TransactionDetails_LIB_Book_TransactionDetails1]
GO
