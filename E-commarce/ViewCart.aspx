<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="E_commarce.ViewCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <asp:Image ID="Image1" runat="server" Height="84px" ImageUrl="~/NewFolder1/logo.png" Width="522px" />
            <br />
            <br />
            <strong>
            <asp:HyperLink ID="hlhome" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
&nbsp; |&nbsp;
            <asp:HyperLink ID="hlvc" runat="server" NavigateUrl="~/ViewCart.aspx">View Cart</asp:HyperLink>
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
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Your view item"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    </asp:CheckBoxList>
                </td>
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
        </div>
    </form>
</body>
</html>
