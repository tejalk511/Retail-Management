<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <p>
    <br />
</p><asp:Panel ID="Panel1" runat="server" Height="589px" HorizontalAlign="Center" 
        BackImageUrl="~/Images/login backimage.jpg">
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server" BackColor="#FF66FF" Height="208px" 
            HorizontalAlign="Center" style="margin-left: 349px" Width="248px">
            <br />
            <asp:Image ID="Image1" runat="server" Height="116px" Width="170px" 
                ImageUrl="~/Images/alogin.png" />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Text="Admin Login" Width="130px" 
                PostBackUrl="~/alogin.aspx" />
            <asp:Panel ID="Panel3" runat="server" BackColor="#FF66FF" Height="220px" 
                HorizontalAlign="Center" style="margin-left: 505px" Width="242px">
                <br />
                <asp:Image ID="Image2" runat="server" Height="112px" Width="170px" 
                    ImageUrl="~/Images/ulogin.jpg" />
                <br />
                <br />
                <asp:Button ID="Button6" runat="server" PostBackUrl="~/userlogin.aspx" 
                    Text="User Login" Width="130px" />
                <br />
            </asp:Panel>
        </asp:Panel>
        <br />
        <br />
    <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br /><br />
        <br />
        </asp:Panel>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>


