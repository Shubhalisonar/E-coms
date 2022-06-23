<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List by category.aspx.cs" Inherits="E_commarce.List_by_category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                    <asp:HyperLink ID="HyperLink1" runat="server">Mobile</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server">Camera</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server">Laptop</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink4" runat="server">Smart watch</asp:HyperLink>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                    </asp:DropDownList>
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
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </td>
                <td>
                    <asp:BulletedList ID="BulletedList1" runat="server">
                    </asp:BulletedList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
