<%@ Page Title="" Language="C#" MasterPageFile="~/Client2.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Client_Checkout" %>
<%@ MasterType VirtualPath="~/Client2.master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="position:relative; top: -7px; left: -9px; height: 2502px; width: 1375px; background-image: url('../Textures/textureforclient7.JPG');">
        <fieldset style="border: thin solid #003300; height: 441px;">
        <legend style="font-family: Algerian; font-size: 30px; font-weight: bold; color: #990000; text-decoration: underline;">Order Details</legend>
            <asp:GridView ID="Cart" runat="server" AutoGenerateColumns="false" DataKeyNames="cart_id" BackColor="#FFFDB0" CellPadding="5" CellSpacing="2" Font-Bold="True" Font-Names="Bernard MT Condensed" Font-Size="20pt" ForeColor="#009933" Width="1282px"  Height="100px" BorderStyle="None" BorderWidth="0px">
            <Columns>
                <asp:BoundField DataField="cart_transid" HeaderText="Transaction id" SortExpression="cart_transid" Visible="false" />
                <asp:TemplateField HeaderText="Product Name" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="proid" runat="server" Text='<%# Bind("cart_product_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="qty" runat="server" Text='<%# Bind("cart_quantity") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="textbox1" runat="server" Text='<%# Bind("cart_quantity") %>' Font-Bold="true" Font-Size="20px"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price Per Unit" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="ppu" runat="server" Text='<%# Bind("cart_product_subprice") %>'></asp:Label>
                        <asp:TextBox ID="pput" runat="server" Text='<%# Bind("cart_product_subprice") %>' Visible="false"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sub Total" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="total" runat="server" Text='<%# Bind("cart_subTotal") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#FFFF99" BorderStyle="None" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" Font-Underline="True" ForeColor="#0066FF" HorizontalAlign="Center" />
        </asp:GridView>
         <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Forte" Font-Size="25pt" ForeColor="#F53F0A" Text="Total : "></asp:Label>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Forte" Font-Size="25pt" ForeColor="#F53F0A" Text="Rs"></asp:Label>
        &nbsp;
        <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Forte" Font-Size="25pt" ForeColor="#F53F0A" Text="Rs"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#000066" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="#FFFF42" Height="44px" Text="Continue Shopping" Width="235px" OnClick="Button3_Click" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#000066" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="#FFFF42" Height="43px" Text="Edit Cart" Width="156px" OnClick="Button2_Click" />
        
        <br />
        </fieldset>
        <fieldset style="border: thin solid #003300; height: 400px;">
        <legend style="font-family: Algerian; font-size: 30px; font-weight: bold; color: #990000; text-decoration: underline;">Shipping Details</legend>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#009933" Text="Name : "></asp:Label>
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#009933" Text="Name : "></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#009933" Text="Email : "></asp:Label>
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="20px" ForeColor="#009933" Text="Name : "></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#009933" Text="Address : "></asp:Label>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#009933" Text="Name : "></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#009933" Text="City : "></asp:Label>
            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#009933" Text="Name : "></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#009933" Text="Pin : "></asp:Label>
            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#009933" Text="Name : "></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#009933" Text="State : "></asp:Label>
            <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#009933" Text="Name : "></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#009933" Text="Country : "></asp:Label>
            <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#009933" Text="Name : "></asp:Label>
        </fieldset>
        <br />
        <fieldset style="border: thin solid #003300; height: 301px;">
        <legend style="font-family: Algerian; font-size: 30px; font-weight: bold; color: #990000; text-decoration: underline;">Choose Mode Of Payment</legend>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellPadding="2" CellSpacing="20" Font-Bold="True" Font-Names="Algerian" Font-Size="25px" ForeColor="#336600" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem>Cash On Delivery</asp:ListItem>
                <asp:ListItem>Credit Card</asp:ListItem>
                <asp:ListItem>Debit Card</asp:ListItem>
            </asp:RadioButtonList>
         </fieldset>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" BackColor="#000066" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="#FFFF42" Height="44px" Text="Confirm Payment" Width="235px" OnClick="Button4_Click" />
    </div>
    <div style="position:relative;width:1379px; left: -13px; top: -5px; background-color: #2A2A2A; height: 164px;">

            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label22" runat="server" Font-Names="Forte" Font-Size="25pt" Font-Underline="True" ForeColor="White" Text="Privacy Policy"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label55" runat="server" Font-Names="Forte" Font-Size="25pt" Font-Underline="True" ForeColor="White" Text="Terms And Conditions"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label66" runat="server" Font-Names="Forte" Font-Size="25pt" Font-Underline="True" ForeColor="White" Text="Help"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label77" runat="server" Font-Names="CommercialScript BT" Font-Size="25pt" Font-Underline="True" ForeColor="White" Text="CopyRight Reserved"></asp:Label>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label88" runat="server" Font-Bold="True" Font-Names="Lucida Calligraphy" Font-Size="25pt" Font-Underline="False" ForeColor="White" Text="Designed and Developed By Indraneel Pal and Monojit Biswas"></asp:Label>

        </div>
</asp:Content>

