﻿<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/MicroERP-MasterPage.Master" AutoEventWireup="true" CodeBehind="PhotoGallery.aspx.cs" Inherits="Micro.WebApplication.UPLOAD.PhotoGallery" ValidateRequest="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<%@ Register Assembly="Micro.Commons" Namespace="Micro.Commons" TagPrefix="IAControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMicroERP" runat="server">

    <asp:UpdatePanel ID="UpdatePanel_Establishment" runat="server" UpdateMode="Conditional">

        <ContentTemplate>
            <style type="text/css">

                .ProgressBarDiv
                {
                    display:block;
                    width:400px;
                    height: 100px;
                    margin: 400px auto;
                    background-color: orange;
                    color: white;
                    font-size: large;
                }
                .RequiredField
                {
                    color: red;
                }

                .Formlabel
                {
                    font-weight: bold;
                    font-family: Lato, sans-serif;
                    font-size: 10pt;
                    color: navy;
                    margin-top: 10px;
                }

                #UploadStyleUL
                {
                    background-color: whitesmoke;
                    padding: 4%;
                    width: 100%;
                }

                /*  Define the background color for all the ODD background rows  */
                .GridView div > table > tbody > tr:nth-child(odd)
                {
                    background-color: floralwhite;
                }
                /*  Define the background color for all the EVEN background rows  */
                .GridView div > table > tbody > tr:nth-child(even)
                {
                    background-color: ghostwhite;
                }

                .GridView div > table > tbody > tr:nth-child(even)
                {
                    background-color: ghostwhite;
                }

                table#ContentPlaceHolderMicroERP_rbl_EstablishmentTypeCode > tbody > tr
                {
                    border: 2px solid #A3C0E8;
                    background-color: #A3C0E8;
                }

                    table#ContentPlaceHolderMicroERP_rbl_EstablishmentTypeCode > tbody > tr > td
                    {
                        /*background-image: url(../Images/gvHeaderBackground.gif);*/
                        color: navy;
                        display: block;
                        float: left;
                        width: 11%;
                        height: 80px;
                        background-image: url(../Images/H1PageTitleBg.gif);
                        background-position: top;
                        background-repeat: repeat-x;
                        background-color: whitesmoke;
                        padding: 0px 2px;
                        text-align: center;
                    }

                        table#ContentPlaceHolderMicroERP_rbl_EstablishmentTypeCode > tbody > tr > td:nth-child(0)
                        {
                            width: 12%;
                        }

                        table#ContentPlaceHolderMicroERP_rbl_EstablishmentTypeCode > tbody > tr > td input
                        {
                            display: block;
                            float: left;
                            width: 100%;
                            text-align: center;
                        }

                        table#ContentPlaceHolderMicroERP_rbl_EstablishmentTypeCode > tbody > tr > td label
                        {
                            font-weight: normal;
                            font-family: Lato, sans-serif;
                            font-size: 10pt;
                            text-align: center;
                            font-weight: normal;
                            word-wrap: break-word;
                            margin-top: 5px;
                        }


                .HeaderStyle
                {
                    background-image: url(../Images/gvHeaderBackground.gif);
                    background-color: #E2F0FF;
                    padding: 5px 0px;
                    height: 20px;
                    width: 100%;
                }

                    .HeaderStyle th
                    {
                        padding-left: 4px;
                        text-align: left;
                        border: solid 1px #A3C0E8;
                        color: Navy;
                    }

                .GridView table
                {
                    clear: left;
                    margin-top: 3px;
                    border: Solid 1px #A3C0E8;
                    width: 100%;
                }


                    .GridView table td
                    {
                        padding: 4px 0px 2px 4px;
                        color: Navy;
                        border: dotted 1px #E2F0FF;
                        border-bottom: Solid 1px #A3C0E8;
                        border-right: Solid 1px #A3C0E8;
                        height: auto;
                    }

                .ViewLinkItem input
                {
                    margin-left: 5px;
                    width: 20px;
                }

                #DialogBoxUL > li
                {
                    display: block;
                    float: left;
                }

                    #DialogBoxUL > li:nth-child(odd)
                    {
                        border-bottom: solid 1px skyblue;
                        width: 99%;
                        margin-bottom: 2px;
                        padding: 2px 0px;
                    }

                    #DialogBoxUL > li:nth-child(even)
                    {
                        background-color: lightblue;
                        width: 98%;
                        margin-bottom: 2px;
                        padding: 2px 0px;
                    }

                    .InVisible
                    {
                        display:none;
                    }
                    
                    .TwentyFive5Percent
                    {
                        width: 25%;
                        display:block;
                        float:left;
                        text-align:left;
                    }

                    .FiftyPercent
                    {
                        width: 50%;
                        display:block;
                        float:left;
                        text-align:left;
                    }

                    .FullWidth
                    {
                        width: 99%;
                        display:block;
                        float:left;
                    }
            </style>
            <h1 class="PageTitle">
                <asp:Literal runat="server" ID="lit_PageTitle" Text="Manage Photo Gallery" />
            </h1>

            <asp:MultiView ID="Establishment_multi" runat="server">
                <asp:View ID="InputControls" runat="server">

                    <ul id="UploadStyleUL">
                        <li class="FormButton_Top">
                            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Save" class="btn btn-primary btn-xs" />
                            <asp:Button ID="btn_view" runat="server" Text="View" OnClick="btn_view_Click" CausesValidation="false" class="btn btn-primary btn-xs" />
                        </li>
                        <li class="Formlabel InVisible">&nbsp;<asp:Label runat="server" ID="lblMessage" Text="Please specify the Type to upload:" /></li>
                        <li class="Formvalue InVisible">
                            <asp:RadioButtonList ID="rbl_EstablishmentTypeCode" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="IMG" Selected="True"> Photo Gallery</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="requiredFieldValidator_EstablishmentTypeCode" runat="server" ControlToValidate="rbl_EstablishmentTypeCode" Display="Dynamic" SetFocusOnError="true" />
                        </li>
                        <li class="Formlabel FullWidth">
                            <span class="RequiredField">*</span>
                            <asp:Label ID="lbl_NoticeTitle" runat="server" Text="Please Enter the Title for the Photo: " />
                        </li>
                        <li class="Formvalue FullWidth">
                            <asp:TextBox ID="txt_NoticeTitle" runat="server" Width="98%" />
                            <ajax:TextBoxWatermarkExtender runat="server" ID="watermark_NoticeTitleWater" TargetControlID="txt_NoticeTitle" WatermarkText="Title of the photo" WatermarkCssClass="" />
                            <asp:RequiredFieldValidator ID="req_NoticeTitle" runat="server" ControlToValidate="txt_NoticeTitle" ErrorMessage="*" ForeColor="Red" Text="* Please enter the title for the photo!" SetFocusOnError="true" />
                        </li>

                        <li class="Formlabel FullWidth">
                            <span class="RequiredField">*</span>
                            <asp:Label ID="lbl_Startdate" runat="server" Text="Upload Date:" />
                        </li>
                        <li class="Formvalue FullWidth">
                            <asp:TextBox ID="txt_Startdate" runat="server" AutoPostBack="false" />
                            <asp:ImageButton runat="server" ID="imgbtn_Startdate" CausesValidation="false" ToolTip="Show Calender" ImageAlign="AbsMiddle" ImageUrl="~/Themes/Default/Images/Calander 01.gif" Height="21" Width="21" />
                            <ajax:CalendarExtender runat="server" Format="dd-MMM-yyyy" ID="clndrextender_Startdate" PopupButtonID="imgbtn_Startdate" CssClass="MicroCalendar" TargetControlID="txt_Startdate">
                            </ajax:CalendarExtender>
                            <asp:RequiredFieldValidator ID="requiredFieldValidator_Startdate" runat="server" ControlToValidate="txt_Startdate" SetFocusOnError="true" ErrorMessage="*" ForeColor="Red" Text="It can't be left empty!" />
                        </li>

                        <li class="Formlabel FullWidth">
                            <span class="RequiredField">*</span>
                            <asp:Label ID="lbl_Enddate" runat="server" Text="Display Till:" />
                        </li>
                        <li class="Formvalue FullWidth">
                            <asp:TextBox ID="txt_Enddate" runat="server" AutoPostBack="false" />
                            <asp:ImageButton runat="server" ID="imgbtn_Enddate" CausesValidation="false" ToolTip="Show Calender" ImageAlign="AbsMiddle" ImageUrl="~/Themes/Default/Images/Calander 01.gif" Height="21" Width="21" />
                            <ajax:CalendarExtender runat="server" Format="dd-MMM-yyyy" ID="clndrextender_Enddate" PopupButtonID="imgbtn_Enddate" CssClass="MicroCalendar" TargetControlID="txt_Enddate" />
                            <asp:RequiredFieldValidator ID="requiredFieldValidator_Enddate" runat="server" ControlToValidate="txt_Enddate" SetFocusOnError="true" ErrorMessage="*" ForeColor="Red" Text="It can't be left empty!" />
                        </li>

                        <li class="Formlabel FullWidth">
                            <span class="RequiredField">*</span>
                            <asp:Label ID="lbl_Description" runat="server" Text="Brief Description for the photo (max 200 alphabets) Please:" />
                        </li>
                        <li class="Formvalue FullWidth">
                            <asp:TextBox ID="txt_Description" runat="server" Height="125px" Width="100%" TextMode="MultiLine" MaxLength="200" /><br />
                            <ajax:TextBoxWatermarkExtender runat="server" ID="TextBoxWatermarkExtender_txt_Description" TargetControlID="txt_Description" WatermarkText="Description " WatermarkCssClass="" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_Description" runat="server" ControlToValidate="txt_Description" ErrorMessage="*" ForeColor="Red" Text="Please enter the Photo Gallery description! it can't left blank." />
                        </li>

                        <div style="display: block; margin: 10px 0px 40px 0px; font-size: 15px;">


                            <li class="Formlabel">
                                <asp:Label ID="Label1" runat="server" Text="Select the File to Upload (only jpg /jpeg / png files):" />
                            </li>
                            <li class="Formvalue">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:FileUpload runat="server" ID="fileUploadEstb" Width="70%" Height="30px" BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" class="btn btn-primary p-2 m-4" />
                                        <br />
                                        <asp:Button ID="btnUpload" runat="server" Text=" Upload Now" OnClick="Upload_File" CausesValidation="true" class="btn btn-primary m-2 p-2" />
                                        <br />
                                        <asp:Label runat="server" ID="lbl_FileUploadStatus" ForeColor="Red" Text="File uploaded successfully. please save/update the record now" Visible="false" />

                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:PostBackTrigger ControlID="btnUpload" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </li>
                        </div>
                    </ul>
                </asp:View>
                <asp:View ID="view_gridView" runat="server">
                    <ul>
                        <li class="FormButton_Top">
                            <asp:Button ID="btn_AddNew" runat="server" Text="Add New" OnClick="btn_AddNew_Click" />
                        </li>
                        <li class="GridView">
                            <asp:GridView ID="gridview_Establishment" runat="server" AllowPaging="True" AllowSorting="True" PageSize="30" AutoGenerateColumns="False" OnRowCommand="gridview_Establishment_RowCommand" OnRowDeleting="gridview_Establishment_RowDeleting" OnRowEditing="gridview_Establishment_RowEditing">
                                <AlternatingRowStyle CssClass="AlternatingRowStyle" />
                                <RowStyle CssClass="RowStyle" />
                                <HeaderStyle CssClass="HeaderStyle" />
                                <Columns>
                                    <asp:TemplateField ItemStyle-CssClass="StudentId" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lbl_EstbID" Text='<%# Eval("EstbID") %>' Visible="false" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="EstbID" HeaderText="EstablishmentId" Visible="false" />
                                    <asp:BoundField DataField="EstbTypeCodeDesc" HeaderText="Type" HeaderStyle-Width="8%" />
                                    <asp:BoundField DataField="EstbTitle" HeaderText="Tittle" HeaderStyle-Width="50%" />
                                    <asp:BoundField DataField="EstbViewStartDate" HeaderText="Upload Date" DataFormatString="{0:dd/MMM/yyyy}" />
                                    <asp:BoundField DataField="EstbViewEndDate" HeaderText="Display Till Date" DataFormatString="{0:dd/MMM/yyyy}" />
                                    <%--<asp:BoundField DataField="EstbDescription" HeaderText="Description" />--%>
                                    <asp:CommandField ShowEditButton="true" HeaderText="Edit" ButtonType="Image" EditImageUrl="~/Themes/Default/Images/GRID_EDIT.ico" ControlStyle-CssClass="EditLink" ItemStyle-CssClass="EditLinkItem">
                                        <ControlStyle CssClass="EditLink" />
                                        <ItemStyle CssClass="EditLinkItem" />
                                    </asp:CommandField>
                                    <asp:CommandField ShowDeleteButton="True" HeaderText="Del." ButtonType="Image" DeleteImageUrl="~/Themes/Default/Images/GRID_DELETE.ico" ControlStyle-CssClass="DeleteLink" ItemStyle-CssClass="DeleteLinkItem">
                                        <ControlStyle CssClass="DeleteLink" />
                                        <ItemStyle CssClass="DeleteLinkItem" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="EstbStatusFlagDesc" HeaderText="Status" />
                                    <asp:CommandField ShowSelectButton="True" HeaderText="View" ButtonType="Image" SelectImageUrl="~/Themes/Default/Images/GRID_SELECT.ico" ControlStyle-CssClass="ViewLink" ItemStyle-CssClass="ViewLinkItem">
                                        <ControlStyle CssClass="ViewLink" />
                                        <ItemStyle CssClass="ViewLinkItem" />
                                    </asp:CommandField>
                                </Columns>
                                <PagerSettings Position="TopAndBottom" FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast" />
                                <PagerStyle CssClass="MicroPagerStyle" />
                            </asp:GridView>
                        </li>
                    </ul>
                </asp:View>
            </asp:MultiView>



            <IAControl:DialogBox ID="dialog_Message" runat="server"
                Title="Displaying Photo Gallery Record:-"
                BackgroundCssClass="modalBackground"
                Style="display: none;"
                CssClass="modalPopup"
                EnableViewState="true">
                <ItemTemplate>
                    <ul id="DialogBoxUL">

                        <li class="FLabel">Titile/Subject:</li>
                        <li class="FValue">
                            <asp:Label ID="lbl_TheMessage" runat="server" Text=""></asp:Label></li>

                        <%--<li class="FLabel">Photo Uploads Date:</li>
                        <li class="FValue">.</li>


                        <li class="FLabel">Display Till</li>
                        <li class="FValue">.</li>


                        <li class="FLabel">Description</li>
                        <li class="FValue">.</li>


                        <li class="FLabel">Uploaded File</li>
                        <li class="FValue">
                            <asp:HyperLink runat="server" ID="lnkPage" NavigateUrl="#">Click here to download</asp:HyperLink></li>--%>

                    </ul>
                </ItemTemplate>
            </IAControl:DialogBox>


            <asp:UpdateProgress runat="server" ID="PageUpdateProgress">
                <ProgressTemplate>
                    <div id="UpdateProgress">
                        <div class="UpdateProgressArea">
                        </div>
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>

            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                    <div class="ProgressBarDiv">
                        Please wait image is getting uploaded....
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </ContentTemplate>

    </asp:UpdatePanel>
</asp:Content>
