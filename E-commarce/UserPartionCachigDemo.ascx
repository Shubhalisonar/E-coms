<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserPartionCachigDemo.ascx.cs" Inherits="E_commarce.WebUserControl3" %>
<%@ Page Language="C#" MasterPageFile="~/Comman.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="E_commarce.Registration" %>
<%@ Register scr="PartialCachingDemo.ascx" tagname="PartialCachingDemo" TagPrefix="uc1"%>
<%@ Register src="Menu.ascx" tagname="Menu" tagprefix="uc1" %>
<%@ Register src="Footer.ascx" tagname="Footer" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:PartialCachingDemo ID="PartialCachingDemo1" runat="server"/>
</asp:Content>
