<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="aforgotnchangewd.aspx.cs" Inherits="aforgotnchangewd" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <p>&nbsp;<asp:Panel ID="Panel3" runat="server" 
            BackImageUrl="~/Images/login backimage.jpg" Height="983px" 
            HorizontalAlign="Center">
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel4" runat="server" BackColor="#FF66FF" Height="294px" 
                HorizontalAlign="Center" style="margin-left: 505px" Width="411px">
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Enter User Name"></asp:Label>
                <asp:TextBox ID="userbox" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
                <br />
                <br /><asp:Label ID="errormsg" runat="server" ForeColor="Red" 
                    Text="Invalid User Name" Visible="False"></asp:Label>
                <br />
                <br />
            </asp:Panel>
        </asp:Panel>
        </p>
    <p>
        &nbsp;<asp:Panel ID="Panel5" runat="server" 
            BackImageUrl="~/Images/login backimage.jpg" Height ="843px" 
            HorizontalAlign="Center">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel6" runat="server" BackColor="#FF66FF" Height="396px" 
                HorizontalAlign="Center" style="margin-left: 505px" Width="411px">
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Your security Question: "></asp:Label>
                <asp:Label ID="secquestlabel" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Enter Security Answer"></asp:Label>
                :
                <asp:TextBox ID="secansbox" runat="server" AutoPostBack="True" 
                    CausesValidation="True"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Get Password" />
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
                <br />
                OR<br />
                <br />
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                    Text="Change Password" Width="192px" />
            </asp:Panel>
        </asp:Panel>
    &nbsp;<asp:Panel ID="Panel7" runat="server" 
            BackImageUrl="~/Images/login backimage.jpg" Height ="843px" 
            HorizontalAlign="Center" Visible="False">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel8" runat="server" BackColor="#FF66FF" Height="396px" 
                HorizontalAlign="Center" style="margin-left: 505px" Width="411px">
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Enter Old Password"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" 
                    TextMode="Password"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Enter New Password"></asp:Label>
                &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Text="Confirm New Password"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Height="37px" onclick="Button4_Click" 
                    Text="Change Password" Width="216px" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Text="Label" ForeColor="Red" 
                    Visible="False"></asp:Label>
            </asp:Panel>
        </asp:Panel>
    </p>
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>


