<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="SingleOrder.aspx.cs" Inherits="Admin_SingleOrder" %>
<%@ MasterType VirtualPath="~/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: 119px; left: 0px; height: 117px; text-align:center; background-image: url('../Textures/texture5.JPG'); width: 1366px;">
        <br /><br />
        <h1 style="position: relative; font-family: 'Lucida Calligraphy'; font-size: 50px; font-weight: bolder; font-style: oblique; color: #000099; text-decoration: underline;">View Order Details</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div style="position:relative; top: 124px; left: 0px; height: 2000px; width: 1366px; text-align: center; background-image: url('../Textures/texture5.JPG');">

        <br />
        <asp:GridView ID="Cart" runat="server" AutoGenerateColumns="false" DataKeyNames="cart_id" BackColor="#FFFDB0" CellPadding="15" CellSpacing="2" Font-Bold="True" Font-Names="Bernard MT Condensed" Font-Size="20pt" ForeColor="#009933" Width="1366px" AllowPaging="True" OnPageIndexChanging="Cart_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="cart_id" HeaderText="Cart Id" SortExpression="cart_id" Visible="false" />
                <asp:TemplateField HeaderText="Product Name">
                    <ItemTemplate>
                        <asp:Label ID="pname" runat="server" Text='<%# Bind("cart_product_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:Label ID="qty" runat="server" Text='<%# Bind("cart_quantity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price Per Unit">
                    <ItemTemplate>
                        <asp:Label ID="total" runat="server" Text='<%# Bind("cart_product_subprice") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total Price">
                    <ItemTemplate>
                        <asp:Label ID="price" runat="server" Text='<%# Bind("cart_subTotal") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Buying Date">
                    <ItemTemplate>
                        <asp:Label ID="bid" runat="server" Text='<%# Bind("cart_cdate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#FFFF99" BorderStyle="None" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" Font-Underline="True" ForeColor="#0066FF" HorizontalAlign="Center" />
        </asp:GridView>
    </div>
</asp:Content>

