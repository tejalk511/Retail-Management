<%@ Page Title="" Language="C#" MasterPageFile="~/Default2.master" AutoEventWireup="true" CodeFile="acategorywise.aspx.cs" Inherits="acategorywise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/BK.jpg" 
        Height="130px" style="margin-top: 0px">
        &nbsp;&nbsp;<br />
        <asp:Button ID="Button5" runat="server" Height="37px" onclick="Button5_Click" 
            Text="All" Width="194px" PostBackUrl="~/aproduct.aspx" />
        <asp:Button ID="Button7" runat="server" Height="37px" onclick="Button5_Click" 
            Text="Add new " Width="194px" PostBackUrl="~/newprod.aspx" />
        <asp:Button ID="genderp0" runat="server" Height="37px" onclick="genderp_Click" 
            Text="Gender wise" Width="194px" PostBackUrl="~/agenderwise.aspx" />
        <asp:Button ID="catp" runat="server" Height="37px" onclick="catp_Click" 
            Text="Categories" Width="194px" PostBackUrl="~/acategorywise.aspx" />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="284px" 
        BackImageUrl="~/Images/BK.jpg">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Panel ID="Panel4" runat="server" BackColor="#FFCC66" Height="198px" 
            HorizontalAlign="Center" style="margin-left: 475px" Width="248px">
            <br />
            <span class="style1"><strong>&nbsp;SELECT CATEGORY<br />
            <br />
            </strong></span>
            <asp:DropDownList ID="catdd" runat="server" style="margin-left: 2px">
                <asp:ListItem>Traditional wear</asp:ListItem>
                <asp:ListItem>Western wear</asp:ListItem>
                <asp:ListItem>Formal wear</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button9" runat="server" Height="37px" onclick="Button9_Click" 
                Text="search" Width="145px" />
            <br />
            <asp:Label ID="caterror0" runat="server" ForeColor="Red" Text="No record found" 
                Visible="False"></asp:Label>
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RConnectionString %>" 
            SelectCommand="SELECT [UNo], [Itemname], [image], [description], [Price], [quantity], [category], [gender] FROM [Data] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:ControlParameter ControlID="catdd" Name="category" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Height="4847px" Visible="False" 
        BackImageUrl="~/Images/BK.jpg">
        <br />
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UNo" 
            DataSourceID="SqlDataSource4" style="margin-left: 109px" Width="1199px">
            <Columns>
                <asp:BoundField DataField="UNo" HeaderText="UNo" ReadOnly="True" 
                    SortExpression="UNo" />
                <asp:BoundField DataField="Itemname" HeaderText="Itemname" 
                    SortExpression="Itemname" />
                <asp:TemplateField HeaderText="image" SortExpression="image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="215px" Width="175px" 
                            ImageUrl='<%# Eval("image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="description" HeaderText="description" 
                    SortExpression="description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" 
                    SortExpression="quantity" />
                <asp:BoundField DataField="category" HeaderText="category" 
                    SortExpression="category" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </asp:Panel>
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
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>


