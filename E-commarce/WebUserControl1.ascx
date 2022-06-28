<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="E_commarce.WebUserControl1" %>
<%@ Register src="Footer.ascx" tagname="Footer" tagprefix="uc1" %>
<%@ Register src="Menu.ascx" tagname="Menu" tagprefix="uc2" %>

<meta charset="utf-8" />
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3">
            <uc2:Menu ID="Menu1" runat="server" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <uc1:Footer ID="Footer1" runat="server" />
        </td>
    </tr>
</table>

