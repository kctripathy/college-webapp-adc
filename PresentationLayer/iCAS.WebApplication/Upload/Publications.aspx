﻿<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/MicroERP-MasterPage.Master" AutoEventWireup="true" CodeBehind="Publications.aspx.cs" Inherits="Micro.WebApplication.UPLOAD.Publications" ValidateRequest="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<%@ Register Assembly="Micro.Commons" Namespace="Micro.Commons" TagPrefix="IAControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMicroERP" runat="server">

    <asp:UpdatePanel ID="UpdatePanel_Establishment" runat="server" UpdateMode="Conditional">

        <ContentTemplate>
            <style type="text/css">
                .RequiredField {
                    color: red;
                }

                .Formlabel {
                    font-weight: bold;
                    font-family: Lato, sans-serif;
                    font-size: 10pt;
                    color: navy;
                    margin-top: 10px;
                }

                #UploadStyleUL {
                    background-color: whitesmoke;
                    padding: 0px 4%;
                    width: 100%;
                }

                ul#ContentPlaceHolderMicroERP_rbl_EstablishmentTypeCode {
                    display: block;
                    float: left;
                    width: 100%;
                    margin: 0;
                    padding: 0;
                }

                    ul#ContentPlaceHolderMicroERP_rbl_EstablishmentTypeCode li {
                        display: block;
                        float: left;
                        width: 25%;
                        margin: 0 0 2px 0;
                        padding: 0;
                        text-align: center;
                    }

                        ul#ContentPlaceHolderMicroERP_rbl_EstablishmentTypeCode li label {
                            font-family: Lato, serif;
                            font-size: 1em;
                            font-weight: normal;
                            color: navy;
                        }



                .TwentyFivePercent {
                    width: 25%;
                    display: block;
                    float: left;
                    text-align: left;
                }

                .FormSpacer1 {
                    display: block;
                    float: left;
                    height: 14px;
                    width: 100%;
                    background-color: transparent;
                }

                .Formlabel {
                    font-weight: normal;
                }

                .padding20pt {
                    padding: 0px 20px;
                }
            </style>
            <script type="text/javascript">
                function onEstbTypeClick(e) {
                    var estbDesc;
                    var estbType = document.getElementById('h3EstablishmentType');
                    var titleLabel = document.getElementById('ContentPlaceHolderMicroERP_lbl_NoticeTitle');

                    switch (e.value) {
                        case '1': estbDesc = 'Article'; break;
                        case '2': estbDesc = 'Project Paper'; break;
                        case '3': estbDesc = 'Book/Proceeding'; break;
                        case '4': estbDesc = 'Award/Achievment'; break;
                        case '5': estbDesc = 'Seminar Paper'; break;
                        case '6': estbDesc = 'Study Material'; break;
                        case '8': estbDesc = 'Staff Profile'; break;
                        case '9': estbDesc = 'Downloadable'; break;
                    }
                    titleLabel.innerText = "Please Enter the Title of the  " + estbDesc + ": ";
                    estbType.innerHTML = estbDesc;
                    return true;
                }
            </script>
            <h1 class="PageTitle" style="margin-top: -20px">
                <asp:Literal runat="server" ID="lit_PageTitle" Text="Manage Publications" />
            </h1>
            <asp:MultiView ID="Establishment_multi" runat="server">
                <asp:View ID="InputControls" runat="server">

                    <ul id="UploadStyleUL">
                        <li class="fullWidth text-center bg-warning" style="text-transform: uppercase">
                            <h3 id="h3EstablishmentType">Article</h3>
                        </li>
                        <li class="Formlabel">&nbsp;<asp:Label runat="server" ID="lblMessage" Text="" /></li>

                        <li class="Formvalue">
                            <asp:RadioButtonList ID="rbl_EstablishmentTypeCode" runat="server" RepeatDirection="Vertical" RepeatLayout="UnorderedList">
                                <asp:ListItem Value="1" Selected="True" onclick="javascript:onEstbTypeClick(this)"> Article</asp:ListItem>
                                <asp:ListItem Value="2" onclick="javascript:onEstbTypeClick(this)">Project Paper</asp:ListItem>
                                <asp:ListItem Value="3" onclick="javascript:onEstbTypeClick(this)">Book/Proceeding</asp:ListItem>
                                <asp:ListItem Value="4" onclick="javascript:onEstbTypeClick(this)">Award/Achievment</asp:ListItem>
                                <asp:ListItem Value="5" onclick="javascript:onEstbTypeClick(this)">Seminar Paper</asp:ListItem>
                                <asp:ListItem Value="6" onclick="javascript:onEstbTypeClick(this)">Study Material</asp:ListItem>
                                <%--<asp:ListItem Value="7">Hyperlink</asp:ListItem>--%>
                                <asp:ListItem Value="8" onclick="javascript:onEstbTypeClick(this)">Staff Profile</asp:ListItem>
                                <asp:ListItem Value="9" onclick="javascript:onEstbTypeClick(this)">Downloadable</asp:ListItem>
                            </asp:RadioButtonList>

                            <asp:RequiredFieldValidator ID="requiredFieldValidator_EstablishmentTypeCode" runat="server" ControlToValidate="rbl_EstablishmentTypeCode" Display="Dynamic" SetFocusOnError="true" />
                        </li>

                        <li class="FormSpacer1">&nbsp;
                        </li>
                        <li class="Formlabel">
                            <span class="RequiredField">*</span>
                            <asp:Label ID="lbl_NoticeTitle" runat="server" Text="Please Enter the Title of the Article: " />
                        </li>
                        <li class="Formvalue">
                            <asp:TextBox ID="txt_NoticeTitle" runat="server" Width="98%" />
                            <ajax:TextBoxWatermarkExtender runat="server" ID="watermark_NoticeTitleWater" TargetControlID="txt_NoticeTitle" WatermarkText=" " WatermarkCssClass="" />
                            <asp:RequiredFieldValidator ID="req_NoticeTitle" runat="server" ControlToValidate="txt_NoticeTitle" ErrorMessage="*" ForeColor="Red" Text="* Please enter the title!" SetFocusOnError="true" />
                        </li>

                        <li class="Formlabel">
                            <span class="RequiredField">*</span>
                            <asp:Label ID="lbl_Startdate" runat="server" Text="Publication Date:" />
                        </li>
                        <li class="Formvalue">
                            <asp:TextBox ID="txt_Startdate" runat="server" AutoPostBack="false" />
                            <asp:ImageButton runat="server" ID="imgbtn_Startdate" CausesValidation="false" ToolTip="Show Calender" ImageAlign="AbsMiddle" ImageUrl="~/Themes/Default/Images/Calander 01.gif" Height="21" Width="21" />
                            <ajax:CalendarExtender runat="server" Format="dd-MMM-yyyy" ID="clndrextender_Startdate" PopupButtonID="imgbtn_Startdate" CssClass="MicroCalendar" TargetControlID="txt_Startdate">
                            </ajax:CalendarExtender>
                            <asp:RequiredFieldValidator ID="requiredFieldValidator_Startdate" runat="server" ControlToValidate="txt_Startdate" SetFocusOnError="true" ErrorMessage="*" ForeColor="Red" Text="It can't be left empty!" />
                        </li>

                        <li class="Formlabel">
                            <span class="RequiredField">*</span>
                            <asp:Label ID="lbl_Enddate" runat="server" Text="Display Till Date:" />
                        </li>
                        <li class="Formvalue">
                            <asp:TextBox ID="txt_Enddate" runat="server" AutoPostBack="false" />
                            <asp:ImageButton runat="server" ID="imgbtn_Enddate" CausesValidation="false" ToolTip="Show Calender" ImageAlign="AbsMiddle" ImageUrl="~/Themes/Default/Images/Calander 01.gif" Height="21" Width="21" />
                            <ajax:CalendarExtender runat="server" Format="dd-MMM-yyyy" ID="clndrextender_Enddate" PopupButtonID="imgbtn_Enddate" CssClass="MicroCalendar" TargetControlID="txt_Enddate" />

                            <asp:RequiredFieldValidator ID="requiredFieldValidator_Enddate" runat="server" ControlToValidate="txt_Enddate" SetFocusOnError="true" ErrorMessage="*" ForeColor="Red" Text="It can't be left empty!" />

                        </li>

                        <li class="Formlabel FullWidth">
                            <span class="RequiredField">*</span>
                            <asp:Label ID="lbl_Description" runat="server" Text="Brief Description (max 200 alphabets) Please:" />
                        </li>
                        <li class="Formvalue  FullWidth">
                            <asp:TextBox ID="txt_Description" runat="server" Height="55px" Width="100%" TextMode="MultiLine" MaxLength="200" /><br />
                            <ajax:TextBoxWatermarkExtender runat="server" ID="TextBoxWatermarkExtender_txt_Description" TargetControlID="txt_Description" WatermarkText="Description " WatermarkCssClass="" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_Description" runat="server" ControlToValidate="txt_Description" ErrorMessage="*" ForeColor="Red" Text="Please enter the publication description! it can't left blank." />
                        </li>

                        <div style="display: block; border-top: solid 1px #808080; margin: 10px 0px 40px 0px; font-size: 15px;">


                            <li class="Formlabel">
                                <asp:Label ID="Label1" runat="server" Text="Select the File to Upload (only pdf / word files):" />
                            </li>
                            <li class="Formvalue">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:FileUpload runat="server" ID="fileUploadEstb" Width="80%" Height="30px" BorderStyle="Solid" BorderWidth="1" BorderColor="LightGray" class="btn btn-primary btn-xs" />
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

                        <li class="FormButton_Top">
                            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Save&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" class="btn btn-primary btn-xs padding20pt" />
                            <asp:Button ID="btn_view" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    View &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   " OnClick="btn_view_Click" CausesValidation="false" class="btn btn-primary btn-xs padding20pt" />
                        </li>
                    </ul>
                </asp:View>
                <asp:View ID="view_gridView" runat="server">
                    <ul>
                        <li class="FormButton_Top">
                            <asp:Button ID="btn_AddNew" runat="server" Text="Add New" OnClick="btn_AddNew_Click" />
                        </li>
                        <li class="GridView">
                            <asp:GridView ID="gridview_Establishment" runat="server"
                                AllowPaging="True" AllowSorting="True" PageSize="30"
                                AutoGenerateColumns="False"
                                OnRowCommand="gridview_Establishment_RowCommand"
                                OnRowDeleting="gridview_Establishment_RowDeleting"
                                OnRowEditing="gridview_Establishment_RowEditing"
                                OnPageIndexChanging="gridview_Establishment_PageIndexChanging">
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
                                    <asp:BoundField DataField="EstbTypeCodeDesc" HeaderText="Type" HeaderStyle-Width="15%" />
                                    <asp:BoundField DataField="EstbTitle" HeaderText="Tittle" HeaderStyle-Width="45%" />
                                    <asp:BoundField DataField="EstbViewStartDate" HeaderText="Upload Date" DataFormatString="{0:dd/MMM/yyyy}" />
                                    <asp:BoundField DataField="EstbViewEndDate" HeaderText="End Date" DataFormatString="{0:dd/MMM/yyyy}" Visible="false" />
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
                Title="Displaying Publication Record:-"
                BackgroundCssClass="modalBackground"
                Style="display: none;"
                CssClass="modalPopup"
                EnableViewState="true">
                <ItemTemplate>
                    <ul id="DialogBoxUL">

                        <li class="FLabel">Titile/Subject:</li>
                        <li class="FValue">
                            <asp:Label ID="lbl_TheMessage" runat="server" Text=""></asp:Label></li>

                        <li class="FLabel">Publication Date:</li>
                        <li class="FValue">.</li>


                        <li class="FLabel">Display Till</li>
                        <li class="FValue">.</li>


                        <li class="FLabel">Description</li>
                        <li class="FValue">.</li>


                        <li class="FLabel">Uploaded File</li>
                        <li class="FValue">
                            <asp:HyperLink runat="server" ID="lnkPage" NavigateUrl="#">Click here to download</asp:HyperLink></li>

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
                    Please wait image is getting uploaded....
                </ProgressTemplate>
            </asp:UpdateProgress>
        </ContentTemplate>

    </asp:UpdatePanel>
</asp:Content>
