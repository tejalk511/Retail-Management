<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="userlogin" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <p style="height: 5px; background-image: url('Images/login backimage.jpg');">
        <br />
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="589px" HorizontalAlign="Center" 
        BackImageUrl="~/Images/login backimage.jpg">
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server" BackColor="#FF66FF" Height="396px" 
            HorizontalAlign="Center" style="margin-left: 505px" Width="411px">
            <br />
            <asp:Label ID="Label5" runat="server" Text="Login"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Enter User Name"></asp:Label>
            <asp:TextBox ID="userbox" runat="server" Height="33px" Width="199px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="userbox" ErrorMessage="Please enter Username" 
                ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Enter Password"></asp:Label>
            <asp:TextBox ID="pwdbox" runat="server" Height="33px" Width="189px" 
                TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="pwdbox" ErrorMessage="Please enter Password" ForeColor="Red" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#CCCCFF" BorderColor="Black" 
                BorderStyle="Inset" onclick="Button1_Click" Text="Login" Width="92px" />
            <br />
            <asp:Label ID="Label8" runat="server" ForeColor="Red" 
                Text="Incorrect user name or Password" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" 
                NavigateUrl="~/registration.aspx">New User?</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Blue" 
                NavigateUrl="~/forgotnchangepass.aspx">Forgot Password ?</asp:HyperLink>
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
    </asp:Panel>
    <p>
    </p>
    <p>
    </p>
</asp:Content>


