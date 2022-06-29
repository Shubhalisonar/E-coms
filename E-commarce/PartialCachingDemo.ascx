<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PartialCachingDemo.ascx.cs" Inherits="E_commarce.WebUserControl2" %>
<%@ OutputCache Duration="20" VaryByControl="DropDownList1" VaryByParam="None"%>
<p>

    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
</p>
<p>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" >
    </asp:CheckBoxList>
</p>

