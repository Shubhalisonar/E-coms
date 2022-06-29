<%@ Page Language="C#" MasterPageFile="~/Comman.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="E_commarce.Home" %>

<%@ Register TagPrefix="cc" Namespace="E_commarce.App_Code"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 14px;
        }
    </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="84px" ImageUrl="~/NewFolder1/logo.png" Width="522px" />
            <br />
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                
                <td class="auto-style2">
                    <asp:Image ID="Image2" runat="server" Height="384px" ImageUrl="~/NewFolder1/Mobile-Phone-PNG-HD.png" />
                </td>
                <td class="auto-style2"></td>
                <td>
                    <asp:Label ID="lblvcount" runat="server" Text="lblvcount"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <cc:CountedButton ID="cb1" runat="server" />
</asp:Content>
