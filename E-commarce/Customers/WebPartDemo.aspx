<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebPartDemo.aspx.cs" Inherits="E_commarce.Customers.WebPartDemo" %>

<%@ Register Src="~/Customers/Calculater.ascx" TagPrefix="uc1" TagName="Calculater" %>
<%@ Register Src="~/Customers/Calender.ascx" TagPrefix="uc1" TagName="Calender" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:WebPartManager ID="WebPartManager1" runat="server">
                        </asp:WebPartManager>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="lbcatlogmode" runat="server" OnClick="lbcatlogmode_Click">CatLog Mode</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="lbeditermode" runat="server" OnClick="lbeditermode_Click">Editer Mode</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="lbdesingmode" runat="server" OnClick="lbdesingmode_Click">Desing Mode</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:EditorZone ID="EditorZone1" runat="server">
                            <ZoneTemplate>
                                <asp:AppearanceEditorPart ID="AppearanceEditorPart1" runat="server" />
                                <asp:LayoutEditorPart ID="LayoutEditorPart1" runat="server" />
                                <asp:BehaviorEditorPart ID="BehaviorEditorPart1" runat="server" />
                            </ZoneTemplate>
                        </asp:EditorZone>
                    </td>
                    <td>
                        <asp:CatalogZone ID="CatalogZone1" runat="server">
                            <ZoneTemplate>
                                <asp:PageCatalogPart ID="PageCatalogPart1" runat="server" />
                                <asp:DeclarativeCatalogPart ID="DeclarativeCatalogPart1" runat="server">
<WebPartsTemplate>
    <uc1:Calculater runat="server" id="Calculater" title="Calculater"/>
    <uc1:Calender runat="server" id="Calender" title="Calender" />
</WebPartsTemplate>
                                </asp:DeclarativeCatalogPart>

                            </ZoneTemplate>
                        </asp:CatalogZone>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:WebPartZone ID="WebPartZone1" runat="server">
                        </asp:WebPartZone>
                    </td>
                    <td>
                        <asp:WebPartZone ID="WebPartZone2" runat="server">
                        </asp:WebPartZone>
                    </td>
                    <td>
                        <asp:WebPartZone ID="WebPartZone3" runat="server">
                        </asp:WebPartZone>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
