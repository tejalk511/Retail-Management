<%@ Page Title="" Language="C#" MasterPageFile="~/Default2.master" AutoEventWireup="true" CodeFile="acustomer.aspx.cs" Inherits="acustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel3" runat="server" Height="492px" 
        BackImageUrl="~/Images/BK.jpg">
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RConnectionString %>" 
            DeleteCommand="DELETE FROM [Data] WHERE [UNo] = @UNo" 
            InsertCommand="INSERT INTO [Data] ([custfname], [custlname], [gender], [mobile], [address], [email], [payment], [greviences], [UNo]) VALUES (@custfname, @custlname, @gender, @mobile, @address, @email, @payment, @greviences, @UNo)" 
            SelectCommand="SELECT [custfname], [custlname], [gender], [mobile], [address], [email], [payment], [greviences], [UNo] FROM [Data] WHERE ([custfname] IS NOT NULL) ORDER BY [custfname]" 
            
            UpdateCommand="UPDATE [Data] SET [custfname] = @custfname, [custlname] = @custlname, [gender] = @gender, [mobile] = @mobile, [address] = @address, [email] = @email, [payment] = @payment, [greviences] = @greviences WHERE [UNo] = @UNo">
            <DeleteParameters>
                <asp:Parameter Name="UNo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="custfname" Type="String" />
                <asp:Parameter Name="custlname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="payment" Type="String" />
                <asp:Parameter Name="greviences" Type="String" />
                <asp:Parameter Name="UNo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UNo" 
            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" style="margin-left: 93px" 
            Width="1305px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="UNo" SortExpression="UNo">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("UNo") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("UNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="custfname" SortExpression="custfname">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("custfname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("custfname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="custlname" SortExpression="custlname">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("custlname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("custlname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="gender" SortExpression="gender">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            SelectedValue='<%# Bind("gender") %>' Width="109px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="mobile" SortExpression="mobile">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" MaxLength="10" 
                            Text='<%# Bind("mobile") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("mobile") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="address" SortExpression="address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="email" SortExpression="email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="payment" SortExpression="payment">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                            SelectedValue='<%# Bind("payment") %>' Width="109px">
                            <asp:ListItem>Cash</asp:ListItem>
                            <asp:ListItem>Card</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("payment") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="greviences" SortExpression="greviences">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                            SelectedValue='<%# Bind("greviences") %>' Width="109px">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("greviences") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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
</asp:Content>


