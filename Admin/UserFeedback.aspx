<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="UserFeedback.aspx.cs" Inherits="Admin_UserFeedback" %>
<%@ MasterType VirtualPath="~/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: 113px; left: 0px; height: 116px; text-align:center; background-image: url('../Textures/texture5.JPG'); width: 1366px;">
        <br /><br />
        <h1 style="position: relative; font-family: 'Lucida Calligraphy'; font-size: 50px; font-weight: bolder; font-style: oblique; color: #000099; text-decoration: underline;">Customer Feedback</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div style="position:relative; top: 113px; left: 0px; height: 1510px; width: 1366px; text-align: center; background-image: url('../Textures/texture5.JPG');">
        <asp:GridView ID="Feedback" runat="server" AutoGenerateColumns="false" DataKeyNames="Id" BackColor="#FFFDB0" CellPadding="15" CellSpacing="2" Font-Bold="True" Font-Names="Bernard MT Condensed" Font-Size="18pt" ForeColor="#009933" Width="1366px" OnSelectedIndexChanged="Feedback_SelectedIndexChanged" AllowPaging="True" OnPageIndexChanging="Feedback_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="User Id" SortExpression="Id" Visible="false" />
                <asp:TemplateField HeaderText="Name" ItemStyle-Width="150pt" ItemStyle-Height="100">
                    <ItemTemplate>
                        <asp:Label ID="name" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" ItemStyle-Width="150pt" ItemStyle-Height="100">
                    <ItemTemplate>
                        <asp:Label ID="mail" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Message" ItemStyle-Height="100">
                    <ItemTemplate>
                        <asp:Label ID="state" runat="server" Text='<%# Bind("Message") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#FFFF99" BorderStyle="None" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" Font-Underline="True" ForeColor="#0066FF" HorizontalAlign="Center" />
        </asp:GridView>
    </div>
</asp:Content>

