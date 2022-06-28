<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="E_commarce.Home" %>

<%@ Register TagPrefix="cc" Namespace="E_commarce.App_Code"  %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="84px" ImageUrl="~/NewFolder1/logo.png" Width="522px" />
            <br />
            <br />
            <strong>
            <asp:HyperLink ID="hlhome" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
&nbsp; |&nbsp;
            <asp:HyperLink ID="hlvc" runat="server">View Cart</asp:HyperLink>
&nbsp; |
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/List by category.aspx">List By Category</asp:HyperLink>
&nbsp; |&nbsp;
            <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="~/Registration.aspx">Registration</asp:HyperLink>
            </strong>
        </div>
        <table class="auto-style1">
            <tr>
                <td rowspan="5">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ReadQueryString.aspx?category=Mobile">Mobile</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ReadQueryString.aspx?category=Camera">Camera</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ReadQueryString.aspx?category=Laptop">Laptop</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ReadQueryString.aspx?category=SmartWatch">Smart watch</asp:HyperLink>
                    <br />
                    <br />
                    <asp:Label ID="lblvcount" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Image ID="Image2" runat="server" Height="384px" ImageUrl="~/NewFolder1/Mobile-Phone-PNG-HD.png" />
                </td>
                <td class="auto-style2"></td>
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
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <cc:CountedButton ID="cb1" runat="server" />
    </form>
</body>
</html>
