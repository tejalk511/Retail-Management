<%@ Page Title="" Language="C#" MasterPageFile="~/Default2.master" AutoEventWireup="true" CodeFile="asellproduct.aspx.cs" Inherits="asoldproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {}
        .style2
        {
        }
        .style3
        {
            font-family: "Times New Roman";
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel4" runat="server" Height="145px" 
        BackImageUrl="~/Images/BK.jpg">
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button10" runat="server" Height="45px" onclick="Button10_Click" 
        PostBackUrl="~/asales.aspx" Text="In stock" Width="178px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button15" runat="server" Height="45px" onclick="Button11_Click" 
        Text="Sell product" Width="178px" PostBackUrl="~/asellproduct.aspx" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button12" runat="server" Height="45px" Text="Report" 
        Width="178px" onclick="Button12_Click" PostBackUrl="~/areport.aspx" />
</asp:Panel>
    <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/Images/BK.jpg" 
        Height="827px" ForeColor="Red" BorderColor="#990033" BorderStyle="Double">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" 
            runat="server" ConnectionString="<%$ ConnectionStrings:RConnectionString %>" 
            DeleteCommand="DELETE FROM [Data] WHERE [UNo] = @UNo" 
            InsertCommand="INSERT INTO [Data] ([UNo], [Itemname], [image], [description], [Price], [quantity], [category], [custfname], [custlname], [gender], [mobile], [address], [email], [payment], [greviences]) VALUES (@UNo, @Itemname, @image, @description, @Price, @quantity, @category, @custfname, @custlname, @gender, @mobile, @address, @email, @payment, @greviences)" 
            SelectCommand="SELECT [UNo], [Itemname], [image], [description], [Price], [quantity], [category], [custfname], [custlname], [gender], [mobile], [address], [email], [payment], [greviences] FROM [Data] ORDER BY [Itemname]" 
            UpdateCommand="UPDATE [Data] SET [Itemname] = @Itemname, [image] = @image, [description] = @description, [Price] = @Price, [quantity] = @quantity, [category] = @category, [custfname] = @custfname, [custlname] = @custlname, [gender] = @gender, [mobile] = @mobile, [address] = @address, [email] = @email, [payment] = @payment, [greviences] = @greviences WHERE [UNo] = @UNo">
            <DeleteParameters>
                <asp:Parameter Name="UNo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UNo" Type="String" />
                <asp:Parameter Name="Itemname" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="quantity" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="custfname" Type="String" />
                <asp:Parameter Name="custlname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="payment" Type="String" />
                <asp:Parameter Name="greviences" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Itemname" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="quantity" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="custfname" Type="String" />
                <asp:Parameter Name="custlname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="payment" Type="String" />
                <asp:Parameter Name="greviences" Type="String" />
                <asp:Parameter Name="UNo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        &nbsp;<asp:Panel ID="Panel5" runat="server" BorderColor="#660066" 
            BorderStyle="Solid" ForeColor="Black" Height="632px" style="margin-left: 320px" 
            Width="890px" BackImageUrl="~/Images/BK.jpg">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <strong>&nbsp;<span 
                class="style1">PRODUCT DETAILS<br />
            <br />
            &nbsp;&nbsp; </span>
            <asp:Label ID="Label1" runat="server" Text="ITEM NAME : "></asp:Label>
            &nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="Itemname" 
                DataValueField="Itemname" Width="163px" AppendDataBoundItems="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="PRICE:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" 
                runat="server" AutoPostBack="True" 
                ClientIDMode="AutoID" ontextchanged="TextBox3_TextChanged" ReadOnly="True"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="QUANTITY : "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" 
                CausesValidation="True" ClientIDMode="AutoID" 
                ontextchanged="TextBox2_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="IMAGE :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="DISCOUNT : "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" 
                CausesValidation="True" ClientIDMode="AutoID" 
                ontextchanged="TextBox3_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" ClientIDMode="Static" Height="205px" 
                ImageAlign="Middle" style="margin-left: 104px" Width="201px" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="DESCRIPTION :"></asp:Label>
            &nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Image description"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FINAL PRICE : &nbsp;<asp:TextBox 
                ID="TextBox4" runat="server" 
                ontextchanged="TextBox4_TextChanged" ReadOnly="True"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;<br />&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                ID="Button16" runat="server" onclick="Button16_Click" style="margin-left: 0px" 
                Text="CONFIRM" Width="144px" />
            <br />
            &nbsp;</strong></asp:Panel>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server" BackImageUrl="~/Images/BK.jpg" 
        Height="827px" ForeColor="Red" BorderColor="#990033" BorderStyle="Double" 
        Visible="False">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource2" 
            runat="server" ConnectionString="<%$ ConnectionStrings:RConnectionString %>" 
            DeleteCommand="DELETE FROM [Data] WHERE [UNo] = @UNo" 
            InsertCommand="INSERT INTO [Data] ([UNo], [Itemname], [image], [description], [Price], [quantity], [category], [custfname], [custlname], [gender], [mobile], [address], [email], [payment], [greviences]) VALUES (@UNo, @Itemname, @image, @description, @Price, @quantity, @category, @custfname, @custlname, @gender, @mobile, @address, @email, @payment, @greviences)" 
            SelectCommand="SELECT [UNo], [Itemname], [image], [description], [Price], [quantity], [category], [custfname], [custlname], [gender], [mobile], [address], [email], [payment], [greviences] FROM [Data] ORDER BY [Itemname]" 
            
            UpdateCommand="UPDATE [Data] SET [Itemname] = @Itemname, [image] = @image, [description] = @description, [Price] = @Price, [quantity] = @quantity, [category] = @category, [custfname] = @custfname, [custlname] = @custlname, [gender] = @gender, [mobile] = @mobile, [address] = @address, [email] = @email, [payment] = @payment, [greviences] = @greviences WHERE [UNo] = @UNo">
            <DeleteParameters>
                <asp:Parameter Name="UNo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UNo" Type="String" />
                <asp:Parameter Name="Itemname" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="quantity" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="custfname" Type="String" />
                <asp:Parameter Name="custlname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="payment" Type="String" />
                <asp:Parameter Name="greviences" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Itemname" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="quantity" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="custfname" Type="String" />
                <asp:Parameter Name="custlname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="payment" Type="String" />
                <asp:Parameter Name="greviences" Type="String" />
                <asp:Parameter Name="UNo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        &nbsp;<asp:Panel ID="Panel7" runat="server" BorderColor="#660066" 
            BorderStyle="Solid" ForeColor="Black" Height="592px" style="margin-left: 320px" 
            Width="890px">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <strong>
            <span class="style2">CUSTOMER</span><span class="style1"><span class="style2"> 
            DETAILS<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label18" runat="server" Text="ITEM NAME : "></asp:Label>
            &nbsp;</span><asp:TextBox ID="TextBox13" runat="server" AutoPostBack="True" 
                ClientIDMode="AutoID" ReadOnly="True"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp; </span>
            <asp:Label ID="Label8" runat="server" Text="CUSTOMER FIRST NAME : "></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server" AutoPostBack="True" 
                ClientIDMode="AutoID" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="GENDER :"></asp:Label>
            &nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                Width="129px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>MALE</asp:ListItem>
                <asp:ListItem>FEMALE</asp:ListItem>
            </asp:DropDownList>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;<asp:Label ID="Label15" 
                runat="server" Text="CUSTOMER LAST NAME : "></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox11" runat="server" AutoPostBack="True" 
                ClientIDMode="AutoID" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" Text="MOBILE :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox12" runat="server" AutoPostBack="True" 
                ClientIDMode="AutoID" ontextchanged="TextBox3_TextChanged" MaxLength="10"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Text="EMAIL"></asp:Label>
            &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server" 
                AutoPostBack="True"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label13" runat="server" Text="PAYMENT :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                Width="129px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>CARD</asp:ListItem>
                <asp:ListItem>CASH</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;<br />
            <br />
            <br />&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                ID="Button17" runat="server" style="margin-left: 0px" Text="SELL" 
                Width="144px" onclick="Button17_Click" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label17" runat="server" ForeColor="Fuchsia" 
                Text="The details were not saved successfully, please try again." 
                Visible="False"></asp:Label>
        </asp:Panel>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <asp:Panel ID="Panel8" runat="server" BackImageUrl="~/Images/BK.jpg" 
        Height="827px" ForeColor="Red" BorderColor="#990033" BorderStyle="Double" 
        Visible="False">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource3" 
            runat="server" ConnectionString="<%$ ConnectionStrings:RConnectionString %>" 
            DeleteCommand="DELETE FROM [Data] WHERE [UNo] = @UNo" 
            InsertCommand="INSERT INTO [Data] ([UNo], [Itemname], [image], [description], [Price], [quantity], [category], [custfname], [custlname], [gender], [mobile], [address], [email], [payment], [greviences]) VALUES (@UNo, @Itemname, @image, @description, @Price, @quantity, @category, @custfname, @custlname, @gender, @mobile, @address, @email, @payment, @greviences)" 
            SelectCommand="SELECT [UNo], [Itemname], [image], [description], [Price], [quantity], [category], [custfname], [custlname], [gender], [mobile], [address], [email], [payment], [greviences] FROM [Data] ORDER BY [Itemname]" 
            
            
            UpdateCommand="UPDATE [Data] SET [Itemname] = @Itemname, [image] = @image, [description] = @description, [Price] = @Price, [quantity] = @quantity, [category] = @category, [custfname] = @custfname, [custlname] = @custlname, [gender] = @gender, [mobile] = @mobile, [address] = @address, [email] = @email, [payment] = @payment, [greviences] = @greviences WHERE [UNo] = @UNo">
            <DeleteParameters>
                <asp:Parameter Name="UNo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UNo" Type="String" />
                <asp:Parameter Name="Itemname" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="quantity" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="custfname" Type="String" />
                <asp:Parameter Name="custlname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="payment" Type="String" />
                <asp:Parameter Name="greviences" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Itemname" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="quantity" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="custfname" Type="String" />
                <asp:Parameter Name="custlname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="payment" Type="String" />
                <asp:Parameter Name="greviences" Type="String" />
                <asp:Parameter Name="UNo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        &nbsp;<asp:Panel ID="Panel9" runat="server" BorderColor="#660066" 
            BorderStyle="Solid" ForeColor="Black" Height="592px" style="margin-left: 320px" 
            Width="890px">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="style3">&nbsp;Congratulations you&#39;re product is sold.</span><br class="style3" />
            <span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Details of the product have 
            been saved successfully</span></asp:Panel>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    </p>
    <p>
    </p>
</asp:Content>


