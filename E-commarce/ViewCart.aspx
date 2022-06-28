<%@ Page Language="C#" MasterPageFile="~/Comman.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="E_commarce.ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <div>
            <asp:Image ID="Image1" runat="server" Height="84px" ImageUrl="~/NewFolder1/logo.png" Width="522px" />
            <br />
        </div>
            <table class="auto-style1">
            <tr>
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
                    <asp:CheckBoxList ID="checkboxlistviewcart" runat="server">
                    </asp:CheckBoxList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="deletebutton" runat="server" OnClick="Button1_Click" Text="Delete" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Text="lblMsg"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
    </asp:Content>