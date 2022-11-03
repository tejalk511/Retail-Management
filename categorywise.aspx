<%@ Page Title="" Language="C#" MasterPageFile="~/Default1.master" AutoEventWireup="true" CodeFile="categorywise.aspx.cs" Inherits="categorywise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style1
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="113px" 
        BackImageUrl="~/Images/BK.jpg">
        <br />
        <asp:Button ID="Button5" runat="server" Height="37px" onclick="Button5_Click" 
            PostBackUrl="~/Product1.aspx" Text="All" Width="194px" />
        <asp:Button ID="genderp0" runat="server" Height="37px" onclick="genderp_Click" 
            PostBackUrl="~/genderwise.aspx" Text="Gender wise" Width="194px" />
        <asp:Button ID="catp" runat="server" Height="37px" onclick="catp_Click" 
            PostBackUrl="~/categorywise.aspx" Text="Categories" Width="194px" />
        <p></p>
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="364px" Visible="False" 
        BackImageUrl="~/Images/BK.jpg">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RConnectionString %>" 
            SelectCommand="SELECT [UNo], [Itemname], [image], [description], [Price], [quantity], [category], [gender] FROM [Data] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:ControlParameter ControlID="catdd" Name="category" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel4" runat="server" BackColor="#FFCC66" Height="214px" 
            HorizontalAlign="Center" style="margin-left: 439px" Width="376px">
            <br />
            <span class="style1"><strong>&nbsp;SELECT CATEGORY<br />
            <br />
            <asp:DropDownList ID="catdd" runat="server" style="margin-left: 2px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Traditional wear</asp:ListItem>
                <asp:ListItem>Western wear</asp:ListItem>
                <asp:ListItem>Formal wear</asp:ListItem>
            </asp:DropDownList>
            </strong></span>
            <br />
            <br />
            <asp:Button ID="Button9" runat="server" Height="37px" onclick="Button9_Click" 
                Text="search" Width="145px" />
            <br />
            <asp:Label ID="caterror0" runat="server" ForeColor="Red" Text="No record found" 
                Visible="False"></asp:Label>
            <br />
        </asp:Panel>
    </asp:Panel>
    <p>
        <br />
    </p>
    <asp:Panel ID="Panel3" runat="server" Height="5403px" Visible="False" 
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


