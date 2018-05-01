<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ProductInfo.aspx.cs" Inherits="Admin_ProductInfo" %>
<%@ MasterType VirtualPath="~/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: 119px; left: 0px; height: 118px; text-align:center; background-image: url('../Textures/texture5.JPG'); width: 1366px;">
        <br /><br />
        <h1 style="position: relative; font-family: 'Lucida Calligraphy'; font-size: 50px; font-weight: bolder; font-style: oblique; color: #000099; text-decoration: underline;">View All Product Details</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div style="position:relative; top: 128px; left: 3px; height: 1796px; width: 1366px; background-image: url('../Textures/texture5.JPG');">
        <asp:GridView ID="Products" runat="server" AutoGenerateColumns="false" DataKeyNames="product_id" BackColor="#FFFDB0" CellPadding="15" CellSpacing="2" Font-Bold="True" Font-Names="Bernard MT Condensed" Font-Size="20pt" ForeColor="#009933" Width="1366px" AllowPaging="True" OnPageIndexChanging="Products_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="product_id" HeaderText="Product Id" SortExpression="product_id" Visible="false" />
                <asp:TemplateField HeaderText="Product Name">
                    <ItemTemplate>
                        <asp:Label ID="pname" runat="server" Text='<%# Bind("product_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Price">
                    <ItemTemplate>
                        <asp:Label ID="pprice" runat="server" Text='<%# Bind("product_price") %>' DataFormatString="{0:0.00}"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Stock">
                    <ItemTemplate>
                        <asp:Label ID="pstock" runat="server" Text='<%# Bind("product_stock") %>' DataFormatString="{0:d}"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Posting Time">
                    <ItemTemplate>
                        <asp:Label ID="ptime" runat="server" Text='<%# Bind("product_cdate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Category">
                    <ItemTemplate>
                        <asp:Label ID="pcategory" runat="server" Text='<%# Bind("category_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                      <asp:HyperLinkField  runat="server" DataNavigateUrlFields="product_id" DataNavigateUrlFormatString="ProductEdit.aspx?pid={0}" Text="Edit" NavigateUrl="~/Admin/ProductEdit.aspx" />
                      <asp:HyperLinkField  runat="server" DataNavigateUrlFields="product_id" DataNavigateUrlFormatString="ProductDelete.aspx?pid={0}" Text="Delete" NavigateUrl="~/Admin/ProductDelete.aspx"/>
            </Columns>
            <HeaderStyle BackColor="#FFFF99" BorderStyle="None" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" Font-Underline="True" ForeColor="#0066FF" HorizontalAlign="Center" />
        </asp:GridView>
        <footer style="position:relative;">

        </footer>
    </div>
</asp:Content>

