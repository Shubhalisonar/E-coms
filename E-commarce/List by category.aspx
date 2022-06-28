<%@ Page Language="C#" MasterPageFile="~/Comman.Master" AutoEventWireup="true" CodeBehind="List by category.aspx.cs" Inherits="E_commarce.List_by_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="84px" ImageUrl="~/NewFolder1/logo.png" Width="522px" />
            <br />
            <br />
            <strong>
&nbsp;</strong></div>
        <table class="auto-style1">
            <tr>
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
                    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:BulletedList ID="BulletedList1" runat="server">
                    </asp:BulletedList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:Label ID="lblproduct" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
   </asp:Content>