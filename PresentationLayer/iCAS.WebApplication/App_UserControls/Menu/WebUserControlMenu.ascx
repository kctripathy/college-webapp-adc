﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlMenu.ascx.cs" Inherits="WebUserControlMenu" %>
<%--<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">--%>

<style type="text/css">
    .bg-adc {
        background-color: #FFCC00 !important;
        color: black !important;
        background-image: none !important;
    }
</style>
<div class="navbar navbar-inverse bg-adc" role="navigation">   
    <%--<div class="web_container">--%>
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="~/Default.aspx" runat="server">
            <img src="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/Images/logo-50.png" alt="ADC" style="padding: 4px !important" />            
        </a>
        <h4 style="margin-top:10px; width: 400px; font-weight: 400"> AD COLLEGE - BACK OFFICE</h4>        
    </div>
    <div class="collapse navbar-collapse">

        <asp:Literal runat="server" ID="lit_MenuItems" />

        <ul class="nav navbar-nav navbar-right">
            <%--<li>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
				</li>--%>
            <asp:Literal runat="server" ID="lit_LoginLogout" />
            <%--<asp:Literal runat="server" ID="lit_Register" />--%>
            <%--<li><a href="#"><i class="fa fa-sign-in"></i>&nbsp;Login</a></li>--%>
            <%--<li><a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;Register&nbsp;&nbsp;</a></li>--%>
        </ul>
    </div>
    <%--</div>--%>
</div>
