<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Constant" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="body">
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        `<asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="1500" ontick="Timer1_Tick1">
            </asp:Timer>
            <br />
            <asp:Image ID="Image1" runat="server" Height="700px" Width="1500px" />
<br />
<br />
        </ContentTemplate>
    </asp:UpdatePanel>
    </asp:Content>


