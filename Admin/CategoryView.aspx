<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="CategoryView.aspx.cs" Inherits="Admin_CategoryView" %>
<%@ MasterType VirtualPath="~/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: 115px; left: 0px; height: 85px; text-align:center; background-image: url('../Textures/texture5.JPG'); width: 1366px;">
        <br /><br />
        <h1 style="position: relative; font-family: 'Lucida Calligraphy'; font-size: 50px; font-weight: bolder; font-style: oblique; color: #000099; text-decoration: none; top: -56px; left: 0px; height: 82px;">View Categories</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div style="position:relative; top: 100px; left: 413px; height: 1016px; text-align: center; width: 953px; background-image: url('../Textures/texture5.JPG');">

        <br />
        <asp:GridView ID="Categories" runat="server" AutoGenerateColumns="false" DataKeyNames="category_id" BackColor="#FFFDB0" CellPadding="15" CellSpacing="2" Font-Bold="True" Font-Names="Bernard MT Condensed" Font-Size="20pt" ForeColor="#009933" Width="500px" AllowPaging="True" OnPageIndexChanging="Categories_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="category_id" HeaderText="Category Id" SortExpression="category_id" Visible="false" />
                <asp:TemplateField HeaderText="Category Name">
                    <ItemTemplate>
                        <asp:Label ID="pcategory" runat="server" Text='<%# Bind("category_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                      <asp:HyperLinkField  runat="server" DataNavigateUrlFields="category_id" DataNavigateUrlFormatString="CategoryEdit.aspx?pid={0}" Text="Edit" NavigateUrl="~/Admin/CategoryEdit.aspx" />
                      <asp:HyperLinkField  runat="server" DataNavigateUrlFields="category_id" DataNavigateUrlFormatString="CategoryDelete.aspx?pid={0}" Text="Delete" NavigateUrl="~/Admin/CategoryDelete.aspx"/>
            </Columns>
            <HeaderStyle BackColor="#FFFF99" BorderStyle="None" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" Font-Underline="True" ForeColor="#0066FF" HorizontalAlign="Center" />
        </asp:GridView>
    </div>
    <div style="position:relative; top: -919px; left: 0px; width: 413px; height: 1014px; background-image: url('../Textures/texture5.JPG');"></div>
</asp:Content>

