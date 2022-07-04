
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="E_commarce.Menu" %>
<p>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
&nbsp; |&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registration.aspx">Register</asp:HyperLink>
&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/List by category.aspx">List by catagory</asp:HyperLink>
&nbsp;&nbsp; |&nbsp;
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ViewCart.aspx">View cart</asp:HyperLink>
&nbsp;&nbsp; |&nbsp;
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome&nbsp;&nbsp;&nbsp; [User Name]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="RedirectToLoginPage" LogoutPageUrl="~/Login.aspx" />
</p>

