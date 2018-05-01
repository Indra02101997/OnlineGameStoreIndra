<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Admin_Orders" %>
<%@ MasterType VirtualPath="~/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: 116px; left: 0px; height: 146px; text-align:center; background-image: url('../Textures/texture5.JPG'); width: 1366px;">
        <br /><br />
        <h1 style="position: relative; font-family: 'Lucida Calligraphy'; font-size: 50px; font-weight: bolder; font-style: oblique; color: #000099; text-decoration: underline;">View Orders</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div style="position:relative; top: 108px; left: 0px; height: 1392px; width: 1366px; text-align: center; background-image: url('../Textures/texture5.JPG');">

        <br />
        <asp:GridView ID="GiveOrders" runat="server" AutoGenerateColumns="false" DataKeyNames="order_id" BackColor="#FFFDB0" CellPadding="15" CellSpacing="2" Font-Bold="True" Font-Names="Bernard MT Condensed" Font-Size="20pt" ForeColor="#009933" Width="1366px" AllowPaging="True" OnPageIndexChanging="GiveOrders_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="order_id" HeaderText="Order Id" SortExpression="order_id" Visible="false" />
                <asp:TemplateField HeaderText="Transaction Id">
                    <ItemTemplate>
                        <asp:Label ID="cid" runat="server" Text='<%# Bind("cart_transid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Customer Name">
                    <ItemTemplate>
                        <asp:Label ID="name" runat="server" Text='<%# Bind("order_customer_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total">
                    <ItemTemplate>
                        <asp:Label ID="total" runat="server" Text='<%# Bind("order_total") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Payment Mode">
                    <ItemTemplate>
                        <asp:Label ID="mode" runat="server" Text='<%# Bind("order_payment") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User Id">
                    <ItemTemplate>
                        <asp:Label ID="uid" runat="server" Text='<%# Bind("user_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                      <asp:HyperLinkField  runat="server" DataNavigateUrlFields="cart_transid" DataNavigateUrlFormatString="SingleOrder.aspx?tid={0}" Text="View" NavigateUrl="~/Admin/SingleOrder.aspx" />
                      <asp:HyperLinkField  runat="server" DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="ViewCustomer.aspx?pid={0}" Text="Customer Details" NavigateUrl="~/Admin/ViewCustomer.aspx" />
            </Columns>
            <HeaderStyle BackColor="#FFFF99" BorderStyle="None" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" Font-Underline="True" ForeColor="#0066FF" HorizontalAlign="Center" />
        </asp:GridView>
    </div>
</asp:Content>

