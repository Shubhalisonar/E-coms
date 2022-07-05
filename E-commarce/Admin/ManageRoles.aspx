<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageRoles.aspx.cs" Inherits="E_commarce.Admin.ManageRoles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style3 {
            width: 251px;
        }
        .auto-style4 {
            width: 335px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Enter Role</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtrole" runat="server" Width="194px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bntaddrole" runat="server" Text="Add Role" OnClick="bntaddrole_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Select User</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="205px">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="bntaddusertorole" runat="server" CssClass="auto-style2" Text="Add User To Role" OnClick="bntaddusertorole_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblMsg" runat="server" Text="lblMsg"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
