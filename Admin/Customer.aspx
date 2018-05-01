<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Admin_Customer" %>
<%@ MasterType VirtualPath="~/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: 116px; left: 0px; height: 120px; text-align:center; background-image: url('../Textures/texture5.JPG'); width: 1366px;">
        <br /><br />
        <h1 style="position: relative; font-family: 'Lucida Calligraphy'; font-size: 50px; font-weight: bolder; font-style: oblique; color: #000099; text-decoration: underline;">View All Customers</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div style="position:relative; top: 122px; left: 0px; height: 1500px; width: 1366px; text-align: center; background-image: url('../Textures/texture5.JPG');">
        <asp:GridView ID="Customers" runat="server" AutoGenerateColumns="false" DataKeyNames="user_id" BackColor="#FFFDB0" CellPadding="15" CellSpacing="2" Font-Bold="True" Font-Names="Bernard MT Condensed" Font-Size="18pt" ForeColor="#009933" Width="1366px" style="margin-top: 0px" AllowPaging="True" OnPageIndexChanging="Customers_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="User Id" SortExpression="user_id" Visible="false" />
                <asp:TemplateField HeaderText="First Name">
                    <ItemTemplate>
                        <asp:Label ID="fname" runat="server" Text='<%# Bind("user_fname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SurName">
                    <ItemTemplate>
                        <asp:Label ID="lname" runat="server" Text='<%# Bind("user_lname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User Email">
                    <ItemTemplate>
                        <asp:Label ID="mail" runat="server" Text='<%# Bind("user_mail") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State">
                    <ItemTemplate>
                        <asp:Label ID="state" runat="server" Text='<%# Bind("user_state") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country">
                    <ItemTemplate>
                        <asp:Label ID="country" runat="server" Text='<%# Bind("user_country") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                      <asp:HyperLinkField  runat="server" DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="ViewCustomer.aspx?pid={0}" Text="View" NavigateUrl="~/Admin/ViewCustomer.aspx" />
            </Columns>
            <HeaderStyle BackColor="#FFFF99" BorderStyle="None" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" Font-Underline="True" ForeColor="#0066FF" HorizontalAlign="Center" />
        </asp:GridView>
    </div>
</asp:Content>

