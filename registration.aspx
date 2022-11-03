<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="1441px">
        <asp:Panel ID="Panel3" runat="server" 
            BackImageUrl="~/Images/login backimage.jpg" Height="2000px" 
            HorizontalAlign="Center">
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel4" runat="server" BackColor="#FF66FF" Height="1295px" 
                HorizontalAlign="Center" style="margin-left: 505px" Width="411px">
                <br />
                <asp:Label ID="reg" runat="server" BorderColor="#6600CC" BorderStyle="Solid" 
                    BorderWidth="2px" ForeColor="#000099" style="height: 26px" Text="REGISTRATION" 
                    Width="401px"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="NAME"></asp:Label>
                <br />
                <asp:TextBox ID="namebox" runat="server" EnableTheming="False"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="namebox" ErrorMessage="First name is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="userbox" runat="server" Text="USER NAME"></asp:Label>
                <br />
                <asp:TextBox ID="Unamebox" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="Unamebox" ErrorMessage="User name is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label22" runat="server" ForeColor="Red" 
                    Text="User already exist" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label14" runat="server" Text="PASSWORD"></asp:Label>
                <br />
                <asp:TextBox ID="pwdbox" runat="server" CausesValidation="True" MaxLength="10" 
                    TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="pwdbox" ErrorMessage="Password is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label20" runat="server" Text="CONFIRM PASSWORD"></asp:Label>
                <br />
                <asp:TextBox ID="cpwdbox" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="cpwdbox" ErrorMessage="Please confirm password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="pwdbox" ControlToValidate="cpwdbox" 
                    ErrorMessage="Password mismatched" ForeColor="Red"></asp:CompareValidator>
                <br />
                <asp:Label ID="Label15" runat="server" Text="EMAIL ID"></asp:Label>
                <br />
                <asp:TextBox ID="emailbox" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="emailbox" ErrorMessage="Email id is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="emailbox" ErrorMessage="Email id not valid" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label17" runat="server" Text="MOBILE NUMBER"></asp:Label>
                <br />
                <asp:Label ID="Label21" runat="server" Text="+91"></asp:Label>
                <asp:TextBox ID="mobbox" runat="server" MaxLength="10"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="mobbox" ErrorMessage="Mobile No. is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label18" runat="server" Text="DATE OF BIRTH"></asp:Label>
                <br />
                <asp:Label ID="Label19" runat="server" Text="[MM-DD-YYYY]"></asp:Label>
                <br />
                <asp:TextBox ID="dobbox" runat="server" AutoCompleteType="Enabled"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="dobbox" ErrorMessage="D.O.B. is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ErrorMessage="Invalid D.O.B." ForeColor="Red" MaximumValue="12-12-2019" 
                    ControlToValidate="dobbox"></asp:RangeValidator>
                <br />
                <asp:Label ID="Label3" runat="server" Text="GENDER"></asp:Label>
                <br />
                <asp:RadioButtonList ID="genderbox" runat="server" style="margin-left: 82px" 
                    Width="226px">
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="genderbox" ErrorMessage="gender is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="SELECT CITY"></asp:Label>
                <br />
                <asp:DropDownList ID="citybox" runat="server">
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Pune</asp:ListItem>
                    <asp:ListItem>Surat</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="citybox" ErrorMessage="City is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" Text="SECURITY QUESTION"></asp:Label>
                <br />
                <asp:DropDownList ID="secqbox" runat="server" Height="41px">
                    <asp:ListItem>What is your pet&#39;s name?</asp:ListItem>
                    <asp:ListItem>What is you fav colour?</asp:ListItem>
                    <asp:ListItem>Your first car no.?</asp:ListItem>
                    <asp:ListItem>Your first place?</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="secqbox" ErrorMessage="Security question  is empty" 
                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label13" runat="server" Text="SECURITY ANSWER"></asp:Label>
                <br />
                <asp:TextBox ID="secabox" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="secabox" ErrorMessage="Security answer  is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="submit" runat="server" onclick="Button1_Click" Text="SUBMIT" />
                <asp:Button ID="reset" runat="server" Text="RESET" />
            </asp:Panel>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="846px" Visible="False">
        <asp:Panel ID="Panel5" runat="server" 
            BackImageUrl="~/Images/login backimage.jpg" Height="814px" 
            HorizontalAlign="Center">
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
                <br />
                <span style="font-family: 'Bahnschrift Condensed'; font-size: xx-large"><em>YOU 
                HAVE BEEN REGISTERED SUCCESSFULLY!</em></span></asp:Panel>
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
    </asp:Panel>
    <p>
        <br />
    </p>
</asp:Content>


