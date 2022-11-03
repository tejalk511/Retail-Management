<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:Panel ID="Panel3" runat="server" BackColor="#66FFFF" BorderColor="#66FFCC" 
    Height="789px" HorizontalAlign="Center" style="margin-top: 0px" Backgroundsize="100%" 
        ForeColor="Black">
    <br />
        <strong>Leave a Comment<br />
        <br />
        NAME:<br />
        <asp:TextBox ID="vname" runat="server" Height="29px" 
            ontextchanged="TextBox5_TextChanged" Width="342px"></asp:TextBox>
        <br />
        <br />
        Email id :<br />
        <asp:TextBox ID="vmail" runat="server" Height="29px" 
            ontextchanged="TextBox5_TextChanged" Width="342px"></asp:TextBox>
        <br />
        </strong>
    <br />
        <strong>Feedback/Queries:</strong><br />
        <asp:TextBox ID="vfeedback" runat="server" Height="56px" Width="342px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Height="38px" onclick="Button4_Click" 
            Text="Submit" Width="108px" />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <strong>
        <br />
        You can also contact us by-<br />
        <br />
        Tejal Kadam<br /> </strong><a href="mailto:tejal98kadam@gmail.com"><strong>
        tejal98kadam@gmail.com</strong></a><strong><br />
        <br />
        Priyanka Dusane
        <br />
        <a href="mailto:kamath2112@gmail.com">pkdusane@gmail.com</a></strong><br />
        <br />
        <strong>Shrishti Nayak
        <br />
        <a href="mailto:kamath2112@gmail.com">shrishtinayak24@gmail.com</a></strong><br />
        <br />
        <strong>Ruchita Bhoye<br /> <a href="mailto:kamath2112@gmail.com">
        bhoyeruchita@gmail.com</a></strong><br />
        <br />
        <strong>Anuja Deokar<br /> </strong><a href="mailto:kamath2112@gmail.com">
        <strong>anujadeokar9@gmail.com</strong></a><br />
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


