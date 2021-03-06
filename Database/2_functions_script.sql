use adc_jnprasad
go

/****** Object:  UserDefinedFunction [dbo].[FN_ListToTable]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FN_ListToTable]
(
     @SplitOn              char(1)              --REQUIRED, the character to split the @List string on
    ,@List                 varchar(8000)        --REQUIRED, the list to split apart
)
RETURNS
@ParsedList table
(
    ListValue varchar(500)
)
AS
BEGIN

/**
Takes the given @List string and splits it apart based on the given @SplitOn character.
A table is returned, one row per split item, with a column name "ListValue".
This function workes for fixed or variable lenght items.
Empty and null items will not be included in the results set.


Returns a table, one row per item in the list, with a column name "ListValue"

EXAMPLE:
----------
SELECT * FROM dbo.FN_ListToTable(',','1,12,123,1234,54321,6,A,*,|||,,,,B')

    returns:
        ListValue  
        -----------
        1
        12
        123
        1234
        54321
        6
        A
        *
        |||
        B

        (10 row(s) affected)

**/



----------------
--SINGLE QUERY-- --this will not return empty rows
----------------
INSERT INTO @ParsedList
        (ListValue)
    SELECT
        ListValue
        FROM (SELECT
                  LTRIM(RTRIM(SUBSTRING(List2, number+1, CHARINDEX(@SplitOn, List2, number+1)-number - 1))) AS ListValue
                  FROM (
                           SELECT @SplitOn + @List + @SplitOn AS List2
                       ) AS dt
                      INNER JOIN Numbers n ON n.Number < LEN(dt.List2)
                  WHERE SUBSTRING(List2, number, 1) = @SplitOn
             ) dt2
        WHERE ListValue IS NOT NULL AND ListValue!=''



RETURN

END --Function FN_ListToTable



GO
/****** Object:  UserDefinedFunction [dbo].[funcExtractNumbersOfAString]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcExtractNumbersOfAString](@StringHavingNumber VARCHAR(1000))
RETURNS VARCHAR(1000)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--25-Apr-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	IF PATINDEX('%[^0-9]%',@StringHavingNumber)> 0
	BEGIN
		WHILE PATINDEX('%[^0-9]%',@StringHavingNumber)> 0
		BEGIN
			SET @StringHavingNumber = REPLACE(@StringHavingNumber,SUBSTRING(@StringHavingNumber,PATINDEX('%[^0-9]%',@StringHavingNumber),1),'')
		END
	END
	ELSE
	BEGIN
		SET @StringHavingNumber = NULL;
	END
	RETURN @StringHavingNumber;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcFindMenuItem]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcFindMenuItem](@MenuItemName VARCHAR(50),
                                        @ModuleID     INT,
                                        @ParentMenuID INT=NULL)
RETURNS INT
AS
  BEGIN
      DECLARE @RetVal INT

      IF @ParentMenuID IS NULL
        BEGIN
            SELECT @RetVal = COUNT(*)
            FROM   ADMN_MST_MenuItems
            WHERE  ADMN_MST_MenuItems.MenuItemName = @MenuItemName
                   AND ADMN_MST_MenuItems.ModuleID = @ModuleID
                   AND ADMN_MST_MenuItems.ParentMenuID IS NULL;
        END
      ELSE
        BEGIN
            SELECT @RetVal = COUNT(*)
            FROM   ADMN_MST_MenuItems
            WHERE  ADMN_MST_MenuItems.MenuItemName = @MenuItemName
                   AND ADMN_MST_MenuItems.ModuleID = @ModuleID
                   AND ADMN_MST_MenuItems.ParentMenuID = @ParentMenuID;
        END

      RETURN @RetVal;
  END



GO
/****** Object:  UserDefinedFunction [dbo].[funcFormatDateTime]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcFormatDateTime]  
				(  
					@dt DATETIME,  
					@format VARCHAR(16)  
				)  
--Sample Usage: 
 
--DECLARE @now DATETIME  
--SET @now = GETDATE()  
--  
--PRINT dbo.funcFormatDateTime(@now, 'LONGDATE')  
--PRINT dbo.funcFormatDateTime(@now, 'LONGDATEANDTIME')  
--PRINT dbo.funcFormatDateTime(@now, 'SHORTDATE')  
--PRINT dbo.funcFormatDateTime(@now, 'SHORTDATEANDTIME')  
--PRINT dbo.funcFormatDateTime(@now, 'UNIXTIMESTAMP')  
--PRINT dbo.funcFormatDateTime(@now, 'YYYYMMDD')  
--PRINT dbo.funcFormatDateTime(@now, 'YYYY-MM-DD')  
--PRINT dbo.funcFormatDateTime(@now, 'YYYY-MMM-DD')  
--PRINT dbo.funcFormatDateTime(@now, 'YYMMDD')  
--PRINT dbo.funcFormatDateTime(@now, 'YY-MM-DD')  
--PRINT dbo.funcFormatDateTime(@now, 'MMDDYY')  
--PRINT dbo.funcFormatDateTime(@now, 'MM-DD-YY')  
--PRINT dbo.funcFormatDateTime(@now, 'MM/DD/YY')  
--PRINT dbo.funcFormatDateTime(@now, 'MM/DD/YYYY')  
--PRINT dbo.funcFormatDateTime(@now, 'DDMMYY')  
--PRINT dbo.funcFormatDateTime(@now, 'DD-MM-YY')  
--PRINT dbo.funcFormatDateTime(@now, 'DD/MM/YY')  
--PRINT dbo.funcFormatDateTime(@now, 'DD/MM/YYYY')
--PRINT dbo.funcFormatDateTime(@now, 'DD-MMM-YYYY')
--PRINT dbo.funcFormatDateTime(@now, 'HH:MM:SS 24')  
--PRINT dbo.funcFormatDateTime(@now, 'HH:MM 24')  
--PRINT dbo.funcFormatDateTime(@now, 'HH:MM:SS 12')  
--PRINT dbo.funcFormatDateTime(@now, 'HH:MM 12')  
 
 
RETURNS VARCHAR(64)  
AS 
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--09-Nov-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
-------------------------------------------------------------------------------------------------------------------------------- 
BEGIN  
    DECLARE @dtVC VARCHAR(64)  
    SELECT @dtVC = CASE @format  
  
    WHEN 'LONGDATE' THEN  
  
        DATENAME(dw, @dt)  
        + ',' + SPACE(1) + DATENAME(m, @dt)  
        + SPACE(1) + CAST(DAY(@dt) AS VARCHAR(2))  
        + ',' + SPACE(1) + CAST(YEAR(@dt) AS CHAR(4))  
  
    WHEN 'LONGDATEANDTIME' THEN  
  
        DATENAME(dw, @dt)  
        + ',' + SPACE(1) + DATENAME(m, @dt)  
        + SPACE(1) + CAST(DAY(@dt) AS VARCHAR(2))  
        + ',' + SPACE(1) + CAST(YEAR(@dt) AS CHAR(4))  
        + SPACE(1) + RIGHT(CONVERT(CHAR(20),  
        @dt - CONVERT(DATETIME, CONVERT(CHAR(8),  
        @dt, 112)), 22), 11)  
  
    WHEN 'SHORTDATE' THEN  
  
        LEFT(CONVERT(CHAR(19), @dt, 0), 11)  
  
    WHEN 'SHORTDATEANDTIME' THEN  
  
        REPLACE(REPLACE(CONVERT(CHAR(19), @dt, 0),  
            'AM', ' AM'), 'PM', ' PM')  
  
    WHEN 'UNIXTIMESTAMP' THEN  
  
        CAST(DATEDIFF(SECOND, '19700101', @dt)  
        AS VARCHAR(64))  
  
    WHEN 'YYYYMMDD' THEN  
  
        CONVERT(CHAR(8), @dt, 112)  
  
    WHEN 'YYYY-MM-DD' THEN  
  
        CONVERT(CHAR(10), @dt, 23)  
   
    WHEN 'YYYY-MMM-DD' THEN
   
        SUBSTRING(CONVERT(varchar(20),@dt,113),8,4) + '-' +  SUBSTRING(CONVERT(varchar(20),@dt,113),4,3) + '-' + SUBSTRING(CONVERT(varchar(20),@dt,113),1,2)
  
    WHEN 'YYMMDD' THEN  
  
        CONVERT(VARCHAR(8), @dt, 12)  
  
    WHEN 'YY-MM-DD' THEN  
  
        STUFF(STUFF(CONVERT(VARCHAR(8), @dt, 12),  
        5, 0, '-'), 3, 0, '-')  
  
    WHEN 'MMDDYY' THEN  
  
        REPLACE(CONVERT(CHAR(8), @dt, 10), '-', SPACE(0))  
  
    WHEN 'MM-DD-YY' THEN  
  
        CONVERT(CHAR(8), @dt, 10)  
  
    WHEN 'MM/DD/YY' THEN  
  
        CONVERT(CHAR(8), @dt, 1)  
  
    WHEN 'MM/DD/YYYY' THEN  
  
        CONVERT(CHAR(10), @dt, 101)  
  
    WHEN 'DDMMYY' THEN  
  
        REPLACE(CONVERT(CHAR(8), @dt, 3), '/', SPACE(0))  
  
    WHEN 'DD-MM-YY' THEN  
  
        REPLACE(CONVERT(CHAR(8), @dt, 3), '/', '-')  
  
    WHEN 'DD/MM/YY' THEN  
  
        CONVERT(CHAR(8), @dt, 3)  
  
    WHEN 'DD/MM/YYYY' THEN  
  
        CONVERT(CHAR(10), @dt, 103)  
        --PRINT dbo.funcFormatDateTime(@now, 'DD-MMM-YYYY')
   
    WHEN 'DD-MMM-YYYY' THEN
   
        REPLACE(CONVERT(CHAR(11),@dt,106),space(1),'-')
  
    WHEN 'HH:MM:SS 24' THEN  
  
        CONVERT(CHAR(8), @dt, 8)  
  
    WHEN 'HH:MM 24' THEN  
  
        LEFT(CONVERT(VARCHAR(8), @dt, 8), 5)  
  
    WHEN 'HH:MM:SS 12' THEN  
  
        LTRIM(RIGHT(CONVERT(VARCHAR(20), @dt, 22), 11))  
  
    WHEN 'HH:MM 12' THEN  
  
        LTRIM(SUBSTRING(CONVERT(  
        VARCHAR(20), @dt, 22), 10, 5)  
        + RIGHT(CONVERT(VARCHAR(20), @dt, 22), 3))  
  
    ELSE  
  
        'Invalid format specified'  
  
    END  
    RETURN @dtVC  
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetAccountGroupDescription]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetAccountGroupDescription](@AccountGroupID int)
RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @AccountGroupDescription VARCHAR(100)
	SELECT @AccountGroupDescription=AccountGroupDescription
	FROM dbo.FINA_MST_AccountGroups
	WHERE AccountGroupID=@AccountGroupID;
	RETURN @AccountGroupDescription;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetAnnualCompoundInterest]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetAnnualCompoundInterest]  (@PrincipalAmount			DECIMAL(18,2)
														,@AnnualInterestRate		DECIMAL(10,5)  
														,@NumberOfTimesPerYear		INT
														,@NumberOfYears				INT
														)  
RETURNS DECIMAL(18,2) 
AS 
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--22-Feb-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--	@PrincipalAmount = principal amount (initial investment)
--	@AnnualInterestRate = annual nominal interest rate (as a decimal, not in percentage)
--	@NumberOfTimesPerYear = number of times the interest is compounded per year
--	@NumberOfYears = number of years
--	Example usage: An amount of 1500.00 is deposited in a bank paying an annual interest rate of 4.3%,
--	compounded quarterly. Find the balance after 6 years.
--	FORMULA: @PrincipalAmount * POWER((1 + (@AnnualInterestRate / @NumberOfTimesPerYear)), CAST((@NumberOfTimesPerYear * @NumberOfYears) AS FLOAT))
--	Using the formula above, with P = 1500, r = 4.3/100 = 0.043, n = 4, and t = 6:
--	So, the balance after 6 years is approximately 1,938.84.

-------------------------------------------------------------------------------------------------------------------------------- 
BEGIN  
	DECLARE @FinalAmount	DECIMAL(18,2);
	SET @FinalAmount=@PrincipalAmount * POWER((1 + (@AnnualInterestRate / @NumberOfTimesPerYear)), CAST((@NumberOfTimesPerYear * @NumberOfYears) AS FLOAT))
	SET @FinalAmount=@FinalAmount - @PrincipalAmount;
	RETURN @FinalAmount;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetAttachmentCount]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetAttachmentCount] (@MailItemID INT)
RETURNS INT
AS
  BEGIN
      DECLARE @NoOfAttachments INT;

      SET @NoOfAttachments = 0;

      SELECT @NoOfAttachments = COUNT(*)
      FROM   ADMN_TRN_MessageAttachments
             INNER JOIN ADMN_MST_ContentTypes
               ON ADMN_TRN_MessageAttachments.ContentTypeID = ADMN_MST_ContentTypes.ContentTypeID
      WHERE  ADMN_TRN_MessageAttachments.MailItemID = @MailItemID;

      RETURN @NoOfAttachments;
  END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetAttachmentDetails]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetAttachmentDetails](@MailItemID INT)
RETURNS @tmpAttachmentDetails TABLE (
  AttachmentID  INT,
  MailItemID    INT,
  FileName      NVARCHAR(MAX),
  ContentTypeID INT,
  FileExtension NVARCHAR(10),
  MIMEType      NVARCHAR(100),
  FileContents  VARBINARY(MAX))
AS
  BEGIN
      INSERT INTO @tmpAttachmentDetails
                  (AttachmentID,
                   MailItemID,
                   [FileName],
                   [FileContents],
                   m1.ContentTypeID,
                   FileExtension,
                   MIMEType)
      SELECT A.AttachmentID,
             A.MailItemID,
             A.[FileName], 
             A.[FileContents],
             A.ContentTypeID,
             C.FileExtension,
             C.MIMEType
            
      FROM   ADMN_TRN_MessageAttachments A
             INNER JOIN ADMN_MST_ContentTypes C
               ON A.ContentTypeID = C.ContentTypeID
      WHERE  A.MailItemID = @MailItemID;

      RETURN;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetBankBranchName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetBankBranchName](@BankBranchID INT)
RETURNS NVARCHAR(300)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--02-Apr-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @BankBranchName	NVARCHAR(300)
	SET		@BankBranchName	=	NULL;
	IF EXISTS (	SELECT	1 
				FROM	dbo.ADMN_MST_BankBranches AS BBranches
				WHERE 	BBranches.BankBranchID=@BankBranchID
			  )
	BEGIN
		SELECT	@BankBranchName=BBranches.BranchName
		FROM	dbo.ADMN_MST_BankBranches AS BBranches
		WHERE	BBranches.BankBranchID=@BankBranchID
		AND		BBranches.IsActive=1
		AND		BBranches.IsDeleted=0;
	END
	RETURN		@BankBranchName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetBankNameFromBankBranchID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetBankNameFromBankBranchID](@BankBranchID INT)
RETURNS NVARCHAR(300)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--02-Apr-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @BankName	NVARCHAR(300)
	SET		@BankName	=	NULL;
	IF EXISTS (	SELECT	1 
				FROM	dbo.ADMN_MST_BankBranches AS BBranches
				WHERE 	BBranches.BankBranchID=@BankBranchID
			  )
	BEGIN
		SELECT	@BankName=Banks.BankName
		FROM	dbo.ADMN_MST_BankBranches AS BBranches INNER JOIN dbo.ADMN_MST_Banks AS Banks
		ON		BBranches.BankID=Banks.BankID
		WHERE	BBranches.BankBranchID=@BankBranchID
		AND		Banks.IsActive=1
		AND		Banks.IsDeleted=0;
	END
	RETURN		@BankName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetCharIndex]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetCharIndex] (@Expression NVARCHAR(256),@nPos INT,@Word NVARCHAR(MAX))
RETURNS INT
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--25-Nov-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @ret INT,@strt INT, @strLen INT;
	SET @ret = 0;
	SET @strt = 0;
	WHILE NOT @strt = @npos 
	BEGIN
		SELECT @ret = CHARINDEX(@Expression,@Word,@ret+1);
		SET @strt = @strt +1;
		IF @ret = 0
			BREAK;
		ELSE
			CONTINUE;
	END
	RETURN @ret;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetCompanyIDFromEmployeeID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetCompanyIDFromEmployeeID] (@EmployeeID INT) 
RETURNS INT
AS
--------------------------------------------------------------------------------------------------------------------------------
-- CHANGE HISTORY
-- Date			Author			Version		Change
-- 06-Aug-2012	Syed Ameer		1.0			Creation
--
-- DESCRIPTION
-- This function returns the Company ID from @EmployeeID
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @CompanyID	INT;

	SELECT	@CompanyID=Emp.CompanyID
	FROM	dbo.HRMS_MST_Employees AS Emp
	WHERE	Emp.EmployeeID=@EmployeeID;

	RETURN	@CompanyID;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetCompanyIDFromOfficeID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetCompanyIDFromOfficeID](@OfficeID INT)
RETURNS INT
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--17-Apr-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--This function is used for getting the Company ID.
--
--------------------------------------------------------------------------------------------------------------------------------
  BEGIN
      DECLARE @CompanyID INT

      IF EXISTS(SELECT	1
                FROM	ADMN_MST_Offices AS Office
                WHERE	Office.OfficeID = @OfficeID)
        BEGIN
            SELECT	@CompanyID=Office.CompanyID
            FROM	ADMN_MST_Offices AS Office
            WHERE	Office.OfficeID = @OfficeID
        END

      RETURN @CompanyID;
  END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetCompanyIDFromUserID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetCompanyIDFromUserID](@UserID INT)
RETURNS INT
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--22-Jun-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--This function returns the Company ID.
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @CompanyID	INT
			,@UserType	VARCHAR(20);

	SELECT	@UserType=Usr.UserType
	FROM	dbo.ADMN_MST_Users AS Usr
	WHERE	Usr.UserID=@UserID
	AND		Usr.IsActive=1
	AND		Usr.IsDeleted=0;

	IF @UserType='Employee'
		SELECT	@CompanyID=dbo.funcGetCompanyIDFromOfficeID(OfficeID)
		FROM	dbo.HRMS_MST_Employees AS Emp
		WHERE	Emp.EmployeeID=dbo.funcGetEmployeeIDFromUserID(@UserID);
	ELSE IF @UserType='FieldForce'
		SELECT	@CompanyID=dbo.funcGetCompanyIDFromOfficeID(OfficeID)
		FROM	dbo.CRM_MST_FieldForces AS FF
		WHERE	FF.FieldForceID=dbo.funcGetFieldForceIDFromUserID(@UserID);
	ELSE IF @UserType='Guest'
		SELECT	@CompanyID=dbo.funcGetCompanyIDFromOfficeID(OfficeID)
		FROM	dbo.ADMN_MST_Guests AS Guest
		WHERE	Guest.GuestID=dbo.funcGetGuestIDFromUserID(@UserID);
	ELSE
		SET @CompanyID=NULL;

	RETURN	@CompanyID;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetCompanyNameFromOfficeID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetCompanyNameFromOfficeID](@OfficeID INT)
RETURNS VARCHAR(200)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--26-Jun-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--This function is used for getting the Company Name.
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @CompanyName VARCHAR(200);

	IF EXISTS	(	SELECT	1
					FROM	ADMN_MST_Offices AS Office
					WHERE	Office.OfficeID = @OfficeID
					AND		Office.IsActive=1
					AND		Office.IsDeleted=0
				)
	BEGIN
            SELECT	@CompanyName=Companies.CompanyName
            FROM	ADMN_MST_Offices AS Office INNER JOIN dbo.ADMN_MST_Companies AS Companies
			ON		Office.CompanyID=Companies.CompanyID
            WHERE	Office.OfficeID = @OfficeID;
        END

      RETURN @CompanyName;
  END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetCountryName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetCountryName](@CountryID int)
RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @CountryName VARCHAR(100)
	SELECT @CountryName=Country.CountryName
	FROM dbo.ADMN_MST_Countries Country
	WHERE Country.CountryID=@CountryID;
	RETURN @CountryName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetCountryNameFromDistrictID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetCountryNameFromDistrictID](@DistrictID INT)
RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @CountryName VARCHAR(100);
	SELECT	@CountryName=C.CountryName
	FROM	dbo.ADMN_MST_Districts AS D INNER JOIN dbo.ADMN_MST_States AS S
	ON		D.StateID=D.StateID INNER JOIN dbo.ADMN_MST_Countries AS C
	ON		S.CountryID=C.CountryID
	WHERE	D.DistrictID=@DistrictID;
	RETURN	@CountryName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetCustomerAccountCodeFromCustomerAccountID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetCustomerAccountCodeFromCustomerAccountID](@CustomerAccountID INT)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--23-May-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @CustAccCode VARCHAR(100);
	IF EXISTS	(	SELECT 1
					FROM dbo.CRM_MST_CustomerAccounts AS CA
					WHERE CA.CustomerAccountID=@CustomerAccountID
				)
	BEGIN
		SELECT	@CustAccCode=CA.CustomerAccountCode
		FROM	dbo.CRM_MST_CustomerAccounts AS CA
		WHERE	CA.CustomerAccountID=@CustomerAccountID;
	END
	RETURN @CustAccCode;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetCustomerAccountsContinuationStatusByCustomerID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetCustomerAccountsContinuationStatusByCustomerID](@CustomerID INT)
RETURNS @CustContStatus TABLE (	CustomerID				INT
								,ContinuedPolicies		INT
								,DiscontinuedPolicies	INT	
								,DateGenerated			DATETIME)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--22-May-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @CATable TABLE(CustomerAccountID	INT
							,DaysOverDue		INT);

	DECLARE @CATable01 TABLE(CustomerAccountID	INT
							,DaysOverDue		INT);

	DECLARE @Continued		INT=0
			,@DisContinued	INT=0
			,@CAID			INT
			,@DaysOverdue	INT=0;

	INSERT	INTO @CATable(CustomerAccountID)
	SELECT	CA.CustomerAccountID
	FROM	dbo.CRM_MST_CustomerAccounts AS CA
	WHERE	CA.CustomerID=@CustomerID
	AND		CA.IsActive=1
	AND		CA.IsDeleted=0;
	
	INSERT	INTO @CATable01(CustomerAccountID)
	SELECT	CA.CustomerAccountID
	FROM	dbo.CRM_MST_CustomerAccounts AS CA
	WHERE	CA.CustomerID=@CustomerID
	AND		CA.IsActive=1
	AND		CA.IsDeleted=0;
	
	WHILE (	SELECT COUNT(1) 
			FROM @CATable01) > 0
	BEGIN
		SELECT TOP 1 @CAID=CT01.CustomerAccountID
		FROM @CATable01 AS CT01;

		SELECT @DaysOverdue=TabDaysOverdue.DaysOverdue
		FROM dbo.funcGetNumberOfDaysOverdue(@CAID,GETDATE()) AS TabDaysOverdue

		UPDATE	CATab
		SET		CATab.DaysOverDue=@DaysOverdue
		FROM	@CATable AS CATab
		WHERE	CATab.CustomerAccountID=@CAID;

		DELETE	CT01
		FROM	@CATable01 AS CT01
		WHERE	CT01.CustomerAccountID=@CAID;
			
	END

	SELECT	@DisContinued=COUNT(1)
	FROM	@CATable AS CATab
	WHERE	CATab.DaysOverDue > 0

	SELECT	@Continued=COUNT(1)
	FROM	@CATable AS CATab
	WHERE	CATab.DaysOverDue = 0

	INSERT	INTO @CustContStatus(CustomerID
								,ContinuedPolicies
								,DiscontinuedPolicies
								,DateGenerated)
	SELECT	@CustomerID
			,@Continued
			,@DisContinued
			,GETDATE();

	RETURN;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetCustomerAccountsContinuingByCustomerID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetCustomerAccountsContinuingByCustomerID](@CustomerID INT)
RETURNS @CustContStatus TABLE (	CustomerID				INT
								,CustomerAccountID		INT
								,DateGenerated			DATETIME)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--24-May-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @CATable TABLE(CustomerAccountID	INT
							,DaysOverDue		INT);

	DECLARE @CATable01 TABLE(CustomerAccountID	INT
							,DaysOverDue		INT);

	DECLARE @Continued			INT=0
			,@CustomerAccountID	INT=0
			,@CAID				INT
			,@DaysOverdue		INT=0;

	INSERT	INTO @CATable(CustomerAccountID)
	SELECT	CA.CustomerAccountID
	FROM	dbo.CRM_MST_CustomerAccounts AS CA
	WHERE	CA.CustomerID=@CustomerID
	AND		CA.IsActive=1
	AND		CA.IsDeleted=0;
	
	INSERT	INTO @CATable01(CustomerAccountID)
	SELECT	CA.CustomerAccountID
	FROM	dbo.CRM_MST_CustomerAccounts AS CA
	WHERE	CA.CustomerID=@CustomerID
	AND		CA.IsActive=1
	AND		CA.IsDeleted=0;
	
	WHILE (	SELECT COUNT(1) 
			FROM @CATable01) > 0
	BEGIN
		SELECT TOP 1 @CAID=CT01.CustomerAccountID
		FROM @CATable01 AS CT01;

		SELECT @DaysOverdue=TabDaysOverdue.DaysOverdue
		FROM dbo.funcGetNumberOfDaysOverdue(@CAID,GETDATE()) AS TabDaysOverdue

		UPDATE	CATab
		SET		CATab.DaysOverDue=@DaysOverdue
		FROM	@CATable AS CATab
		WHERE	CATab.CustomerAccountID=@CAID;

		DELETE	CT01
		FROM	@CATable01 AS CT01
		WHERE	CT01.CustomerAccountID=@CAID;
			
	END

	INSERT	INTO @CustContStatus(CustomerID
								,CustomerAccountID
								,DateGenerated)
	SELECT	@CustomerID
			,CATab.CustomerAccountID
			,GETDATE()
	FROM	@CATable AS CATab
	WHERE	CATab.DaysOverDue = 0;

	RETURN;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetCustomerNameFromCustomerAccountID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetCustomerNameFromCustomerAccountID](@CustomerAccountID INT)
RETURNS VARCHAR(200)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--23-May-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @CustName VARCHAR(200);
	IF EXISTS	(	SELECT 1
					FROM dbo.CRM_MST_CustomerAccounts AS CA
					WHERE CA.CustomerAccountID=@CustomerAccountID
				)
	BEGIN
		SELECT	TOP 1 @CustName=Cust.CustomerName
		FROM	dbo.CRM_MST_CustomerAccounts AS CA INNER JOIN dbo.CRM_MST_Customers AS Cust
		ON		CA.CustomerID=Cust.CustomerID
		WHERE	CA.CustomerAccountID=@CustomerAccountID;
	END
	RETURN @CustName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetCustomerPhoto]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetCustomerPhoto](	@CustomerID		INT
												,@ProfileType	VARCHAR(50)='Photo')
RETURNS VARBINARY(MAX)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--26-Nov-2011	Pinakee Das		1.0			Creation
--24-Feb-2012	Pinakee Das		2.0			Modified the Business Logic
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @RetVal VARBINARY(MAX);
	
	SELECT	@RetVal= CP.SettingKeyValue 
	FROM	dbo.CRM_MST_CustomerProfiles CP
	WHERE	CP.SettingKeyName='Customer Profile Policy'
	AND		CP.SettingKeyDescription=@ProfileType
	AND		CP.CustomerID=@CustomerID;

	RETURN  @RetVal;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetCustomerProfile]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetCustomerProfile](	@CustomerID		INT
												,@ProfileType	VARCHAR(50)='Photo')
RETURNS VARBINARY(MAX)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--26-Nov-2011	Pinakee Das		1.0			Creation
--24-Feb-2012	Pinakee Das		2.0			Modified the Business Logic
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @RetVal VARBINARY(MAX);

	SET		@RetVal	=	NULL;

	SELECT	@RetVal= CP.SettingKeyValue 
	FROM	dbo.CRM_MST_CustomerProfiles CP
	WHERE	CP.SettingKeyName='Customer Profile Policy'
	AND		CP.SettingKeyDescription=@ProfileType
	AND		CP.CustomerID=@CustomerID;
	
	IF @ProfileType='Signature' AND @RetVal IS NULL
	BEGIN
		SELECT	@RetVal= CP.SettingKeyValue 
		FROM	dbo.CRM_MST_CustomerProfiles CP
		WHERE	CP.SettingKeyName='Customer Profile Policy'
		AND		CP.SettingKeyDescription='Thumb Impression'
		AND		CP.CustomerID=@CustomerID;	
	END

	RETURN  @RetVal;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetDatesOfAWeek]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetDatesOfAWeek](@WeekNumber INT
											,@YearNumber INT=NULL)
RETURNS  @WeekDates TABLE (		WeekNumber			INT,
								YearNumber			CHAR(4),
								WeekStartDate		DATE,
								WeekEndDate			DATE
								)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--17-Jan-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN

DECLARE @YearNum CHAR(4);
IF @YearNumber IS NULL
	SET @YearNum = CAST(DATEPART(YY, GETDATE()) AS CHAR(4));
ELSE
	SET @YearNum=LTRIM(STR(@YearNumber));

INSERT INTO @WeekDates(	WeekNumber
						,YearNumber
						,WeekStartDate
						,WeekEndDate
						)
VALUES(	@WeekNumber
		,@YearNum
		,DATEADD(wk, DATEDIFF(wk, 6, '1/1/' + @YearNum) + (@WeekNumber-1), 6)
		,DATEADD(wk, DATEDIFF(wk, 5, '1/1/' + @YearNum) + (@WeekNumber-1), 5)
	)
	RETURN;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetDepartmentDescription]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetDepartmentDescription](@DepartmentID int)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--10-Dec-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @DepartmentDescription VARCHAR(100)
	SELECT @DepartmentDescription=Departments.DepartmentDescription
	FROM dbo.HRMS_MST_Departments Departments
	WHERE Departments.DepartmentID=@DepartmentID;
	RETURN @DepartmentDescription;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetDepartmentName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetDepartmentName](@DepartmentID int)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--10-Dec-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @DepartmentName VARCHAR(200)
	SELECT @DepartmentName=Departments.DepartmentDescription 
	FROM dbo.HRMS_MST_Departments Departments
	WHERE Departments.DepartmentID=@DepartmentID;
	RETURN @DepartmentName;
END


GO
/****** Object:  UserDefinedFunction [dbo].[funcGetDesignationDescription]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetDesignationDescription](@DesignationID int)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--10-Dec-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @DesignationDescription VARCHAR(100)
	SELECT @DesignationDescription=Designations.DesignationDescription
	FROM dbo.HRMS_MST_Designations Designations
	WHERE Designations.DesignationID=@DesignationID;
	RETURN @DesignationDescription;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetDesignationName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetDesignationName](@DesignationID int)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--10-Dec-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @DesignationName VARCHAR(100)
	SELECT @DesignationName=Designations.DesignationDescription
	FROM dbo.HRMS_MST_Designations Designations
	WHERE Designations.DesignationID=@DesignationID;
	RETURN @DesignationName;
END


GO
/****** Object:  UserDefinedFunction [dbo].[funcGetDistrictIdByName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create FUNCTION [dbo].[funcGetDistrictIdByName](@DistrictName	VARCHAR(200))
RETURNS INT
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--24-Feb-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @RetVal INT;

	SELECT	@RetVal=D.DistrictID 
	FROM	dbo.ADMN_MST_Districts AS D
	WHERE	D.DistrictName=@DistrictName

	RETURN @RetVal;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetDistrictName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetDistrictName](@DistrictID	INT)
RETURNS VARCHAR(200)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--24-Feb-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @RetVal VARCHAR(200);

	SELECT	@RetVal=D.DistrictName 
	FROM	dbo.ADMN_MST_Districts AS D
	WHERE	D.DistrictID=@DistrictID
	AND		D.IsDeleted=0
	AND		D.IsActive=1;

	RETURN @RetVal;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetEmployeeCode]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetEmployeeCode](@EmployeeID INT)
RETURNS VARCHAR(50)
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--24-Feb-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
AS
  BEGIN
		DECLARE @EmployeeCode VARCHAR(50);

		SELECT @EmployeeCode=Emp.EmployeeCode
		FROM dbo.HRMS_MST_EMPLOYEES AS Emp
		WHERE Emp.EmployeeID=@EmployeeID;

		RETURN @EmployeeCode;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetEmployeeCodeFromUserID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetEmployeeCodeFromUserID](@UserID INT)
RETURNS NVARCHAR(300)
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--20-Mar-2012	Pinakee Das		1.0			Creation
--18-Apr-2012	Pinakee Das		1.1			Changed Query Plan
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
AS
  BEGIN
		DECLARE @EmployeeCode NVARCHAR(200);

		SELECT	@EmployeeCode=Emp.EmployeeCode
		FROM	dbo.HRMS_MST_EMPLOYEES AS Emp INNER JOIN dbo.ADMN_MST_Users AS Usr 
		ON		Emp.EmployeeID = Usr.UserReferenceID
		WHERE	Usr.UserID=@UserID
		AND		Usr.UserType='Employee';

		RETURN @EmployeeCode;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetEmployeeDesignationFromEmployeeID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetEmployeeDesignationFromEmployeeID](@EmployeeID INT)
RETURNS NVARCHAR(300)
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--11-Apr-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
AS
  BEGIN
		DECLARE @DesignationDescription NVARCHAR(200);

		SELECT	@DesignationDescription=D.DesignationDescription
		FROM	dbo.HRMS_MST_EMPLOYEES AS Emp INNER JOIN dbo.HRMS_MST_Designations AS D
		ON		Emp.DesignationID=D.DesignationID
		WHERE	Emp.EmployeeID=@EmployeeID;

		RETURN	@DesignationDescription;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetEmployeeDesignationFromUserID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetEmployeeDesignationFromUserID](@UserID INT)
RETURNS NVARCHAR(300)
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--02-Apr-2012	Pinakee Das		1.0			Creation
--18-Apr-2012	Pinakee Das		1.1			Changed the Query Plan.
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
AS
  BEGIN
		DECLARE @DesignationDescription NVARCHAR(200);

		SELECT @DesignationDescription=D.DesignationDescription
		FROM dbo.HRMS_MST_EMPLOYEES AS Emp INNER JOIN dbo.ADMN_MST_Users AS Usr 
		ON Emp.EmployeeID = Usr.UserReferenceID INNER JOIN dbo.HRMS_MST_Designations AS D
		ON Emp.DesignationID=D.DesignationID
		WHERE Usr.UserID=@UserID
		AND Usr.UserType='Employee';

		RETURN @DesignationDescription;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetEmployeeDesignationIDFromUserID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetEmployeeDesignationIDFromUserID](@UserID INT)
RETURNS INT
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--02-Apr-2012	Pinakee Das		1.0			Creation
--18-Apr-2012	Pinakee Das		1.1			Changed the Query Plan.
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
AS
  BEGIN
		DECLARE @DesignationID INT;

		SELECT @DesignationID=Emp.DesignationID
		FROM dbo.HRMS_MST_EMPLOYEES AS Emp INNER JOIN dbo.ADMN_MST_Users AS Usr 
		ON Emp.EmployeeID = Usr.UserReferenceID INNER JOIN dbo.HRMS_MST_Designations AS D
		ON Emp.DesignationID=D.DesignationID
		WHERE Usr.UserID=@UserID
		AND Usr.UserType='Employee';

		RETURN @DesignationID;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetEmployeeIDFromUserID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetEmployeeIDFromUserID](@UserID INT)
RETURNS NVARCHAR(300)
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--21-Mar-2011	Pinakee Das		1.0			Creation
--18-Apr-2012	Pinakee Das		1.1			Changed the Query Plan.
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
AS
  BEGIN
		DECLARE @EmployeeID NVARCHAR(200);

		SELECT	@EmployeeID=Emp.EmployeeID
		FROM	dbo.HRMS_MST_EMPLOYEES AS Emp INNER JOIN dbo.ADMN_MST_Users AS Usr 
		ON		Emp.EmployeeID = Usr.UserReferenceID INNER JOIN dbo.HRMS_MST_Designations AS D
		ON		Emp.DesignationID=D.DesignationID
		WHERE	Usr.UserID=@UserID
		AND		Usr.UserType='Employee'
		AND		Emp.IsActive=1
		AND		Emp.IsDeleted=0;

		RETURN	@EmployeeID;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetEmployeeNameFromUserID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetEmployeeNameFromUserID](@UserID INT)
RETURNS NVARCHAR(300)
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--21-Nov-2011	Pinakee Das		1.0			Creation
--18-Apr-2012	Pinakee Das		1.1			Changed the Query Plan.
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
AS
  BEGIN
		DECLARE @EmployeeName NVARCHAR(200);

		SELECT @EmployeeName=Emp.EmployeeName
		FROM dbo.HRMS_MST_EMPLOYEES AS Emp INNER JOIN dbo.ADMN_MST_Users AS Usr 
		ON Emp.EmployeeID = Usr.UserReferenceID INNER JOIN dbo.HRMS_MST_Designations AS D
		ON Emp.DesignationID=D.DesignationID
		WHERE Usr.UserID=@UserID
		AND Usr.UserType='Employee';

		RETURN @EmployeeName;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetEmployeePAN]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetEmployeePAN](@EmployeeID INT)
RETURNS VARCHAR(MAX)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--05-Dec-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @RetVal VARCHAR(MAX);
	SELECT @RetVal= CP.SettingKeyDescription
	FROM dbo.HRMS_MST_EmployeeProfiles CP
	WHERE SettingKeyID=(SELECT CK.CommonKeyID 
						  FROM ADMN_MST_CommonKeys CK
						  WHERE CK.CommonKeyName='Employee Profile'
						  AND CK.CommonKeyValue='PAN')
	AND CP.EmployeeID=@EmployeeID;
	RETURN  @RetVal;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetEmployeePANCardImage]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetEmployeePANCardImage](@EmployeeID INT)
RETURNS VARBINARY(MAX)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--05-Dec-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @RetVal VARBINARY(MAX);
	SELECT @RetVal= CP.SettingKeyValue 
	FROM dbo.HRMS_MST_EmployeeProfiles CP
	WHERE SettingKeyID=(SELECT CK.CommonKeyID 
						  FROM ADMN_MST_CommonKeys CK
						  WHERE CK.CommonKeyName='Employee Profile'
						  AND CK.CommonKeyValue='PAN')
	AND CP.EmployeeID=@EmployeeID;
	RETURN  @RetVal;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetEmployeePhoto]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetEmployeePhoto](@EmployeeID INT)
RETURNS VARBINARY(MAX)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--01-Dec-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @RetVal VARBINARY(MAX);
	SELECT @RetVal= CP.SettingKeyValue 
	FROM dbo.HRMS_MST_EmployeeProfiles CP
	WHERE SettingKeyID=(SELECT CK.CommonKeyID 
						  FROM ADMN_MST_CommonKeys CK
						  WHERE CK.CommonKeyName='Employee Profile'
						  AND CK.CommonKeyValue='Photo')
	AND CP.EmployeeID=@EmployeeID;
	RETURN  @RetVal;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetEmployeeShiftDetailsForDate]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetEmployeeShiftDetailsForDate](	@EmployeeID INT
															,@DateOfAttendance	DATETIME=NULL)
RETURNS @ShiftDetails TABLE (
								EmployeeID		INT
								,ShiftAlias		VARCHAR(15)
								,ShiftInTime	DATETIME
								,ShiftOutTime	DATETIME
								,IsOffDay		BIT
								)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--26-Dec-2011	Pinakee Das		1.0			Creation
--
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @ShiftScheduleID	INT
			,@ShiftID			INT
			,@ShiftTimingID		INT
			,@ShiftAlias		VARCHAR(15)
			,@ShiftInTime		DATETIME
			,@ShiftOutTime		DATETIME
			,@DepartmentID		INT
			,@DesignationID		INT
			,@OfficeID			INT
			,@IsOffDay			BIT		=	0
			,@WeeklyOff		VARCHAR(20);
			
	IF @DateOfAttendance IS NULL 
		SET @DateOfAttendance	=	GETDATE();

	SELECT	@DepartmentID=E.DepartmentID
			,@DesignationID=E.DesignationID
			,@OfficeID=E.OfficeID
	FROM dbo.HRMS_MST_EMPLOYEES E
	WHERE E.EmployeeID=@EmployeeID;

	SELECT TOP 1	@ShiftScheduleID	=	S.ShiftScheduleID
					,@ShiftTimingID		=	S.ShiftTimingID 
	FROM dbo.HRMS_TRN_ShiftSchedules S
	WHERE S.EmployeeID=@EmployeeID
	AND CONVERT(VARCHAR(20),S.ShiftScheduleForDate,111) = CONVERT(VARCHAR(20),@DateOfAttendance,111);

	IF @ShiftTimingID IS NULL
	BEGIN
		--SELECT	@ShiftID=O.ShiftID
		--		,@ShiftAlias='Gen'
		--		,@ShiftInTime=O.InTime
		--		,@ShiftOutTime=O.OutTime
		--FROM dbo.HRMS_MST_Shifts_Officewise O
		--WHERE O.ShiftID=(	SELECT	S.ShiftID
		--					FROM	dbo.HRMS_MST_Shifts S
		--					WHERE	S.ShiftDescription LIKE 'GENERAL'
		--					OR		S.ShiftAlias LIKE 'Gen%')
		--AND O.OfficeID=@OfficeID;
		
		SELECT	@ShiftID=S.ShiftID
		FROM	dbo.HRMS_MST_Shifts S
		WHERE	S.ShiftDescription LIKE 'GENERAL'
		OR		S.ShiftAlias LIKE 'Gen%';
		

		SELECT @ShiftTimingID=ST.ShiftTimingID	
				,@WeeklyOff=ST.WeeklyOffDay	
				,@ShiftAlias='Gen'
				,@ShiftInTime=ST.InTime
				,@ShiftOutTime=ST.OutTime
		FROM dbo.HRMS_MST_ShiftTimings ST
		WHERE ST.DepartmentID=@DepartmentID
		AND ST.ShiftID=@ShiftID
		AND ST.OfficeID=@OfficeID;
	
		
	END
	ELSE
	BEGIN
		SELECT @ShiftInTime=ST.InTime
				,@ShiftOutTime=ST.OutTime
				,@ShiftAlias=(SELECT SHIFTALIAS FROM HRMS_MST_ShiftS WHERE SHIFTID=ST.SHIFTID)
		FROM dbo.HRMS_MST_ShiftTimings ST
		WHERE ST.ShiftTimingID=@ShiftTimingID;
		

		SELECT @ShiftID=S.ShiftID 
		FROM dbo.HRMS_MST_Shifts S
		WHERE	S.ShiftDescription='WEEKLY OFF'
				OR S.ShiftAlias='Off';
			
		SELECT @ShiftTimingID=ST.ShiftTimingID	
		FROM dbo.HRMS_MST_ShiftTimings ST
		WHERE ST.DepartmentID=@DepartmentID
		AND ST.ShiftID=@ShiftID
		AND ST.OfficeID=@OfficeID;

		DECLARE @ShiftScheduleForWeekDay INT;
		SELECT @ShiftScheduleForWeekDay=SS.ShiftScheduleForWeekDay
		FROM dbo.HRMS_TRN_ShiftSchedules SS
		WHERE SS.EmployeeID=@EmployeeID 
		AND SS.ShiftTimingID=@ShiftTimingID;
	
	END

	SELECT	@IsOffDay=CASE 
								WHEN @WeeklyOff = DATENAME(DW,@DateOfAttendance) THEN 1
								WHEN @WeeklyOff <> DATENAME(DW,@DateOfAttendance) THEN 0
							END;

	IF @IsOffDay <> 1 OR @IsOffDay IS NULL
		SET @IsOffDay=0;

	DECLARE @D1 DATETIME
	SET @D1	=	@ShiftInTime	+ DATEDIFF(DD,	@ShiftInTime,	@DateOfAttendance)
	DECLARE @D2 DATETIME
	SET @D2	=	@ShiftOutTime	+ DATEDIFF(DD,	@ShiftOutTime,	@DateOfAttendance)

	DECLARE @T1 DATETIME=CAST(@D1 AS time(0))
	DECLARE @T2 DATETIME=CAST(@D2 AS time(0))

	SELECT @D2=	CASE 
					WHEN @T1>@T2 THEN DATEADD(DAY,1,@D2)
					WHEN @T1<@T2 THEN @D2
				END

	DECLARE @DateOnly DATE
	SET @DateOnly=@dateofAttendance
	
	IF @ShiftAlias IS NULL
	SELECT @ShiftAlias='Gen',
	@D1=CAST(@DateOnly AS VARCHAR(25)) + ' ' + '10:00:00', 
	@D2=CAST(@DateOnly AS VARCHAR(25)) + ' ' + '18:30:00'

	--PRINT @ShiftInTime

	INSERT INTO @ShiftDetails(EmployeeID
								,ShiftAlias
								,ShiftInTime
								,ShiftOutTime
								,IsOffDay)
	VALUES(	@EmployeeID
			,@ShiftAlias
			,@D1
			,@D2
			,@IsOffDay);

	RETURN;

END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetEmployeeSignature]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetEmployeeSignature](@EmployeeID INT)
RETURNS VARBINARY(MAX)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--01-Dec-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @RetVal VARBINARY(MAX);
	
	SELECT @RetVal= CP.SettingKeyValue 
	FROM dbo.HRMS_MST_EmployeeProfiles CP
	WHERE CP.SettingKeyID=(SELECT CK.CommonKeyID 
						  FROM ADMN_MST_CommonKeys CK
						  WHERE CK.CommonKeyName='Employee Profile'
						  AND CK.CommonKeyValue='Signature')
	AND CP.EmployeeID=@EmployeeID;
	
	IF @RetVal IS NULL
		SELECT @RetVal= CP.SettingKeyValue 
		FROM dbo.HRMS_MST_EmployeeProfiles CP
		WHERE CP.SettingKeyID=(SELECT CK.CommonKeyID 
							  FROM ADMN_MST_CommonKeys CK
							  WHERE CK.CommonKeyName='Employee Profile'
							  AND CK.CommonKeyValue='Thumb Impression')
		AND CP.EmployeeID=@EmployeeID;

	RETURN  @RetVal;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFieldForceAverageCommission]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFieldForceAverageCommission](	@FieldForceID		INT
															,@TodaysDate		DATE
															,@ForNumberOfMonths	INT)
RETURNS DECIMAL(18,2)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--26-Apr-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @AverageCommission	DECIMAL(18,2)=0.00
			,@DateFrom			DATE
			,@DateTo			DATE

	SET @DateTo=DATEADD(DD, DATEPART(DD,@TodaysDate) * -1, @TodaysDate);
	SET @DateFrom=dbo.funcGetFirstOrLastDayOfAMonth(DATEADD(MM,-@ForNumberOfMonths,@DateTo),'First');
	IF EXISTS(	SELECT	1 
				FROM	dbo.CRM_TRN_CommissionPayable AS CP
				WHERE	CP.FieldForceID=@FieldForceID
				AND		(CAST(CAST(CP.ForYear AS VARCHAR(4))
						+'/'
						+ CAST(CP.ForMonth AS VARCHAR(2))
						+ '/01' AS DATE) BETWEEN @DateFrom AND @DateTo)
				AND		CP.IsActive=1
				AND		CP.IsDeleted=0)
	BEGIN
		SELECT	@AverageCommission=AVG(CP.CommissionAmount)
		FROM	dbo.CRM_TRN_CommissionPayable AS CP
		WHERE	CP.FieldForceID=@FieldForceID
		AND		(CAST(CAST(CP.ForYear AS VARCHAR(4))
				+'/'
				+ CAST(CP.ForMonth AS VARCHAR(2))
				+ '/01' AS DATE) BETWEEN @DateFrom AND @DateTo)
		AND		CP.IsActive=1
		AND		CP.IsDeleted=0;		
	END
	
	RETURN @AverageCommission;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFieldForceCode]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFieldForceCode](@FieldForceID INT)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--13-Mar-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @FieldForceCode VARCHAR(100)
	
	SELECT @FieldForceCode=F.FieldForceCode
	FROM dbo.CRM_MST_FieldForces AS F
	WHERE F.FieldForceID=@FieldForceID;

	RETURN @FieldForceCode;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFieldForceID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFieldForceID](@FieldForceCode VARCHAR(10))
RETURNS INT
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--07-Jun-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @FieldForceID INT
	
	SELECT	@FieldForceID=F.FieldForceID
	FROM	dbo.CRM_MST_FieldForces AS F
	WHERE	F.FieldForceCode=@FieldForceCode
	AND		F.IsActive=1
	AND F.IsDeleted=0
	;

	RETURN @FieldForceID;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFieldForceIDFromUserID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFieldForceIDFromUserID](@UserID INT)
RETURNS NVARCHAR(300)
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--22-Jun-2011	Pinakee Das		1.0			Creation
--
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
AS
  BEGIN
		DECLARE @FieldForceID NVARCHAR(200);

		SELECT	@FieldForceID=FieldForce.FieldForceID
		FROM	dbo.CRM_MST_FieldForces AS FieldForce INNER JOIN dbo.ADMN_MST_Users AS Usr 
		ON		FieldForce.FieldForceID = Usr.UserReferenceID
		WHERE	Usr.UserID=@UserID
		AND		Usr.UserType='FieldForce'
		AND		FieldForce.IsActive=1
		AND		FieldForce.IsDeleted=0;

		RETURN	@FieldForceID;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFieldForceName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFieldForceName](@FieldForceID int)
RETURNS VARCHAR(200)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--17-Nov-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @FieldForceName VARCHAR(200)
	SELECT @FieldForceName=FieldForceName
	FROM dbo.CRM_MST_FieldForces FF
	WHERE FF.FieldForceID=@FieldForceID
	RETURN @FieldForceName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFieldforceProfile]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFieldforceProfile](	@FieldForceID INT
													,@ProfileCommonkeyValue VARCHAR(100)='Photo'
												)
RETURNS VARBINARY(MAX)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--19-Jun-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @RetVal VARBINARY(MAX);
	
	SELECT	@RetVal= CP.SettingKeyValue 
	FROM	dbo.CRM_MST_FieldForceProfiles AS CP
	WHERE	CP.SettingKeyName='Field Force Profile'
	AND		CP.SettingKeyDescription=@ProfileCommonkeyValue
	AND		CP.FieldForceID=@FieldForceID
	AND		CP.IsActive=1
	AND		CP.IsDeleted=0;
	
	IF @RetVal IS NULL AND @ProfileCommonkeyValue='Signature'
	BEGIN
		SELECT @RetVal= CP.SettingKeyValue 
		FROM dbo.CRM_MST_FieldForceProfiles AS CP
		WHERE	CP.SettingKeyName='Field Force Profile'
		AND CP.SettingKeyDescription='Thumb Impression'
		AND CP.FieldForceID=@FieldForceID
		AND CP.IsActive=1
		AND CP.IsDeleted=0;
	END
	RETURN  @RetVal;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFieldForceRankDescription]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFieldForceRankDescription](@FieldForceRankID INT)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--01-Feb-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @FieldForceRankDescription VARCHAR(100)
	
	SELECT @FieldForceRankDescription=R.FieldForceRankDescription 
	FROM dbo.CRM_MST_FieldForceRanks R
	WHERE R.FieldForceRankID=@FieldForceRankID
	AND R.IsActive=1
	AND R.IsDeleted=0;

	RETURN @FieldForceRankDescription;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFieldForceRankIDFromFieldForceID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFieldForceRankIDFromFieldForceID](@FieldForceID INT)
RETURNS INT
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--02-May-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @FieldForceRankID INT;
	
	SELECT	@FieldForceRankID=F.FieldForceRankID
	FROM	dbo.CRM_MST_FieldForces AS F
	WHERE	F.FieldForceID=@FieldForceID;

	RETURN	@FieldForceRankID;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFieldForceRankName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFieldForceRankName](@FieldForceRankID INT)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--28-Feb-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @FieldForceRankName VARCHAR(100)
	
	SELECT @FieldForceRankName=R.FieldForceRankName
	FROM dbo.CRM_MST_FieldForceRanks R
	WHERE R.FieldForceRankID=@FieldForceRankID
	AND R.IsActive=1
	AND R.IsDeleted=0;

	RETURN @FieldForceRankName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFieldForceRankNameFromFieldForceID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFieldForceRankNameFromFieldForceID](@FieldForceID INT)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--28-Feb-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @FieldForceRankName VARCHAR(100)
	
	SELECT @FieldForceRankName=dbo.funcGetFieldForceRankName(F.FieldForceRankID)
	FROM dbo.CRM_MST_FieldForces AS F
	WHERE F.FieldForceID=@FieldForceID;

	RETURN @FieldForceRankName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFieldForceReportingRankID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFieldForceReportingRankID](@FieldForceID INT)
RETURNS VARCHAR(200)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--12-Jan-2012	Balabhadra Kar	1.0			Creation
--15-Mar-2012	Pinakee Das		2.0			Changed the Query Plan.
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @FieldForceReportingRankID INT
	
	SELECT	@FieldForceReportingRankID=FF1.FieldForceRankID
	FROM	dbo.CRM_MST_FieldForces FF1
	WHERE	FF1.FieldForceID=(	SELECT	FF.ReportingToFieldForceID
								FROM	dbo.CRM_MST_FieldForces FF
								WHERE	FF.FieldForceID=@FieldForceID
								AND		FF.IsActive=1
								AND		FF.IsDeleted=0
							  )
	AND		FF1.IsActive=1
	AND		FF1.IsDeleted=0;

	RETURN	@FieldForceReportingRankID;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFieldForceTree]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFieldForceTree] (@FieldForceID INT)
RETURNS @FieldForceTree TABLE (	SlNo							INT			IDENTITY(1, 1)
								,FieldForceRankID				INT
								,FieldForceRankName				VARCHAR(10)
								,FieldForceRankHierarchyIndex	INT
								,FieldForceID					INT
								,FieldForceName					VARCHAR(100)
								,FieldForceCode					VARCHAR(20)
								)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--12-Nov-2011	Pinakee Das		1.0			Creation
--11-Feb-2012	Pinakee Das		1.1			Added FieldForceRankID 
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	IF EXISTS (	SELECT	1 
				FROM	dbo.CRM_MST_FieldForces
				WHERE	FieldForceID=@FieldForceID)
	BEGIN
		DECLARE @ChainCode VARCHAR(100);

		SELECT	@ChainCode=FFChain.ChainCode
		FROM    dbo.CRM_TRN_FieldForceChains AS FFChain 
		WHERE	FFChain.FieldForceID=@FieldForceID
		AND		FFChain.EffectiveDateTo IS NULL
		AND		FFChain.IsActive=1
		AND		FFChain.IsDeleted=0;

		INSERT INTO @FieldForceTree(FieldForceCode)
		SELECT vStrPart FROM dbo.funcSplitText(@ChainCode,'/')
		ORDER BY nPartID DESC; 
		
		UPDATE	FFTree
		SET		FFTree.FieldForceRankID=FF.FieldForceRankID
				,FFTree.FieldForceRankName=FR.FieldForceRankName
				,FFTree.FieldForceRankHierarchyIndex=FR.HierarchyIndex
				,FFTree.FieldForceID=ff.FieldForceID
				,FFTree.FieldForceName=FF.FieldForceName
		FROM	@FieldForceTree FFTree, dbo.CRM_MST_FieldForces FF INNER JOIN CRM_MST_FieldForceRanks FR 
		ON		FF.FieldForceRankID=FR.FieldForceRankID
		WHERE	FFTree.FieldForceCode=FF.FieldForceCode;
		
	END
	RETURN
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFieldForceTreeByCustomerAccountID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFieldForceTreeByCustomerAccountID] (	@CustomerAccountID	INT
																	,@AsOnDate			DATE)
RETURNS @FieldForceTree TABLE (	SlNo							INT			IDENTITY(1, 1)
								,CustomerAccountID				INT
								,FieldForceID					INT
								,FieldForceName					VARCHAR(100)
								,FieldForceCode					VARCHAR(20)
								,FieldForceRankID				INT
								,FieldForceRankName				VARCHAR(20)
								,FieldForceRankHierarchyIndex	INT
							   )
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--06-Mar-2012	Pinakee Das		1.0			Creation
--
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @FieldForceID INT
			,@ApplicationDate DATE

	IF EXISTS(	SELECT	1
				FROM	dbo.CRM_TRN_ChangeIntroducers AS CI
				WHERE	CI.CustomerAccountID=@CustomerAccountID
				AND		(@AsOnDate BETWEEN CI.EffectiveDateFrom AND CI.EffectiveDateTo)
				AND		CI.IsActive=1
				AND		CI.IsDeleted=0)
	BEGIN
		SELECT	@FieldForceID		=	CI.FieldForceID
				,@ApplicationDate	=	@AsOnDate
		FROM	dbo.CRM_TRN_ChangeIntroducers AS CI
		WHERE	CI.CustomerAccountID=@CustomerAccountID
		AND		(@AsOnDate BETWEEN CI.EffectiveDateFrom AND CI.EffectiveDateTo)
		AND		CI.IsActive=1
		AND		CI.IsDeleted=0;
	END

	ELSE
	BEGIN
		SELECT	@FieldForceID		=	CA.FieldForceID
				,@ApplicationDate	=	CA.ApplicationDate
		FROM	dbo.CRM_MST_CustomerAccounts AS CA
		WHERE	CA.CustomerAccountID=@CustomerAccountID
		AND		CA.IsActive=1
		AND		CA.IsDeleted=0;
	END
	DECLARE @ChainCode VARCHAR(100);
	
	SELECT	@ChainCode=FC.ChainCode
	FROM	dbo.CRM_TRN_FieldForceChains AS FC 
	WHERE	FC.FieldForceID=@FieldForceID
	AND		CAST(@ApplicationDate as DATE) BETWEEN CAST(fc.EffectiveDateFrom AS DATE) AND CAST(ISNULL(fc.EffectiveDateTo,GETDATE()) AS DATE)
	AND		FC.IsActive=1
	AND		FC.IsDeleted=0;
		
	INSERT	INTO @FieldForceTree(FieldForceCode)
	SELECT	vStrPart FROM dbo.funcSplitText(@ChainCode,'/')
	ORDER	BY nPartID DESC; 
		
	UPDATE	FFTree
	SET		FFTree.CustomerAccountID=@CustomerAccountID
			,FFTree.FieldForceRankID=FF.FieldForceRankID
			,FFTree.FieldForceRankName=FR.FieldForceRankName
			,FFTree.FieldForceRankHierarchyIndex=FR.HierarchyIndex
			,FFTree.FieldForceID=ff.FieldForceID
			,FFTree.FieldForceName=FF.FieldForceName
	FROM	@FieldForceTree AS FFTree, dbo.CRM_MST_FieldForces FF INNER JOIN CRM_MST_FieldForceRanks FR 
	ON		FF.FieldForceRankID=FR.FieldForceRankID
	WHERE	FFTree.FieldForceCode=FF.FieldForceCode;

	RETURN;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFirstOrLastDayOfAMonth]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFirstOrLastDayOfAMonth](	@AnyDate		DATETIME
												,@FirstOrLast	VARCHAR(5)	=	'Last')
RETURNS DATE
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--07-Mar-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @ReturnDate DATE;
	
	SET @ReturnDate=NULL;

	IF @FirstOrLast='Last'
		SET @ReturnDate=DATEADD(s,-1,DATEADD(mm, DATEDIFF(m,0,@AnyDate)+1,0));
	ELSE IF @FirstOrLast='First'
		SET @ReturnDate=CAST(CAST(YEAR(@AnyDate) AS VARCHAR(4)) + '/' + 
						CAST(MONTH(@AnyDate) AS VARCHAR(2)) + '/01' AS DATETIME);
	RETURN @ReturnDate;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFormOrMenuNameFromID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFormOrMenuNameFromID](	@FormOrMenuID	INT
														,@FormOrMenu	VARCHAR(5)
													)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--17-Apr-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @FormOrMenuName VARCHAR(100);
	IF @FormOrMenu = 'F'
	BEGIN
		SELECT	@FormOrMenuName=F.FormName
		FROM	dbo.ADMN_MST_Forms AS F
		WHERE	F.FormID=@FormOrMenuID
		AND		F.IsActive=1
		AND		F.IsDeleted=0;
	END
	ELSE IF @FormOrMenu = 'M'
	BEGIN
		SELECT	@FormOrMenuName=M.MenuItemName
		FROM	dbo.ADMN_MST_MenuItems AS M
		WHERE	M.MenuID=@FormOrMenuID
		AND		M.IsActive=1
		AND		M.IsDeleted=0;
	END
	RETURN @FormOrMenuName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetFullName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetFullName](@EmployeeID INT)
RETURNS NVARCHAR(300)
AS
  BEGIN
      DECLARE @FullName NVARCHAR(300);

      SELECT @FullName = '';

      IF EXISTS(SELECT *
                FROM   HRMS_MST_Employees
                WHERE  HRMS_MST_Employees.EmployeeID = @employeeid)
        BEGIN
            DECLARE @UserFirstName  NVARCHAR(100),
                    @UserMiddleName NVARCHAR(100),
                    @UserLastName   NVARCHAR(100);

            SELECT @FullName = HRMS_MST_Employees.EmployeeName
            FROM   HRMS_MST_Employees
            WHERE  HRMS_MST_Employees.EmployeeID = @EmployeeID;
        END

      RETURN @FullName;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetGuarantorLoanAmountOutstanding]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetGuarantorLoanAmountOutstanding] (	@GuarantorLoanID	INT
														,@InstallmentNumber INT=0)
RETURNS DECIMAL(18,2)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--04-Apr-2012	Pinakee Das		1.0			Creation
--
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @LoanAmountOutstanding DECIMAL(18,2)=0.00;
	IF EXISTS(	SELECT 1 
				FROM dbo.CRM_MST_GuarantorLoans AS GL
				WHERE GL.GuarantorLoanID=@GuarantorLoanID
				AND GL.IsActive=1
				AND GL.IsDeleted=0
				AND GL.IsClosed=0
				)
	BEGIN
		DECLARE @LoanAmount DECIMAL(18,2)
				;
		SELECT	@LoanAmount=GL.LoanAmount
		FROM	dbo.CRM_MST_GuarantorLoans GL
		WHERE	GL.GuarantorLoanID=@GuarantorLoanID
		AND		GL.IsActive=1
		AND		GL.IsDeleted=0
		AND		GL.IsClosed=0;

		IF @InstallmentNumber = 0 
		BEGIN
			SELECT	@LoanAmountOutstanding=ISNULL(@LoanAmount,0.00)-ISNULL(SUM(R.AmountPaidAsPrincipal),0.00)
			FROM	dbo.CRM_TRN_GuarantorLoanReceipts R
			WHERE	R.GuarantorLoanID=@GuarantorLoanID
			AND		R.IsDeleted=0
			;
		END
		ELSE
		BEGIN
			SELECT	@LoanAmountOutstanding=ISNULL(@LoanAmount,0.00)-ISNULL(SUM(R.AmountPaidAsPrincipal),0.00)
			FROM	dbo.CRM_TRN_GuarantorLoanReceipts R
			WHERE	R.GuarantorLoanID=@GuarantorLoanID
			AND		R.IsDeleted=0
			AND		R.InstallmentNumber<=@InstallmentNumber
			;				
		END
	END
	ELSE
	BEGIN
		SET @LoanAmountOutstanding=0.00;
	END
	RETURN  @LoanAmountOutstanding;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetGuestIDFromUserID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetGuestIDFromUserID](@UserID INT)
RETURNS NVARCHAR(300)
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--22-Jun-2011	Pinakee Das		1.0			Creation
--
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
AS
  BEGIN
		DECLARE @GuestID NVARCHAR(200);

		SELECT	@GuestID=Guest.GuestID
		FROM	dbo.ADMN_MST_Guests AS Guest INNER JOIN dbo.ADMN_MST_Users AS Usr 
		ON		Guest.GuestID = Usr.UserReferenceID
		WHERE	Usr.UserID=@UserID
		AND		Usr.UserType='Guest'
		AND		Guest.IsActive=1
		AND		Guest.IsDeleted=0;

		RETURN	@GuestID;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetHeadOfficeID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetHeadOfficeID](@OfficeID INT)
RETURNS INT
AS
  BEGIN
      DECLARE @headofficeid INT

      IF EXISTS(SELECT *
                FROM  ADMN_MST_Offices
                WHERE  OfficeID = @OfficeID)
        BEGIN
            SELECT TOP 1 @headofficeid = OfficeID
            FROM   dbo.funcGetOfficeTree(@OfficeID)
            ORDER  BY 1 DESC
        END

      RETURN @headofficeid;
  END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetHeadOfficeName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetHeadOfficeName](@OfficeID INT)
RETURNS VARCHAR(100)
AS
  BEGIN
      DECLARE @HeadOfficeName VARCHAR(100)

      IF EXISTS(SELECT *
                FROM   ADMN_MST_Offices
                WHERE  OfficeID = @OfficeID)
        BEGIN
            SELECT TOP 1 @HeadOfficeName = OfficeName
            FROM   dbo.funcGetOfficeTree(@OfficeID)
            ORDER  BY 1 DESC
        END

      RETURN @HeadOfficeName;
  END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetLeaveTypeAlias]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetLeaveTypeAlias](@LeaveTypeID int)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--10-Dec-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @LeaveTypeAlias VARCHAR(100)
	SELECT @LeaveTypeAlias=LeaveTypes.LeaveTypeAlias
	FROM dbo.HRMS_MST_LeaveTypes LeaveTypes
	WHERE LeaveTypes.LeaveTypeID=@LeaveTypeID;
	RETURN @LeaveTypeAlias;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetLeaveTypeDescription]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetLeaveTypeDescription](@LeaveTypeID int)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--10-Dec-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @LeaveTypeDescription VARCHAR(100)
	SELECT @LeaveTypeDescription=LeaveTypes.LeaveTypeDescription
	FROM dbo.HRMS_MST_LeaveTypes LeaveTypes
	WHERE LeaveTypes.LeaveTypeID=@LeaveTypeID;
	RETURN @LeaveTypeDescription;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetLoanAmountOutstandingByCustomerID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetLoanAmountOutstandingByCustomerID] (@CustomerID	INT)
RETURNS @LoanOutstandingTree TABLE (	SlNo					INT IDENTITY(1, 1)
										,CustomerAccountID		INT
										,CustomerLoanID			INT
										,HasLoan				BIT DEFAULT 0
										,LoanAmountOutstanding	DECIMAL(18,2) DEFAULT 0.00
									)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--24-Feb-2012	Pinakee Das		1.0			Creation
--
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @CustomerLoanID			INT
			,@LoanAmount			DECIMAL(18,2)
			,@DuePrincipalAmount	DECIMAL(18,2)
			,@DaysOverdue			INT
			,@Today					DATETIME
			,@HasLoan				BIT
			,@LoanAmountOutstanding	DECIMAL(18,2)=0.00;

	SET @Today=GETDATE();

	SET @CustomerLoanID=NULL;

	DECLARE @tabCustomerAccountID TABLE(CustomerAccountID	INT);
	INSERT INTO @tabCustomerAccountID (CustomerAccountID)
	SELECT  CL.CustomerAccountID
	FROM	dbo.CRM_MST_CustomerLoans AS CL INNER JOIN dbo.CRM_MST_CustomerAccounts AS CA
	ON		CL.CustomerAccountID=CA.CustomerAccountID INNER JOIN dbo.CRM_MST_Customers AS C
	ON		C.CustomerID=CA.CustomerID
	WHERE	C.CustomerID=@CustomerID
	AND		CL.IsActive=1
	AND		CL.IsDeleted=0
	AND		CL.IsClosed=0
	ORDER BY CA.CustomerAccountID, CL.CustomerLoanID DESC;
	
	DECLARE @tmpCustAccID	INT

	WHILE (SELECT COUNT(*) FROM @tabCustomerAccountID)>0
	BEGIN
		SELECT TOP 1 @tmpCustAccID=T.CustomerAccountID
		FROM @tabCustomerAccountID AS T
		ORDER BY T.CustomerAccountID;
			
		SELECT  @CustomerLoanID=CL.CustomerLoanID
		FROM	dbo.CRM_MST_CustomerLoans AS CL INNER JOIN dbo.CRM_MST_CustomerAccounts AS CA
		ON		CL.CustomerAccountID=CA.CustomerAccountID INNER JOIN dbo.CRM_MST_Customers AS C
		ON		C.CustomerID=CA.CustomerID
		WHERE	CL.CustomerAccountID=@tmpCustAccID
		AND		CL.IsActive=1
		AND		CL.IsDeleted=0
		AND		CL.IsClosed=0
		ORDER BY CA.CustomerAccountID, CL.CustomerLoanID DESC;
	
		IF @CustomerLoanID IS NOT NULL
		BEGIN
			SET @HasLoan=1;

			SELECT	@LoanAmount=CL.LoanAmount
			FROM dbo.CRM_MST_CustomerLoans CL
			WHERE CL.CustomerLoanID=@CustomerLoanID;

			SELECT	@DuePrincipalAmount=ISNULL(@LoanAmount,0.00)-ISNULL(SUM(R.AmountPaidAsPrincipal),0.00)
			FROM	dbo.CRM_TRN_CustomerLoanReceipts R
			WHERE	R.CustomerLoanID=@CustomerLoanID
			AND		R.IsDeleted=0;

			SET @LoanAmountOutstanding=@DuePrincipalAmount;
			INSERT INTO @LoanOutstandingTree(CustomerAccountID
											,CustomerLoanID
											,HasLoan
											,LoanAmountOutstanding)
			VALUES(	@tmpCustAccID
					,@CustomerLoanID
					,@HasLoan
					,@LoanAmountOutstanding);			
		END

		DELETE FROM @tabCustomerAccountID
		WHERE CustomerAccountID=@tmpCustAccID;
		
	END
	RETURN; 
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetMessages]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetMessages](@Username VARCHAR(50))
RETURNS @tmpMailDetails TABLE (
  MailItemID          INT,
  MailSubject         NVARCHAR(MAX),
  FromEmployeeID      INT,
  FromEmployeeName    NVARCHAR(500),
  ToEmployeeIDs       NVARCHAR(MAX),
  ToEmployeeNames     NVARCHAR(MAX),
  CcEmployeeIDs       NVARCHAR(MAX),
  CcEmployeeNames     NVARCHAR(MAX),
  BccEmployeeIDs      NVARCHAR(MAX),
  BccEmployeeNames    NVARCHAR(MAX),
  DateOfMail          DATETIME,
  Priority            INT,
  PriorityDescription VARCHAR(10),
  IsMessageRead       BIT,
  IsHavingAttachment  BIT,
  MailContent         NVARCHAR(MAX))
AS
  BEGIN
      DECLARE @tmpMail TABLE (
        MailItemID INT,
        DateOfMail DATETIME);

      INSERT INTO @tmpMail
                  (MailItemID,
                   DateOfMail)
      SELECT DISTINCT ADMN_TRN_MessageRecipients.MailItemID,
                      ADMN_MST_Messages.DateOfMail
      FROM   ADMN_TRN_MessageRecipients
             INNER JOIN ADMN_MST_Messages
               ON ADMN_TRN_MessageRecipients.MailItemID = ADMN_MST_Messages.MailItemID
      WHERE  RecipientUserID = (SELECT ADMN_MST_Users.UserId
                                FROM   ADMN_MST_Users
                                WHERE  ADMN_MST_Users.UserName = @Username)
      ORDER  BY ADMN_MST_Messages.DateOfMail DESC;

      INSERT INTO @tmpMailDetails
                  (MailItemID,
                   MailSubject,
                   FromEmployeeID,
                   Priority,
                   PriorityDescription,
                   DateOfMail,
                   IsMessageRead,
                   IsHavingAttachment,
                   MailContent)
      SELECT ADMN_MST_Messages.MailItemID,
             ADMN_MST_Messages.MailSubject,
             ADMN_MST_Messages.FromEmployeeID,
             ADMN_MST_Messages.Priority,
             CASE Priority
               WHEN 1 THEN 'Low'
               WHEN 2 THEN 'Normal'
               WHEN 3 THEN 'High'
             END AS PriorityDescription,
             ADMN_MST_Messages.DateOfMail,
             CASE
               WHEN ADMN_MST_Messages.DateOpened IS NULL THEN 0
               ELSE 1
             END AS IsMessageRead,
             CASE
               WHEN dbo.funcGetAttachmentCount(tmpMail.MailItemID) > 0 THEN 1
               ELSE 0
             END AS IsHavingAttachment,
             ADMN_MST_Messages.MailContent
      FROM   ADMN_MST_Messages
             INNER JOIN @tmpMail AS tmpMail
               ON tmpMail.MailItemID = ADMN_MST_Messages.MailItemID;

      UPDATE @tmpMailDetails
      SET    FromEmployeeName = dbo.FuncGetFullName(FromEmployeeID);

      WHILE (SELECT COUNT(*)
             FROM   @tmpMail) > 0
        BEGIN
            DECLARE @ctr INT;

            SET @ctr=1;

            DECLARE @MailItemID INT;

            SELECT TOP 1 @MailItemID = MailItemID
            FROM   @tmpMail
            ORDER  BY MailItemID DESC;

            UPDATE @tmpMailDetails
            SET    ToEmployeeIDs = dbo.funcGetUserIDsInAString(@MailItemID, 1)
            WHERE  MailItemID = @MailItemID;

            UPDATE @tmpMailDetails
            SET    ToEmployeeNames = dbo.funcGetUserFullNamesInAString(@MailItemID, 1)
            WHERE  MailItemID = @MailItemID;

            UPDATE @tmpMailDetails
            SET    CcEmployeeIDs = dbo.funcGetUserIDsInAString(@MailItemID, 2)
            WHERE  MailItemID = @MailItemID;

            UPDATE @tmpMailDetails
            SET    CcEmployeeNames = dbo.funcGetUserFullNamesInAString(@MailItemID, 2)
            WHERE  MailItemID = @MailItemID;

            UPDATE @tmpMailDetails
            SET    BccEmployeeIDs = dbo.funcGetUserIDsInAString(@MailItemID, 3)
            WHERE  MailItemID = @MailItemID;

            UPDATE @tmpMailDetails
            SET    BccEmployeeNames = dbo.funcGetUserFullNamesInAString(@MailItemID, 3)
            WHERE  MailItemID = @MailItemID;

            DELETE FROM @tmpMail
            WHERE  MailItemID = @MailItemID;
        END

      RETURN
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetNextFieldForceCode]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetNextFieldForceCode]  (@FieldForceRankID	INT
													)  
RETURNS VARCHAR(30) 
AS 
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--27-Feb-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--
--
-------------------------------------------------------------------------------------------------------------------------------- 
BEGIN
	DECLARE @FieldForceCode		VARCHAR(30)
			,@FieldForceAbbrText	VARCHAR(10)
			,@NoOfDigitsInCode		INT
			,@NextFieldForceCode	VARCHAR(30)
			;

	SELECT TOP 1 @FieldForceCode=F.LastGeneratedID
	FROM	dbo.CRM_MST_FieldForceRanks AS F
	WHERE	F.FieldForceRankID=@FieldForceRankID
	AND		F.IsActive=1
	AND		F.IsDeleted=0;
	--ORDER BY f.FieldForceCode DESC;

	SELECT	@FieldForceAbbrText=FR.FieldForceAbbrText
			,@NoOfDigitsInCode=FR.NumberOfDigitsInCode 
	FROM	dbo.CRM_MST_FieldForceRanks AS FR
	WHERE	FR.FieldForceRankID=@FieldForceRankID
	AND		FR.IsActive=1
	AND		FR.IsDeleted=0;

	IF @FieldForceCode IS NULL
	BEGIN
		SET @NextFieldForceCode	=	@FieldForceAbbrText 
									+dbo.funcIntToCharString(1,@NoOfDigitsInCode);
	END
	ELSE
	BEGIN
		SET @NextFieldForceCode=@FieldForceAbbrText
								+ dbo.funcIntToCharString((CAST(SUBSTRING(@FieldForceCode,LEN(@FieldForceAbbrText)+1,@NoOfDigitsInCode) AS INT) + 1),@NoOfDigitsInCode);
	END
	RETURN @NextFieldForceCode;
	  
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetNextInstallmentDueDate]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetNextInstallmentDueDate](@CustomerAccountID INT)
RETURNS @InstallmentDue TABLE(	DueDate				DATE
								,InstallmentFrom	INT
								,InstallmentTo		INT
								,DateOfLastPayment	DATE)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--09-Feb-2012	Pinakee Das		1.0			Creation
--10-Feb-2012	Pinakee Das		1.1			Returning a table from the function
--
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @DateOfApplication				DATE
			,@NextDate						DATE
			,@NumberOfInstallmentsPaid		INT
			,@NumberOfInstallmentsToBePaid	INT
			,@InstallmentMode				VARCHAR(20)
			,@InstallmentFrom				INT
			,@InstallmentTo					INT
			,@DateOfLastPayment				DATE

	SELECT	@InstallmentMode=CA.InstallmentMode
			,@NumberOfInstallmentsPaid=CA.NumberOfInstallmentsPaid
			,@NumberOfInstallmentsToBePaid=CA.NumberOfInstallmentsToBePaid
			,@DateOfApplication=CA.ApplicationDate
			,@InstallmentMode=CA.InstallmentMode
	FROM	dbo.CRM_MST_CustomerAccounts AS CA
	WHERE	CA.CustomerAccountID=@CustomerAccountID

	SELECT	TOP 1	@InstallmentFrom	=	R.InstallmentNumberFrom
					,@InstallmentTo		=	R.InstallmentNumberTo
					,@DateOfLastPayment	=	R.ReceiptDate
	FROM	dbo.CRM_TRN_Receipts AS R
	WHERE	R.CustomerAccountID	=	@CustomerAccountID
	ORDER BY r.ReceiptDate DESC;

	DECLARE @Ctr INT=0
			,@DueDate DATE=@DateOfApplication;

	WHILE @Ctr < @NumberOfInstallmentsToBePaid
	BEGIN
		IF @InstallmentMode='MLY'
			SET @DueDate=DATEADD(mm,1,@DueDate);
		ELSE IF @InstallmentMode='QLY'
			SET @DueDate=DATEADD(mm,3,@DueDate);
		ELSE IF @InstallmentMode='HLY'
			SET @DueDate=DATEADD(mm,6,@DueDate);
		ELSE IF @InstallmentMode='YLY'
			SET @DueDate=DATEADD(mm,12,@DueDate);
	
		IF CAST(GETDATE() AS DATE) <= CAST(@DueDate AS DATE)
		BEGIN
			BREAK;
		END
		ELSE
			SET @Ctr=@Ctr+1;
	END

	INSERT INTO @InstallmentDue
	VALUES(	@DueDate
			,@InstallmentFrom
			,@InstallmentTo
			,@DateOfLastPayment
		   );
	RETURN;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetNextOfficeCode]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetNextOfficeCode](@OfficeTypeID INT)
RETURNS VARCHAR(10)
AS
  BEGIN
      DECLARE @mOfficeCode VARCHAR(10)=NULL;

      IF EXISTS(SELECT *
                FROM   HRMS_MST_Offices
                WHERE  OfficeTypeID = @OfficeTypeID)
        BEGIN
            SELECT @mOfficeCode = MAX(officecode)
            FROM   HRMS_MST_Offices
            WHERE  OfficeTypeID = @OfficeTypeID;
        END

      IF @mOfficeCode IS NULL
        BEGIN
            DECLARE @mOfficeTypeAbbreviation VARCHAR(5);

            SELECT @mOfficeTypeAbbreviation = OfficeTypeAbbreviation
            FROM   HRMS_MST_OfficeTypes
            WHERE  OfficeTypeID = @OfficeTypeID;

            SELECT @mOfficeCode = @mOfficeTypeAbbreviation + '000000001';

            GOTO GotOfficeCode;
        END
      ELSE
        BEGIN
            DECLARE @Part1 CHAR(1),
                    @Part2 CHAR(2),
                    @Part3 VARCHAR(7);

            SELECT @Part1 = SUBSTRING(@mOfficeCode, 1, 1);

            SELECT @Part2 = SUBSTRING(@mOfficeCode, 2, 2);

            SELECT @Part3 = SUBSTRING(@mOfficeCode, 4, 7);

            DECLARE @flag BIT=0;

            IF @Part3 = '9999999'
              BEGIN
                  SELECT @Part3 = '0000000';

                  SET @flag=1;
              END
            ELSE
              BEGIN
                  SELECT @Part3 = CONVERT(INT, @Part3) + 1;

                  SELECT @Part3 = REPLICATE('0', 7 - DATALENGTH(@Part3)) + LTRIM(str(@Part3));

                  SET @flag=0;
              END

            IF @flag = 1
              BEGIN
                  SET @flag=0;

                  DECLARE @Part2_1 CHAR(1),
                          @Part2_2 CHAR(1);

                  SELECT @Part2_1 = SUBSTRING(@part2, 1, 1);

                  SELECT @Part2_2 = SUBSTRING(@part2, 2, 1);

                  IF @Part2 = '99'
                    BEGIN
                        SELECT @Part2 = '00';

                        SET @flag=1;
                    END
                  ELSE
                    BEGIN
                        IF @Part2_2 = '9'
                          BEGIN
                              SELECT @Part2_2 = 'A';

                              SET @flag=0;
                          END
                        ELSE
                          IF @Part2_2 = 'Z'
                            BEGIN
                                SET @Part2_2='0';
                                SET @flag=1;
                            END
                          ELSE
                            BEGIN
                                SELECT @Part2_2 = CONVERT(INT, @Part2_2) + 1;

                                SET @flag=0;
                            END

                        IF @flag = 1
                          BEGIN
                              IF @Part2_1 = '9'
                                SELECT @Part2_1 = 'A';
                              ELSE
                                IF @Part2_1 = 'Z'
                                  BEGIN
                                      SET @Part2_1='0';
                                  END
                                ELSE
                                  SET @Part2_1=CONVERT(INT, @Part2_1) + 1;
                          END

                        SELECT @Part2 = @Part2_1 + @Part2_2;

                        SET @flag=0;
                    END
              END
        END

      SELECT @mOfficeCode = @Part1 + @Part2 + @Part3;

      GOTOFFICECODE:

      RETURN @mOfficeCode;
  END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetNumberOfDaysOverdue]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetNumberOfDaysOverdue] (@CustomerAccountID	INT
											,@TodaysDate		DATE)
RETURNS @InstallmentOverdue TABLE (	SlNo						INT IDENTITY(1, 1)
									,CustomerAccountID			INT
									,LastReceiptDate			DATE
									,DueDateOfNextInstallment	DATE
									,DaysOverdue				INT
								  )
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--03-Apr-2012	Pinakee Das		1.0			Creation
--
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @SettingValue INT;
	
	SELECT	@SettingValue=S.SettingValue
	FROM	dbo.ADMN_MST_Settings AS S INNER JOIN dbo.ADMN_MST_SettingKeys AS SK
	ON		S.SettingKeyID=Sk.SettingKeyID
	WHERE	SK.SettingKeyName='Grace Period (Late Fee)';

	INSERT INTO @InstallmentOverdue(CustomerAccountID
									,LastReceiptDate
									,DueDateOfNextInstallment
									,DaysOverdue)
	SELECT	TOP 1 @CustomerAccountID
			,CAST(R.ReceiptDate AS DATE) AS LastReceiptDate
			,R.DueDateOfNextInstallment
			,DATEDIFF(dd,R.DueDateOfNextInstallment,@TodaysDate) AS NumberOfDaysOverDue 
	FROM	dbo.CRM_MST_CustomerAccounts AS CustAcct INNER JOIN dbo.CRM_TRN_Receipts AS R 
	ON		R.CustomerAccountID=CustAcct.CustomerAccountID
	AND		R.CustomerAccountID=@CustomerAccountID
	AND		R.IsActive=1
	AND		R.IsCancelled=0
	AND		R.IsDeleted=0
	AND		CAST(@TodaysDate AS DATE) > CAST(DATEADD(dd,@SettingValue,R.DueDateOfNextInstallment) AS DATE)
	AND		CAST(R.DueDateOfNextInstallment AS DATE) <> CAST('1900-01-01' AS DATE)
	ORDER BY R.ReceiptDate DESC; 

	RETURN;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetOfficeCode]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetOfficeCode]
(
	@OfficeID INT
)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--16-Apr-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @OfficeCode VARCHAR(100);
	SELECT @OfficeCode=OfficeCode
	FROM   dbo.ADMN_MST_Offices
	WHERE OfficeID=@OfficeID;
	RETURN @OfficeCode;

END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetOfficeIdByCode]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[funcGetOfficeIdByCode]
(
	@OfficeCode varchar(10)
)
RETURNS INT
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--21-Nov-2012	Kishor Tripathy	1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @OfficeID int;
	
	SELECT @OfficeID=OfficeID
	FROM   dbo.ADMN_MST_Offices
	WHERE OfficeCode=@OfficeCode;
	
	
	RETURN @OfficeID;

END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetOfficeIdByName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetOfficeIdByName]
(
	@OfficeName varchar(100)
)
RETURNS INT
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--21-Nov-2012	Kishor Tripathy	1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @OfficeID int;
	
	SELECT @OfficeID=OfficeID
	FROM   dbo.ADMN_MST_Offices
	WHERE OfficeName=@OfficeName;
	
	
	RETURN @OfficeID;

END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetOfficeName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetOfficeName]
(
	@OfficeID INT
)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--16-Nov-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @OfficeName VARCHAR(100);
	SELECT @OfficeName=OfficeName
	FROM   dbo.ADMN_MST_Offices
	WHERE OfficeID=@OfficeID;
	RETURN @OfficeName;

END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetOfficeTree]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetOfficeTree](@OfficeID INT)
RETURNS @tabOffTree TABLE 
(
	Sr							INT IDENTITY(1, 1)
	,OfficeID					INT
	,OfficeName					VARCHAR(100)
	,OfficeCode					VARCHAR(10)
	,OfficeTypeID				INT
	,OfficeTypeDescription		VARCHAR(100)
	,OfficeTypeAbbreviation		VARCHAR(10)
	,EstablishmentDate			DATE
	,ParentOfficeID				INT
	,ParentOfficeName			VARCHAR(100)
	,ParentOfficeCode			VARCHAR(10)
	,ManagerEmployeeID			INT
	,ManagerEmployeeName		VARCHAR(100)
	,Address_TownOrCity			VARCHAR(200)
	,Address_Landmark			VARCHAR(100)
	,Address_PinCode			VARCHAR(10)
	,Address_DistrictID			INT
	,Address_DistrictName		VARCHAR(100)
	,Address_StateName			VARCHAR(100)
	,Address_CountryName		VARCHAR(100)
	,ContactPerson1				VARCHAR(50)
	,ContactPerson2				VARCHAR(50)
	,ContactPerson3				VARCHAR(50)
	,StdCodePhone				VARCHAR(20)
	,Phone1						VARCHAR(20)
	,Phone2						VARCHAR(20)
	,Phone3						VARCHAR(20)
	,Extension1						VARCHAR(20)
	,Extension2						VARCHAR(20)
	,Extension3						VARCHAR(20)
	,StdCodeFax				VARCHAR(20)
	,Fax1						VARCHAR(20)
	,Fax2						VARCHAR(20)
	,Fax3						VARCHAR(20)
	,Mobile1					VARCHAR(20)
	,Mobile2					VARCHAR(20)
	,Mobile3					VARCHAR(20)
	,Email1					VARCHAR(200)
	,EMail2					VARCHAR(200)
	,EMail3					VARCHAR(200)
	,CompanyID					INT
	,CompanyName				VARCHAR(100)
	,CompanyCode				VARCHAR(10)
	,IsHavingShift				BIT
	,IsActive					BIT
	,IsDeleted					BIT
  )
AS
	BEGIN
		IF EXISTS	(	
					SELECT *
					FROM	ADMN_MST_Offices
					WHERE	OfficeID = @OfficeID
					)
		BEGIN
			WHILE @OfficeID IS NOT NULL
				BEGIN
					DECLARE
						@nOfficeID					INT
						,@OfficeName				VARCHAR(100)
						,@OfficeCode				VARCHAR(10)
						,@OfficeTypeID				INT
						,@OfficeTypeDescription		VARCHAR(100)
						,@OfficeTypeAbbreviation	VARCHAR(10)
						,@EstablishmentDate			DATE
						,@ParentOfficeID			INT
						,@ParentOfficeName			VARCHAR(100)
						,@ParentOfficeCode			VARCHAR(10)
						,@ManagerEmployeeID			INT
						,@ManagerEmployeeName		VARCHAR(100)
						,@Address_TownOrCity		VARCHAR(200)
						,@Address_Landmark			VARCHAR(100)
						,@Address_PinCode			VARCHAR(10)
						,@Address_DistrictID		INT
						,@Address_DistrictName		VARCHAR(100)
						,@Address_StateName			VARCHAR(100)
						,@Address_CountryName		VARCHAR(100)
						,@ContactPerson1			VARCHAR(50)
						,@ContactPerson2			VARCHAR(50)
						,@ContactPerson3			VARCHAR(50)
						,@StdCodePhone				VARCHAR(20)
						,@Phone1					VARCHAR(20)
						,@Phone2					VARCHAR(20)
						,@Phone3					VARCHAR(20)
						,@Extension1				VARCHAR(20)
						,@Extension2				VARCHAR(20)
						,@Extension3				VARCHAR(20)
						,@StdCodeFax				VARCHAR(20)
						,@Fax1						VARCHAR(20)
						,@Fax2						VARCHAR(20)
						,@Fax3						VARCHAR(20)
						,@Mobile1					VARCHAR(20)
						,@Mobile2					VARCHAR(20)
						,@Mobile3					VARCHAR(20)
						,@EMail1					VARCHAR(20)
						,@EMail2					VARCHAR(20)
						,@EMail3					VARCHAR(20)
						,@CompanyID					INT
						,@CompanyName				VARCHAR(100)
						,@CompanyCode				VARCHAR(10)
						,@IsHavingShift				BIT
						,@IsActive					BIT
						,@IsDeleted					BIT
						 
					SELECT 
						@nOfficeID 					=@OfficeID
						,@OfficeName				=O.OfficeName
						,@OfficeCode				=O.OfficeCode
						,@OfficeTypeID				=O.OfficeTypeID
						,@OfficeTypeDescription		=OT.OfficeTypeDescription
						,@OfficeTypeAbbreviation	=OT.OfficeTypeAbbreviation
						,@EstablishmentDate			=O.EstablishmentDate
						,@ParentOfficeID			=O.ParentOfficeID
						,@ParentOfficeName			=dbo.funcGetOfficeName(O.ParentOfficeID)
						,@ParentOfficeCode			=dbo.funcGetOfficeCode(O.ParentOfficeID)
						,@ManagerEmployeeID			=O.ManagerEmployeeID
						,@ManagerEmployeeName		=dbo.funcGetFullName(O.ManagerEmployeeID)
						,@Address_TownOrCity		=O.Address_TownOrCity
						,@Address_Landmark			=O.Address_Landmark
						,@Address_PinCode			=O.Address_PinCode
						,@Address_DistrictID		=O.Address_DistrictID
						,@Address_DistrictName		=dbo.funcGetDistrictName(O.Address_DistrictID)
						,@Address_StateName			=dbo.funcGetStateNameFromDistrictID(O.Address_DistrictID)
						,@Address_CountryName		=dbo.funcGetCountryNameFromDistrictID(O.Address_DistrictID)
						,@ContactPerson1			=O.ContactPerson1
						,@ContactPerson2			=O.ContactPerson2
						,@ContactPerson3			=O.ContactPerson3
						,@StdCodePhone				=O.StdCodePhone 
						,@Phone1					=O.Phone1
						,@Phone2					=O.Phone2
						,@Phone3					=O.Phone3
						,@Extension1				=O.Extension1 
						,@Extension2				=O.Extension2
						,@Extension3				=O.Extension3 		
						,@StdCodeFax				=O.StdCodeFax
						,@Fax1						=O.Fax1
						,@Fax2						=O.Fax2
						,@Fax3						=O.Fax3
						,@Mobile1					=O.Mobile1
						,@Mobile2					=O.Mobile2
						,@Mobile3					=O.Mobile3
						,@EMail1					=O.EMail1
						,@EMail2					=O.EMail2
						,@EMail3					=O.EMail3
						,@CompanyID					=O.CompanyID
						,@CompanyName				=CMP.CompanyName
						,@CompanyCode				=CMP.CompanyCode
						,@IsHavingShift				=O.IsHavingShift
						,@IsActive					=O.IsActive
						,@IsDeleted					=O.IsDeleted
								
					FROM	ADMN_MST_Offices O INNER JOIN ADMN_MST_OfficeTypes OT
							ON O.OfficeTypeID = OT.OfficeTypeID INNER JOIN ADMN_MST_Companies CMP
							ON O.CompanyID = CMP.CompanyID
					
					WHERE	O.OfficeID = @OfficeID;

                  INSERT INTO @tabOffTree
                              (
								OfficeID					
								,OfficeName					
								,OfficeCode					
								,OfficeTypeID				
								,OfficeTypeDescription		
								,OfficeTypeAbbreviation		
								,EstablishmentDate			
								,ParentOfficeID				
								,ParentOfficeName			
								,ParentOfficeCode			
								,ManagerEmployeeID			
								,ManagerEmployeeName		
								,Address_TownOrCity			
								,Address_Landmark			
								,Address_PinCode			
								,Address_DistrictID			
								,Address_DistrictName		
								,Address_StateName			
								,Address_CountryName		
								,ContactPerson1				
								,ContactPerson2				
								,ContactPerson3	
								,StdCodePhone 			
								,Phone1						
								,Phone2						
								,Phone3	
								,Extension1
								,Extension2
								,Extension3 
								,StdCodeFax 					
								,Fax1						
								,Fax2						
								,Fax3						
								,Mobile1					
								,Mobile2					
								,Mobile3					
								,EMail1					
								,EMail2					
								,EMail3					
								,CompanyID					
								,CompanyName				
								,CompanyCode
								,IsHavingShift				
								,IsActive					
								,IsDeleted					
							   )
							VALUES     
							(
								@nOfficeID					
								,@OfficeName				
								,@OfficeCode				
								,@OfficeTypeID				
								,@OfficeTypeDescription		
								,@OfficeTypeAbbreviation	
								,@EstablishmentDate			
								,@ParentOfficeID			
								,@ParentOfficeName			
								,@ParentOfficeCode			
								,@ManagerEmployeeID			
								,@ManagerEmployeeName		
								,@Address_TownOrCity		
								,@Address_Landmark			
								,@Address_PinCode			
								,@Address_DistrictID		
								,@Address_DistrictName		
								,@Address_StateName			
								,@Address_CountryName		
								,@ContactPerson1			
								,@ContactPerson2			
								,@ContactPerson3
								,@StdCodePhone 			
								,@Phone1					
								,@Phone2					
								,@Phone3
								,@Extension1
								,@Extension2
								,@Extension3 
								,@StdCodeFax 					
								,@Fax1						
								,@Fax2						
								,@Fax3						
								,@Mobile1					
								,@Mobile2					
								,@Mobile3					
								,@EMail1					
								,@EMail2					
								,@EMail3					
								,@CompanyID					
								,@CompanyName				
								,@CompanyCode
								,@IsHavingShift				
								,@IsActive					
								,@IsDeleted					
							);
                  SELECT @OfficeID = @ParentOfficeID;
			END
		END
	RETURN
END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetOfficeTypeIdByAbbr]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create FUNCTION [dbo].[funcGetOfficeTypeIdByAbbr](@OfficeTypeAbbr varchar(10))
RETURNS INT
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--21-Nov-2012	Kishor Tripathy		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
AS
  BEGIN
		DECLARE @OfficeTypeID INT;

		SELECT @OfficeTypeID=OfficeType.OfficeTypeID 
		FROM dbo.ADMN_MST_OfficeTypes  AS OfficeType
		WHERE OfficeType.OfficeTypeAbbreviation=@OfficeTypeAbbr;

		RETURN @OfficeTypeID;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetOfficeTypeName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetOfficeTypeName](@OfficeTypeID INT)
RETURNS VARCHAR(50)
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--24-Feb-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
AS
  BEGIN
		DECLARE @OfficeTypeName VARCHAR(50);

		SELECT @OfficeTypeName=OfficeType.OfficeTypeName 
		FROM dbo.ADMN_MST_OfficeTypes  AS OfficeType
		WHERE OfficeType.OfficeTypeID=@OfficeTypeID;

		RETURN @OfficeTypeName;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetParentAccountHeadIDDescription]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetParentAccountHeadIDDescription](@ParentAccountHeadID INT)
RETURNS NVARCHAR(300)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--10-Oct-2012	Balabhadra Kar		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @ParentAccountHeadIDDescription	NVARCHAR(300)
	SET		@ParentAccountHeadIDDescription	=	NULL;
	IF EXISTS (	SELECT	1 
				FROM	dbo.FINA_MST_AccountHeads AS FMAH
				WHERE 	FMAH.AccountHeadID=@ParentAccountHeadID
			  )
	BEGIN
		SELECT	@ParentAccountHeadIDDescription=FMAH.AccountHeadDescription
		FROM	dbo.FINA_MST_AccountHeads AS FMAH
		WHERE	FMAH.AccountHeadID=@ParentAccountHeadID
		AND		FMAH.IsActive=1
		AND		FMAH.IsDeleted=0;
	END
	RETURN		@ParentAccountHeadIDDescription;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetParentOfficeID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetParentOfficeID](@OfficeID int)
RETURNS INT
AS
BEGIN
	DECLARE @ParentOfficeID VARCHAR(100)
	SELECT @ParentOfficeID=Offices.ParentOfficeID
	FROM dbo.ADMN_MST_Offices Offices
	WHERE Offices.OfficeID=@OfficeID;
	RETURN @ParentOfficeID;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetParentOfficeName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetParentOfficeName](@OfficeID int)
RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @ParentOfficeName VARCHAR(100)
			,@ParentOfficeID INT
	
	SELECT	@ParentOfficeName	=	NULL, 
			@ParentOfficeID		=	NULL
	
	SELECT @ParentOfficeID=Offices.ParentOfficeID
	FROM dbo.ADMN_MST_Offices Offices
	WHERE Offices.OfficeID=@OfficeID;
	
	IF @ParentOfficeID IS NOT NULL
		SELECT @ParentOfficeName=Offices.OfficeName
		FROM dbo.ADMN_MST_Offices Offices
		WHERE Offices.OfficeID=@ParentOfficeID;
	
	RETURN @ParentOfficeName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetPolicyNameFromPolicyTypeID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetPolicyNameFromPolicyTypeID]	(@PolicyTypeID	INT)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--08-May-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @PolicyName	VARCHAR(100);

	SELECT	@PolicyName=P.PolicyName
	FROM	dbo.CRM_MST_Policies AS P INNER JOIN dbo.CRM_MST_PolicyTypes AS PT
	ON		PT.PolicyID=P.PolicyID
	WHERE	PT.PolicyTypeID=@PolicyTypeID;

	RETURN @PolicyName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetReportingEmployeeCount]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetReportingEmployeeCount](@EmployeeID INT)
RETURNS INT
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--11-Jan-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
  BEGIN
      DECLARE @ReportingEmployeeCount INT;

      SET @ReportingEmployeeCount=0;

      IF EXISTS(SELECT	*
                FROM	dbo.HRMS_MST_EmployeeServiceDetails S
                WHERE	S.ReportingToEmployeeID = @EmployeeID
				AND		S.IsActive=1)
        BEGIN
            SELECT	@ReportingEmployeeCount = COUNT(E.ReportingToEmployeeID)
            FROM	dbo.HRMS_MST_EmployeeServiceDetails E
            WHERE	E.ReportingToEmployeeID = @EmployeeID
			AND		E.IsActive=1;
        END

      RETURN @ReportingEmployeeCount;
  END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetReportingEmployeesList]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetReportingEmployeesList] (@EmployeeID INT)
RETURNS @EmployeeReportingTree TABLE (
								SlNo					INT IDENTITY(1, 1)
								,EmployeeID				INT
								,ReportingToEmployeeID	INT
								,EmployeeLevel			INT
								)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--12-Jan-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	IF EXISTS (	SELECT * 
				FROM dbo.HRMS_MST_Employees E
				WHERE E.EmployeeID=@EmployeeID)
	BEGIN
		
		;WITH EmpParent(EmployeeID,  ReportingToEmployeeID, EmployeeLevel) AS
		(
			SELECT	E1.EmployeeID
					,E1.ReportingToEmployeeID
					,1 EmployeeLevel
			FROM	dbo.HRMS_MST_EmployeeServiceDetails E1
			WHERE	E1.ReportingToEmployeeID = @EmployeeID
			AND		E1.IsActive=1 
			UNION	ALL
			SELECT	E.EmployeeID
					,E.ReportingToEmployeeID
					,P.EmployeeLevel + 1
			FROM dbo.HRMS_MST_EmployeeServiceDetails E
			INNER JOIN EmpParent P
			ON E.ReportingToEmployeeID = P.EmployeeID
			AND E.IsActive=1
		)
		INSERT INTO @EmployeeReportingTree(EmployeeID, ReportingToEmployeeID, EmployeeLevel)
		SELECT * FROM EmpParent WHERE EmployeeID <> @EmployeeID
		OPTION (MAXRECURSION 0)
	END
	RETURN
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetReportingOfficeCount]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetReportingOfficeCount](@OfficeID INT)
RETURNS INT
AS
  BEGIN
      DECLARE @ReportingOfficeCount INT;

      SET @ReportingOfficeCount=0;

      IF EXISTS(SELECT *
                FROM   dbo.ADMN_MST_Offices
                WHERE  OfficeID = @OfficeID)
        BEGIN
            SELECT @ReportingOfficeCount = COUNT(M.ParentOfficeId)
            FROM   ADMN_MST_Offices M
            WHERE  M.ParentOfficeId = @OfficeID;
        END

      RETURN @ReportingOfficeCount;
  END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetReportingOfficesByOfficeID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetReportingOfficesByOfficeID](	@OfficeID		INT)
RETURNS @ReportingOfficeTree TABLE(	OfficeID				INT
							,OfficeCode				VARCHAR(50)
							,OfficeName				VARCHAR(100)
							,OfficeTypeID			INT
							,OfficeTypeDescription	VARCHAR(100)
							,EstablishmentDate		DATE
							,ParentOfficeID			INT
							,ParentOfficeCode		VARCHAR(100)
							,ParentOfficeName		VARCHAR(100)
							,ManagerEmployeeID		INT
							,ManagerEmployeeName	VARCHAR(100)
							,Address_TownOrCity		VARCHAR(200)
							,Address_Landmark		VARCHAR(200)
							,Address_PinCode		VARCHAR(20)
							,Address_DistrictID		INT
							,Address_DistrictName	VARCHAR(100)
							,Address_StateName		VARCHAR(100)
							,Address_CountryName	VARCHAR(100)
							,ContactPerson1			VARCHAR(100)
							,ContactPerson2			VARCHAR(100)
							,ContactPerson3			VARCHAR(100)
							,Phone1					VARCHAR(100)
							,Phone2					VARCHAR(100)
							,Phone3					VARCHAR(100)
							,Fax1					VARCHAR(100)
							,Fax2					VARCHAR(100)
							,Fax3					VARCHAR(100)
							,Mobile1				VARCHAR(100)
							,Mobile2				VARCHAR(100)
							,Mobile3				VARCHAR(100)
							,EMailID1				VARCHAR(100)
							,EMailID2				VARCHAR(100)
							,EMailID3				VARCHAR(100)
							,IsHavingShift			BIT
							,CompanyID				INT
							,CompanyCode 			VARCHAR(100)
							,CompanyName 			VARCHAR(100)
							,IsActive				BIT
							,IsDeleted				BIT
						 )
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--26-Apr-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @InitialOffice TABLE (	[OfficeID] [int] ,
									[OfficeName] [varchar](100) NULL,
									[OfficeTypeID] [int] NULL,
									[OfficeCode] [varchar](10) NULL,
									[ParentOfficeID] [int] NULL
								 );
	DECLARE @InterOffice TABLE	(	[OfficeID] [int] ,
									[OfficeName] [varchar](100) NULL,
									[OfficeTypeID] [int] NULL,
									[OfficeCode] [varchar](10) NULL,
									[ParentOfficeID] [int] NULL
								); 
	DECLARE @FinalOffice TABLE  (	[OfficeID] [int] ,
									[OfficeName] [varchar](100) NULL,
									[OfficeTypeID] [int] NULL,
									[OfficeCode] [varchar](10) NULL,
									[ParentOfficeID] [int] NULL
								);

	INSERT INTO @InitialOffice	(	[OfficeID]
									,[OfficeName]
									,[OfficeTypeID]
									,[OfficeCode]
									,[ParentOfficeID]
								)
	SELECT	Office.[OfficeID]
			,Office.[OfficeName]
			,Office.[OfficeTypeID]
			,Office.[OfficeCode]
			,Office.[ParentOfficeID]
	FROM	dbo.ADMN_MST_Offices AS Office
	WHERE	Office.IsDeleted=0
	AND		Office.IsActive=1
	ORDER BY Office.ParentOfficeID;

	INSERT INTO @InterOffice(	[OfficeID]
								,[OfficeName]
								,[OfficeTypeID]
								,[OfficeCode]
								,[ParentOfficeID]
							)
	SELECT	Office.[OfficeID]
			,Office.[OfficeName]
			,Office.[OfficeTypeID]
			,Office.[OfficeCode]
			,Office.[ParentOfficeID]
	From	dbo.ADMN_MST_Offices AS Office 
	WHERE	Office.OfficeID=@OfficeID
	AND		Office.IsDeleted=0
	AND		Office.IsActive=1
	ORDER BY Office.ParentOfficeID;

	INSERT INTO @FinalOffice(	[OfficeID],
								[OfficeName],
								[OfficeTypeID],
								[OfficeCode],
								[ParentOfficeID]
							)
	SELECT	Office.[OfficeID],
			Office.[OfficeName],
			Office.[OfficeTypeID],
			Office.[OfficeCode],
			Office.[ParentOfficeID]
	From	dbo.ADMN_MST_Offices AS Office
	WHERE	Office.OfficeID=@OfficeID
	AND		Office.IsDeleted=0
	AND		Office.IsActive=1
	ORDER BY Office.ParentOfficeID;

	DECLARE @OfficeIDTmp INT
	WHILE (SELECT COUNT(1) FROM @InterOffice)> 0
	BEGIN
		SELECT	TOP 1 @OfficeIDTmp=Office.OfficeID
		FROM	@InterOffice AS Office
		ORDER	BY Office.ParentOfficeID;

		IF dbo.funcGetReportingOfficeCount(@OfficeIDTmp)>0
		BEGIN
			INSERT INTO @FinalOffice(	[OfficeID]
										,[OfficeName]
										,[OfficeTypeID]
										,[OfficeCode]
										,[ParentOfficeID]
									)
			SELECT	Office.[OfficeID]
					,Office.[OfficeName]
					,Office.[OfficeTypeID]
					,Office.[OfficeCode]
					,Office.[ParentOfficeID] 
			FROM	@InitialOffice AS Office
			WHERE	Office.ParentOfficeID=@OfficeIDTmp;
		END

		INSERT INTO @InterOffice(	[OfficeID]
									,[OfficeName]
									,[OfficeTypeID]
									,[OfficeCode]
									,[ParentOfficeID]
								)
		SELECT	Office.[OfficeID]
				,Office.[OfficeName]
				,Office.[OfficeTypeID]
				,Office.[OfficeCode]
				,Office.[ParentOfficeID] 
		FROM	@InitialOffice AS Office
		WHERE	Office.ParentOfficeID=@OfficeIDTmp

		DELETE	FROM @InterOffice 
		WHERE	OfficeID=@OfficeIDTmp;
	
	END
	INSERT INTO @ReportingOfficeTree
	SELECT	O.OfficeID
			,O.OfficeCode
			,O.OfficeName
			,O.OfficeTypeID
			,OT.OfficeTypeDescription
			,O.EstablishmentDate
			,O.ParentOfficeID
			,dbo.funcGetOfficeCode(O.ParentOfficeID) AS ParentOfficeCode
			,dbo.funcGetOfficeName(O.ParentOfficeID) AS ParentOfficeName
			,O.ManagerEmployeeID
			,dbo.funcGetFullName(O.ManagerEmployeeID) AS ManagerEmployeeName
			,O.Address_TownOrCity
			,O.Address_Landmark
			,O.Address_PinCode
			,O.Address_DistrictID
			,dbo.funcGetDistrictName(O.Address_DistrictID) AS Address_DistrictName
			,dbo.funcGetStateNameFromDistrictID(O.Address_DistrictID) AS Address_StateName
			,dbo.funcGetCountryNameFromDistrictID(O.Address_DistrictID) AS Address_CountryName
			,O.ContactPerson1
			,O.ContactPerson2
			,O.ContactPerson3
			,O.Phone1
			,O.Phone2
			,O.Phone3
			,O.Fax1
			,O.Fax2
			,O.Fax3
			,O.Mobile1
			,O.Mobile2
			,O.Mobile3
			,O.EMail1
			,O.EMail2
			,O.EMail3
			,O.IsHavingShift
			,O.CompanyID
			,C.CompanyCode
			,C.CompanyName
			,O.IsActive
			,O.IsDeleted
	FROM	dbo.ADMN_MST_Offices AS O INNER JOIN dbo.ADMN_MST_OfficeTypes AS OT
	ON		O.OfficeTypeID=OT.OfficeTypeID INNER JOIN dbo.ADMN_MST_Companies AS C
	ON		O.CompanyID=C.CompanyID INNER JOIN @FinalOffice AS FO
	ON		FO.OfficeID=O.OfficeID
	WHERE	O.IsActive=1
	AND		O.IsDeleted=0
	AND		OT.IsActive=1
	AND		OT.IsDeleted=0
	AND		C.IsActive=1
	AND		C.IsDeleted=0;
	RETURN;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetReportingOfficesList]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetReportingOfficesList] (@OfficeID INT)
RETURNS @OfficeReportingTree TABLE (
										SlNo					INT IDENTITY(1, 1)
										,OfficeID				INT
										,OfficeCode				VARCHAR(10)
										,OfficeName				VARCHAR(100)
										,OfficeTypeID			INT
										,ReportingToOfficeID	INT
										,OfficeLevel			INT
									)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--18-Jan-2012	Pinakee Das		1.0			Creation
--30-Jan-2012	Pinakee Das		1.1			Added OfficeCode, OfficeTypeID and OfficeName to the list.
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	IF EXISTS (	SELECT	1 
				FROM	dbo.ADMN_MST_Offices O
				WHERE	O.OfficeID=@OfficeID)
	BEGIN
		
		;WITH OfficeParent(OfficeID, OfficeCode, OfficeName, OfficeTypeID, ParentOfficeID, OfficeLevel) AS
		(
			SELECT	O1.OfficeID
					,O1.OfficeCode
					,O1.OfficeName
					,O1.OfficeTypeID
					,O1.ParentOfficeID
					,1 OfficeLevel
			FROM	dbo.ADMN_MST_Offices O1
			WHERE	O1.ParentOfficeID = @OfficeID
			AND		O1.IsActive=1 
			UNION	ALL
			SELECT	O.OfficeID
					,O.OfficeCode
					,O.OfficeName
					,O.OfficeTypeID
					,O.ParentOfficeID
					,P.OfficeLevel + 1
			FROM	dbo.ADMN_MST_Offices O INNER JOIN OfficeParent P
			ON		O.ParentOfficeID = P.OfficeID
			AND		O.IsActive=1
		)
		INSERT INTO @OfficeReportingTree(OfficeID, OfficeCode, OfficeName, OfficeTypeID, ReportingToOfficeID, OfficeLevel)
		SELECT	OfficeID
				,OfficeCode
				,OfficeName
				,OfficeTypeID
				,ParentOfficeID
				,OfficeLevel
		FROM	OfficeParent WHERE OfficeID <> @OfficeID
		OPTION	(MAXRECURSION 0)
	END
	RETURN
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetReportingOfficesListByOfficeTypeID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetReportingOfficesListByOfficeTypeID] (	@OfficeID				INT
															,@OfficeTypeID			INT=NULL
														  )
RETURNS @OfficeReportingTree TABLE (
										SlNo					INT IDENTITY(1, 1)
										,OfficeID				INT
										,OfficeCode				VARCHAR(10)
										,OfficeName				VARCHAR(100)
										,OfficeTypeID			INT
										,HierarchyIndex			INT
										,ReportingToOfficeID	INT
										,OfficeLevel			INT
									)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--09-Feb-2012	Pinakee Das		1.0			Creation
--
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	IF EXISTS (	SELECT * 
				FROM dbo.ADMN_MST_Offices O
				WHERE O.OfficeID=@OfficeID)
	BEGIN
		
		;WITH OfficeParent(OfficeID, OfficeCode, OfficeName, OfficeTypeID, ParentOfficeID, OfficeLevel) AS
		(
			SELECT	O1.OfficeID
					,O1.OfficeCode
					,O1.OfficeName
					,O1.OfficeTypeID
					,O1.ParentOfficeID
					,1 OfficeLevel
			FROM	dbo.ADMN_MST_Offices O1
			WHERE	O1.ParentOfficeID = @OfficeID
			AND		O1.IsActive=1 
			UNION	ALL
			SELECT	O.OfficeID
					,O.OfficeCode
					,O.OfficeName
					,O.OfficeTypeID
					,O.ParentOfficeID
					,P.OfficeLevel + 1
			FROM dbo.ADMN_MST_Offices O
			INNER JOIN OfficeParent P
			ON O.ParentOfficeID = P.OfficeID
			AND O.IsActive=1
		)
		INSERT INTO @OfficeReportingTree(OfficeID, OfficeCode, OfficeName, OfficeTypeID, ReportingToOfficeID, OfficeLevel)
		SELECT	OfficeID
				,OfficeCode
				,OfficeName
				,OfficeTypeID
				,ParentOfficeID
				,OfficeLevel
		FROM OfficeParent WHERE OfficeID <> @OfficeID
		OPTION (MAXRECURSION 0)
	END

	DECLARE @HierarchyIndex INT
	
	SELECT @HierarchyIndex=O.HierarchyIndex
	FROM dbo.ADMN_MST_OfficeTypes AS O
	WHERE O.OfficeTypeID=@OfficeTypeID;

	UPDATE R
	SET R.HierarchyIndex=T.HierarchyIndex
	FROM @OfficeReportingTree AS R INNER JOIN dbo.ADMN_MST_OfficeTypes AS T
	ON R.OfficeTypeID=T.OfficeTypeID;

	IF @OfficeTypeID IS NOT NULL
	BEGIN
		--DELETE FROM @OfficeReportingTree
		--WHERE OfficeTypeID <> @OfficeTypeID;	
		DELETE FROM @OfficeReportingTree
		WHERE OfficeTypeID NOT IN (	SELECT O.OfficeTypeID
									FROM dbo.ADMN_MST_OfficeTypes AS O
									WHERE O.HierarchyIndex >=@HierarchyIndex);	
	END
	RETURN
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetScrollAmountPaidByID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetScrollAmountPaidByID]  (@ScrollID INT
											)  
RETURNS DECIMAL(18,2) 
AS 
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--04-Oct-2012	Balabhadra Kar 	 1.0			Creation
--
--DESCRIPTION
--	Find Scroll AmountPaid  by ScrollID

-------------------------------------------------------------------------------------------------------------------------------- 
BEGIN  
	DECLARE @ScrollAmountPaid DECIMAL(18,2)
												
	SET @ScrollAmountPaid = (SELECT SUM(R.InstallmentAmountPaid)AS TotScrollAmountPaid 
							FROM dbo.CRM_TRN_Receipts R
							WHERE R.IsActive=1
							AND R.IsDeleted=0
							AND R.IsCancelled=0
							AND R.ScrollID=@ScrollID)
										
	RETURN @ScrollAmountPaid;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetScrollStatus]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetScrollStatus]  (@ScrollAmountPayable DECIMAL(18,2)
												,@ScrollAmountPaid DECIMAL(18,2)
											)  
RETURNS VARCHAR(20) 
AS 
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--04-Oct-2012	Balabhadra Kar 	 1.0			Creation
--
--DESCRIPTION
--	Find Scroll Status Like 'Owe','Due' or 'Paid'  by ScrollID

-------------------------------------------------------------------------------------------------------------------------------- 
BEGIN  
	DECLARE @ScrollAmountDue DECIMAL(18,2)
			,@ScrollStatus VARCHAR(20)
						
	SET @ScrollAmountDue = (@ScrollAmountPayable - @ScrollAmountPaid)
		IF @ScrollAmountDue >0
			SET @ScrollStatus = 'Owe';
		ELSE IF @ScrollAmountDue <0
			SET @ScrollStatus = 'Due';
		ELSE
			SET @ScrollStatus = 'Paid';
			
	RETURN @ScrollStatus;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetSeetStatusByQual]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetSeetStatusByQual](@QualID INT,@StreamID INT,@SessionID int)
RETURNS bit
AS
  BEGIN
      DECLARE @SitStatus bit;
	  DECLARE @SitCount int;
	  DECLARE @MaxSitNo int;
      SET @SitStatus=0;
	  SET @SitCount=0;
      IF EXISTS(SELECT *
                FROM   dbo.iCAS_Quals
                WHERE  QualID = @QualID)
        BEGIN
			SELECT @MaxSitNo = C.NoOfSeat
            FROM   iCAS_Classes C
            WHERE  C.QualID = @QualID
				   AND C.StreamID=@StreamID
				   AND C.ClassName='ADMISSION';
            
            SELECT @SitCount = COUNT(*)
            FROM   iCAS_Students S
            WHERE  S.QualID = @QualID
				   AND S.StreamID=@StreamID
				   AND S.SessionID=@SessionID
				   AND S.[REG-STATUS]=1;                                    
       END
       
	   IF (@SitCount<=@MaxSitNo)
       BEGIN
            SET @SitStatus=1
       END
       ELSE
       BEGIN
			SET @SitStatus=0
       END
       
       RETURN @SitStatus;
  END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetStateIdByName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetStateIdByName](@StateName varchar(100))
RETURNS INT
AS
BEGIN
	DECLARE @StateID INT;
	
	SELECT @StateID=State.StateID
	FROM dbo.ADMN_MST_States State
	WHERE State.StateName=@StateName;
	RETURN @StateID;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetStateName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetStateName](@StateID int)
RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @StateName VARCHAR(100)
	SELECT @StateName=State.StateName
	FROM dbo.ADMN_MST_States State
	WHERE State.StateID=@StateID;
	RETURN @StateName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetStateNameFromDistrictID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetStateNameFromDistrictID](@DistrictID INT)
RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @StateName VARCHAR(100);
	SELECT	@StateName=S.StateName
	FROM	dbo.ADMN_MST_Districts AS D INNER JOIN dbo.ADMN_MST_States AS S
	ON		D.StateID=S.StateID
	WHERE	D.DistrictID=@DistrictID;
	RETURN	@StateName;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetSubMenuCount]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[funcGetSubMenuCount](@MenuID INT)
RETURNS INT
AS
  BEGIN
      DECLARE @SubMenuCount INT;

      SET @SubMenuCount=0;

      IF EXISTS(SELECT *
                FROM   ADMN_MST_MenuItems
                WHERE  MenuID = @MenuID)
        BEGIN
            SELECT @SubMenuCount = COUNT(M.ParentMenuId)
            FROM   ADMN_MST_MenuItems M
            WHERE  M.ParentMenuId = @MenuID;
        END

      RETURN @SubMenuCount;
  END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetTeachingOrNonTeachingStaff]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[funcGetTeachingOrNonTeachingStaff](@DesignationID int)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--10-Dec-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @TeachingOrNonTeaching VARCHAR(100)
	SELECT @TeachingOrNonTeaching=Designations.VC_FIELD1
	FROM dbo.HRMS_MST_Designations Designations
	WHERE Designations.DesignationID=@DesignationID;
	RETURN @TeachingOrNonTeaching;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetTimeFromInt]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetTimeFromInt](@nTimeInSec INT)
RETURNS NVARCHAR(MAX)
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--09-Nov-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
-------------------------------------------------------------------------------------------------------------------------------- 
AS
BEGIN

    DECLARE @vDayTime NVARCHAR(MAX);

    /* Calculate # of days and display if necessary */
    SELECT @vDayTime = CASE WHEN @nTimeInSec >= 86400
                    THEN CONVERT(VARCHAR(MAX), @nTimeInSec/86400)
                    + CASE WHEN CONVERT(VARCHAR(MAX), @nTimeInSec/86400) > 1 THEN ' days '
							ELSE ' day '
						END
                    ELSE ''
                    END
    /* Add HH:MM:SS to number of days (or ') for output */
           + CONVERT(VARCHAR(MAX), DATEADD(SECOND, @nTimeInSec, 0), 108);
    IF SUBSTRING(LTRIM(RTRIM(@vDayTime)),1,3)='00:'
    BEGIN
        SELECT @vDayTime=SUBSTRING(LTRIM(RTRIM(@vDayTime)),4,(LEN(LTRIM(RTRIM(@vDayTime)))-3));
    END

    RETURN @vDayTime;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetUserFullNamesInAString]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetUserFullNamesInAString](@MailItemID    INT,
                                                     @RecipientType INT)
RETURNS NVARCHAR(MAX)
AS
  BEGIN
      DECLARE @FullNamesList NVARCHAR(MAX);

      SELECT @FullNamesList = ' ';

      SELECT @FullNamesList = CASE
                                WHEN len(ltrim(COALESCE(@FullNamesList + ',', ''))) = 1 THEN ' '
                                ELSE COALESCE(@FullNamesList + ', ', '')
                              END + ltrim(dbo.FuncGetFullName(MR.RecipientUserID))
      FROM   ADMN_TRN_MessageRecipients MR
      WHERE  MR.ReceipientType = @RecipientType
             AND MR.MailItemID = @MailItemID;

      RETURN @FullNamesList;
  END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetUserIDFromEmployeeID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetUserIDFromEmployeeID](@EmployeeID INT)
RETURNS NVARCHAR(300)
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--19-May-2011	Pinakee Das		1.0			Creation
--
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
AS
  BEGIN
		DECLARE @UserID NVARCHAR(200);

		SELECT	@UserID=Usr.UserID
		FROM	dbo.HRMS_MST_EMPLOYEES AS Emp INNER JOIN dbo.ADMN_MST_Users AS Usr 
		ON		Emp.EmployeeID = Usr.UserReferenceID INNER JOIN dbo.HRMS_MST_Designations AS D
		ON		Emp.DesignationID=D.DesignationID
		WHERE	Emp.EmployeeID=@EmployeeID
		AND		Usr.UserType='Employee'
		AND		Usr.IsActive=1
		AND		Usr.IsDeleted=0;

		RETURN	@UserID;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetUserIDsInAString]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetUserIDsInAString](@MailItemID    INT,
                                               @RecipientType INT)
RETURNS NVARCHAR(MAX)
AS
  BEGIN
      DECLARE @IDList NVARCHAR(MAX);

      SELECT @IDList = ' ';

      SELECT @IDList = CASE
                         WHEN len(ltrim(COALESCE(@IDList + ',', ''))) = 1 THEN ' '
                         ELSE COALESCE(@IDList + ', ', '')
                       END + ltrim(str(MR.RecipientUserID))
      FROM   ADMN_TRN_MessageRecipients MR
      WHERE  MR.ReceipientType = @RecipientType
             AND MR.MailItemID = @MailItemID;

      RETURN @IDList;
  END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetUserReferenceIDFromUserID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetUserReferenceIDFromUserID](@UserID int)
RETURNS INT
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--19-Jun-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @UserReferenceID INT;

	IF EXISTS	(	SELECT	1 
					FROM	dbo.ADMN_MST_Users AS Usr
					WHERE	Usr.UserID=@UserID
					AND		Usr.IsActive=1
					AND		Usr.IsDeleted=0
				)
	BEGIN
		SELECT	@UserReferenceID=Usr.UserReferenceID
		FROM	dbo.ADMN_MST_Users AS Usr
		WHERE	Usr.UserID=@UserID
		AND		Usr.IsActive=1
		AND		Usr.IsDeleted=0
	END
	RETURN	@UserReferenceID;	
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetUserReferenceNameFromUserID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetUserReferenceNameFromUserID](@UserID int)
RETURNS VARCHAR(200)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--19-Jun-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @UserReferenceName VARCHAR(200);

	IF EXISTS	(	SELECT	1 
					FROM	dbo.ADMN_MST_Users AS Usr
					WHERE	Usr.UserID=@UserID
					AND		Usr.IsActive=1
					AND		Usr.IsDeleted=0
				)
	BEGIN
		SELECT	@UserReferenceName=	CASE 
									WHEN Usr.UserType='Employee'	THEN (	SELECT	E.EmployeeName 
																			FROM	dbo.HRMS_MST_Employees AS E 
																			WHERE	E.EmployeeID=Usr.UserReferenceID 
																			AND		E.IsActive=1 
																			AND		E.IsDeleted=0)
									WHEN Usr.UserType='FieldForce'	THEN (	SELECT	F.FieldForceName 
																			FROM	dbo.CRM_MST_FieldForces AS F 
																			WHERE	F.FieldForceID=Usr.UserReferenceID 
																			AND		F.IsActive=1 
																			AND		F.IsDeleted=0)
									WHEN Usr.UserType='Guest'		THEN (	SELECT	G.GuestName 
																			FROM	dbo.ADMN_MST_Guests AS G 
																			WHERE	G.GuestID=Usr.UserReferenceID 
																			AND		G.IsActive=1 
																			AND		G.IsDeleted=0)
									END
		FROM	dbo.ADMN_MST_Users AS Usr
		WHERE	Usr.UserID=@UserID
		AND		Usr.IsActive=1
		AND		Usr.IsDeleted=0
	END
	RETURN	@UserReferenceName;	
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcGetUserTypeFromUserID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcGetUserTypeFromUserID](@UserID int)
RETURNS VARCHAR(100)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--19-Jun-2012	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @UserType VARCHAR(100);

	IF EXISTS	(	SELECT	1 
					FROM	dbo.ADMN_MST_Users AS Usr
					WHERE	Usr.UserID=@UserID
					AND		Usr.IsActive=1
					AND		Usr.IsDeleted=0
				)
	BEGIN
		SELECT	@UserType=Usr.UserType
		FROM	dbo.ADMN_MST_Users AS Usr
		WHERE	Usr.UserID=@UserID
		AND		Usr.IsActive=1
		AND		Usr.IsDeleted=0
	END
	RETURN @UserType;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcIntToCharString]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcIntToCharString] (@intVal INT, @intLen INT)
RETURNS NVARCHAR(24)
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--25-Nov-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	IF @intlen > 24
		SET @intlen = 24

    RETURN REPLICATE('0',@intLen-LEN(RTRIM(CONVERT(NVARCHAR(24),@intVal)))) 
        + CONVERT(NVARCHAR(24),@intVal)
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcNumberToWord]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcNumberToWord](@Number BIGINT=0)
RETURNS VARCHAR(MAX)
AS
  BEGIN
      DECLARE @Length         INT,
              @temp           CHAR(1),
              @NumberAsString VARCHAR(MAX),
              @result         VARCHAR(MAX)

      SELECT @NumberAsString = CONVERT(VARCHAR(MAX), @Number)

      SELECT @Length = LEN(@NumberAsString)

      SELECT @result = ''

      IF @Number > 0
        BEGIN
            WHILE ( @Length > 0 )
              BEGIN
                  SELECT @temp = ( SUBSTRING(@NumberAsString, @Length, 1) )

                  IF ( ( LEN(@NumberAsString) - @Length ) % 3 ) = 1
                    IF @temp = '1'
                      SELECT @result = CASE (SUBSTRING(@NumberAsString, @Length+1, 1))
                                         WHEN '0' THEN 'Ten'
                                         WHEN '1' THEN 'Eleven'
                                         WHEN '2' THEN 'Twelve'
                                         WHEN '3' THEN 'Thirteen'
                                         WHEN '4' THEN 'Fourteen'
                                         WHEN '5' THEN 'Fifteen'
                                         WHEN '6' THEN 'Sixteen'
                                         WHEN '7' THEN 'Seventeen'
                                         WHEN '8' THEN 'Eighteen'
                                         WHEN '9' THEN 'Nineteen'
                                       END + ' ' + CASE
                                                     WHEN ( ( LEN(@NumberAsString) - @Length ) = 4 ) THEN 'Thousand '
													 --WHEN ( ( LEN(@NumberAsString) - @Length ) = 6 ) THEN 'Lakh '
                                                     WHEN ( ( LEN(@NumberAsString) - @Length ) = 7 ) THEN 'Million '
													-- WHEN ( ( LEN(@NumberAsString) - @Length ) = 8 ) THEN 'Crore '
                                                     WHEN ( ( LEN(@NumberAsString) - @Length ) = 10 ) THEN 'Billion '
                                                     WHEN ( ( LEN(@NumberAsString) - @Length ) = 13 ) THEN 'Trillion '
                                                     WHEN ( ( LEN(@NumberAsString) - @Length ) = 16 ) THEN 'Quadrillion '
                                                     ELSE ''
                                                   END + @result
                    ELSE
                      BEGIN
                          SELECT @result = CASE (SUBSTRING(@NumberAsString, @Length+1, 1))
                                             WHEN '0' THEN ''
                                             WHEN '1' THEN 'One'
                                             WHEN '2' THEN 'Two'
                                             WHEN '3' THEN 'Three'
                                             WHEN '4' THEN 'Four'
                                             WHEN '5' THEN 'Five'
                                             WHEN '6' THEN 'Six'
                                             WHEN '7' THEN 'Seven'
                                             WHEN '8' THEN 'Eight'
                                             WHEN '9' THEN 'Nine'
                                           END + ' ' + CASE
                                                         WHEN ( ( LEN(@NumberAsString) - @Length ) = 4 ) THEN 'Thousand '
                                                         --WHEN ( ( LEN(@NumberAsString) - @Length ) = 6 ) THEN 'Lakh '
														 WHEN ( ( LEN(@NumberAsString) - @Length ) = 7 ) THEN 'Million '
														 --WHEN ( ( LEN(@NumberAsString) - @Length ) = 8 ) THEN 'Crore '
                                                         WHEN ( ( LEN(@NumberAsString) - @Length ) = 10 ) THEN 'Billion '
                                                         WHEN ( ( LEN(@NumberAsString) - @Length ) = 13 ) THEN 'Trillion '
                                                         WHEN ( ( LEN(@NumberAsString) - @Length ) = 16 ) THEN 'Quadrillion '
                                                         ELSE ''
                                                       END + @result

                          SELECT @result = CASE @temp
                                             WHEN '0' THEN ''
                                             WHEN '1' THEN 'Ten'
                                             WHEN '2' THEN 'Twenty'
                                             WHEN '3' THEN 'Thirty'
                                             WHEN '4' THEN 'Fourty'
                                             WHEN '5' THEN 'Fifty'
                                             WHEN '6' THEN 'Sixty'
                                             WHEN '7' THEN 'Seventy'
                                             WHEN '8' THEN 'Eighty'
                                             WHEN '9' THEN 'Ninety'
                                           END + ' ' + @result
                      END

                  IF ( ( ( LEN(@NumberAsString) - @Length ) % 3 ) = 2 )
                      OR ( ( ( LEN(@NumberAsString) - @Length ) % 3 ) = 0 )
                         AND ( @Length = 1 )
                    BEGIN
                        SELECT @result = CASE @temp
                                           WHEN '0' THEN ''
                                           WHEN '1' THEN 'One'
                                           WHEN '2' THEN 'Two'
                                           WHEN '3' THEN 'Three'
                                           WHEN '4' THEN 'Four'
                                           WHEN '5' THEN 'Five'
                                           WHEN '6' THEN 'Six'
                                           WHEN '7' THEN 'Seven'
                                           WHEN '8' THEN 'Eight'
                                           WHEN '9' THEN 'Nine'
                                         END + ' ' + CASE
                                                       WHEN ( @NumberAsString = '0' ) THEN 'Zero'
                                                       WHEN ( @temp <> '0' )
                                                            AND ( ( ( LEN(@NumberAsString) - @Length ) % 3 ) = 2 ) THEN 'Hundred '
                                                       ELSE ''
                                                     END + CASE
                                                             WHEN ( ( LEN(@NumberAsString) - @Length ) = 3 ) THEN 'Thousand '
															 --WHEN ( ( LEN(@NumberAsString) - @Length ) = 6 ) THEN 'Lakh '
                                                             WHEN ( ( LEN(@NumberAsString) - @Length ) = 6 ) THEN 'Million '
															 --WHEN ( ( LEN(@NumberAsString) - @Length ) = 8 ) THEN 'Crore '
                                                             WHEN ( ( LEN(@NumberAsString) - @Length ) = 9 ) THEN 'Billion '
                                                             WHEN ( ( LEN(@NumberAsString) - @Length ) = 12 ) THEN 'Trillion '
                                                             WHEN ( ( LEN(@NumberAsString) - @Length ) = 15 ) THEN 'Quadrillion '
                                                             ELSE ''
                                                           END + @result
                    END

                  SELECT @Length = @Length - 1
              END

            SELECT @result = REPLACE(@result, '  ', ' ')
        END
      ELSE
        IF @Number = 0
          BEGIN
              SELECT @result = 'Zero';
          END

      RETURN @result;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcPolicyModeToNumber]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcPolicyModeToNumber](	@PolicyMode			VARCHAR(10)
												,@ConversionType	VARCHAR(100)
												)
RETURNS INT
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--18-Feb-2012	Pinakee Das		1.0			Creation
--22-Mar-2012	Pinakee Das		1.1			Returning '1' in case the @ReturnValue is NULL.
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
BEGIN
	DECLARE @ReturnValue	INT;
	SET @ReturnValue=NULL;
	IF @ConversionType = 'Installments'
	BEGIN
		IF @PolicyMode = 'Mly'
			SET @ReturnValue = 12;
		IF @PolicyMode = 'Qly'
			SET @ReturnValue = 4;
		IF @PolicyMode = 'Hly'
			SET @ReturnValue = 2;
		IF @PolicyMode = 'Yly'
			SET @ReturnValue = 1;
	END
	ELSE IF @ConversionType = 'Intervals'
	BEGIN
		IF @PolicyMode = 'Mly'
			SET @ReturnValue = 1;
		IF @PolicyMode = 'Qly'
			SET @ReturnValue = 3;
		IF @PolicyMode = 'Hly'
			SET @ReturnValue = 6;
		IF @PolicyMode = 'Yly'
			SET @ReturnValue = 12;
	END
	IF @ReturnValue IS NULL
		SET @ReturnValue=1;

	RETURN @ReturnValue;
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcRupeesToWords]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcRupeesToWords](@Number DECIMAL(18,2)=0.00)
RETURNS VARCHAR(MAX)
AS
BEGIN
	DECLARE @Result VARCHAR(MAX);
	DECLARE @NumberPart01	INT
			,@NumberPart02	INT
	SET @NumberPart01=FLOOR(@Number)
	SET @NumberPart02=(@Number-@NumberPart01)*100;
	SET @Result='Rupees ' + LTRIM(RTRIM(dbo.funcNumberToWord(@NumberPart01))) + ' and ' + LTRIM(RTRIM(dbo.funcNumberToWord(@NumberPart02))) + ' Paise Only';
	RETURN @result;
END;



GO
/****** Object:  UserDefinedFunction [dbo].[funcTEMPGetFieldforceIDByOldFFCode]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcTEMPGetFieldforceIDByOldFFCode](@OldCode VARCHAR(20)='')
RETURNS NVARCHAR(300)
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--26-Nov-2012	Balabhadra Kar		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
AS
  BEGIN
		DECLARE @FieldForceID NVARCHAR(200);
		IF (@OldCode<>'')
			BEGIN
				SELECT	@FieldForceID=FF.FieldForceID
				FROM	dbo.CRM_MST_FieldForces AS FF 
				WHERE	FF.VC_FIELD1=@OldCode

				--RETURN	@FieldForceID;
			END
		ELSE
			BEGIN
				SELECT	@FieldForceID=0
				--RETURN @FieldForceID;
			END
			
	RETURN @FieldForceID;
  END;



GO
/****** Object:  UserDefinedFunction [dbo].[GetMasterAccount_CashCode]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetMasterAccount_CashCode]
(
	 
)
RETURNS varchar(100)
AS
BEGIN
		DECLARE @AccountsCode_CASH varchar(100)
	 -- GET THE MASTER ACCOUNT CODE
		SELECT  @AccountsCode_CASH = AM.AccountCode
		FROM Accounts_Master AM
		WHERE RTRIM(UPPER(AM.AccountDescription)) = 'CASH IN HAND'
		
		return @AccountsCode_CASH

END



GO
/****** Object:  UserDefinedFunction [dbo].[GetMasterAccount_CashID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetMasterAccount_CashID]
(
	 
)
RETURNS int
AS
BEGIN
		DECLARE @CashAccountsID int
	 -- GET THE MASTER ACCOUNT CODE
		SELECT  @CashAccountsID = AM.AccountID
		FROM Accounts_Master AM
		WHERE RTRIM(UPPER(AM.AccountDescription)) = 'CASH IN HAND'
		
		return @CashAccountsID

END



GO
/****** Object:  UserDefinedFunction [dbo].[GetMasterAccountByName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetMasterAccountByName]
(
	 @AccountName varchar(100)
)
RETURNS int
AS
BEGIN
		DECLARE @AccountsID int
	 -- GET THE MASTER ACCOUNT CODE
		SELECT  @AccountsID = AM.AccountID
		FROM Accounts_Master AM
		WHERE RTRIM(UPPER(AM.AccountDescription)) = @AccountName
		
		return @AccountsID

END



GO
/****** Object:  UserDefinedFunction [dbo].[GetMasterAccountCodeByID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetMasterAccountCodeByID]
(
	 @AccountID int
)
RETURNS varchar(100)
AS
BEGIN
		DECLARE @AccountsCode varchar(100) 
	 -- GET THE MASTER ACCOUNT CODE
		SELECT  @AccountsCode = AM.AccountCode
		FROM Accounts_Master AM
		WHERE Am.AccountID = @AccountID
		
		return @AccountsCode

END



GO
/****** Object:  UserDefinedFunction [dbo].[GetMasterAccountCodeByName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetMasterAccountCodeByName]
(
	 @AccountName varchar(100)
)
RETURNS varchar(100)
AS
BEGIN
		DECLARE @AccountsCode varchar(100) 
	 -- GET THE MASTER ACCOUNT CODE
		SELECT  @AccountsCode = AM.AccountCode
		FROM Accounts_Master AM
		WHERE LTRIM(RTRIM(UPPER(AM.AccountDescription))) = UPPER(@AccountName)
		
		return @AccountsCode

END



GO
/****** Object:  UserDefinedFunction [dbo].[GetMasterAccountGroupIDByAccountsID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetMasterAccountGroupIDByAccountsID]
(
	 @AccountID int
)
RETURNS varchar(100)
AS
BEGIN
		DECLARE  @AccountGroupID int
	 -- GET THE MASTER ACCOUNT CODE
		SELECT  @AccountGroupID = AM.AccountGroupID
		FROM Accounts_Master AM
		WHERE Am.AccountID = @AccountID
		
		return @AccountGroupID

END



GO
/****** Object:  UserDefinedFunction [dbo].[GetMasterAccountGroupIDByName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date, ,>
-- Description:	<Description, ,>
-- =============================================

CREATE FUNCTION [dbo].[GetMasterAccountGroupIDByName]
(
	 @AccountGroupName varchar(100)
)
RETURNS int
AS
BEGIN
		DECLARE @AccountsGroupID int
	 -- GET THE MASTER ACCOUNT CODE
		SELECT  @AccountsGroupID = Ag.AccountGroupID
		FROM Accounts_Group Ag
		WHERE RTRIM(UPPER(Ag.AccountGroupDescription)) = @AccountGroupName
		
		return @AccountsGroupID

END



GO
/****** Object:  UserDefinedFunction [dbo].[GetMasterAccountIDByName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create FUNCTION [dbo].[GetMasterAccountIDByName]
(
	 @AccountName varchar(100)
)
RETURNS int
AS
BEGIN
		DECLARE @AccountsID int
	 -- GET THE MASTER ACCOUNT CODE
		SELECT  @AccountsID = AM.AccountID
		FROM Accounts_Master AM
		WHERE RTRIM(UPPER(AM.AccountDescription)) = @AccountName
		
		return @AccountsID

END



GO
/****** Object:  UserDefinedFunction [dbo].[GetMasterAccountNameByID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetMasterAccountNameByID]
(
	 @AccountID INT
)
RETURNS VARCHAR(200)
AS
BEGIN
		DECLARE @AccountName VARCHAR(200)
	 -- GET THE MASTER ACCOUNT CODE
		SELECT  @AccountName = AM.AccountDescription
		FROM Accounts_Master AM
		WHERE AccountID =@AccountID
		
		return @AccountName

END



GO
/****** Object:  UserDefinedFunction [dbo].[GetMasterAccountParentIDByAccountsID]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetMasterAccountParentIDByAccountsID]
(
	 @AccountID int
)
RETURNS varchar(100)
AS
BEGIN
		DECLARE  @AccountGroupID int, @AccountParentID int
		
	 -- GET THE MASTER ACCOUNT CODE
		SELECT  @AccountGroupID = AM.AccountGroupID
		FROM Accounts_Master AM
		WHERE Am.AccountID = @AccountID
		
		
		SELECT @AccountParentID = AG.AccountGroupParentID
		FROM Accounts_Group AG
		WHERE AG.AccountGroupID = @AccountGroupID
		
		return @AccountParentID

END



GO
/****** Object:  UserDefinedFunction [dbo].[GetMonthNumberByAliasName]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[GetMonthNumberByAliasName]
(
	@MonthAliasName varchar(20)
)
RETURNS varchar(2)
AS
BEGIN
	DECLARE @MONTH_NO VARCHAR(2)
	IF UPPER(@MonthAliasName) = 'JAN' BEGIN  SET @MONTH_NO='01' END
	IF UPPER(@MonthAliasName) = 'FEB' BEGIN  SET @MONTH_NO='02' END
	IF UPPER(@MonthAliasName) = 'MAR' BEGIN  SET @MONTH_NO='03' END
	IF UPPER(@MonthAliasName) = 'APR' BEGIN  SET @MONTH_NO='04' END
	IF UPPER(@MonthAliasName) = 'MAY' BEGIN  SET @MONTH_NO='05' END
	IF UPPER(@MonthAliasName) = 'JUN' BEGIN  SET @MONTH_NO='06' END
	IF UPPER(@MonthAliasName) = 'JUL' BEGIN  SET @MONTH_NO='07' END
	IF UPPER(@MonthAliasName) = 'AUG' BEGIN  SET @MONTH_NO='08' END
	IF UPPER(@MonthAliasName) = 'SEP' BEGIN  SET @MONTH_NO='09' END
	IF UPPER(@MonthAliasName) = 'OCT' BEGIN  SET @MONTH_NO='10' END
	IF UPPER(@MonthAliasName) = 'NOV' BEGIN  SET @MONTH_NO='11' END
	IF UPPER(@MonthAliasName) = 'DEC' BEGIN  SET @MONTH_NO='12' END
	
	RETURN @MONTH_NO
END



GO
/****** Object:  UserDefinedFunction [dbo].[funcSplitText]    Script Date: 4/6/2020 7:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcSplitText] (@vStr nVarchar(Max), @cSep char(1))
RETURNS table
AS
--------------------------------------------------------------------------------------------------------------------------------
--CHANGE HISTORY
--Date			Author			Version		Change
--07-Nov-2011	Pinakee Das		1.0			Creation
--
--DESCRIPTION
--
--
--------------------------------------------------------------------------------------------------------------------------------
	RETURN	(
				WITH Pieces(pn, start, stop) AS (
													SELECT 1, 1, convert(int,CHARINDEX(@cSep, @vStr))
													UNION ALL
													SELECT pn + 1, stop + 1, convert(int,CHARINDEX(@cSep, @vStr, stop + 1))
													FROM Pieces
													WHERE stop > 0
												)
				SELECT pn as nPartID,
				RTRIM(LTRIM(SUBSTRING(@vStr, start, CASE WHEN stop > 0 THEN stop-start ELSE len(@vStr) END))) AS vStrPart
				FROM Pieces
			)



GO
