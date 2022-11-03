<%@ Page Title="" Language="C#" MasterPageFile="~/Default2.master" AutoEventWireup="true" CodeFile="unreadfb.aspx.cs" Inherits="aStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/BK.jpg" 
        Height="183px">
        <br />
        <br />
        <asp:Button ID="Button6" runat="server" Height="36px" onclick="Button6_Click" 
            PostBackUrl="~/Feedback.aspx" Text="All" Width="188px" />
        &nbsp;&nbsp;
        <asp:Button ID="Button7" runat="server" Height="36px" onclick="Button7_Click" 
            PostBackUrl="~/readfb.aspx" Text="Read Feedbacks" Width="188px" />
        &nbsp;
        <asp:Button ID="Button8" runat="server" Height="36px" onclick="Button8_Click" 
            PostBackUrl="~/unreadfb.aspx" Text="Unread Feedbacks" Width="188px" />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackImageUrl="~/Images/BK.jpg" 
        Height="679px">
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RConnectionString %>" 
            DeleteCommand="DELETE FROM [Feedback] WHERE [Email] = @Email" 
            InsertCommand="INSERT INTO [Feedback] ([Name], [Email], [Feedback], [Status]) VALUES (@Name, @Email, @Feedback, @Status)" 
            SelectCommand="SELECT * FROM [Feedback] WHERE ([Status] = @Status) ORDER BY [Name]" 
            UpdateCommand="UPDATE [Feedback] SET [Name] = @Name, [Feedback] = @Feedback, [Status] = @Status WHERE [Email] = @Email">
            <DeleteParameters>
                <asp:Parameter Name="Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Feedback" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="UNREAD" Name="Status" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Feedback" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Email" 
            DataSourceID="SqlDataSource2" style="margin-left: 298px" Width="807px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Feedback" SortExpression="Feedback">
                    <EditItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Feedback") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Feedback") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status" SortExpression="Status">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                            SelectedValue='<%# Bind("Status") %>'>
                            <asp:ListItem>UNREAD</asp:ListItem>
                            <asp:ListItem>READ</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
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
</asp:Content>


