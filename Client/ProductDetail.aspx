<%@ Page Title="" Language="C#" MasterPageFile="~/Client1.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="Client_ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("You must Login First")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }

    </script>
    <style type="text/css">
        .img {
            background-image:url('../Textures/textureforclient7.JPG');
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: -8px; left: -10px; height: 1500px; width: 1366px; background-image: url('../Textures/textureforclient7.JPG');">

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="350px" Width="300px" />

    </div>
    <div style="position:relative; top: -1431px; left: 451px; height: 716px; width: 906px;">

        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Forte" Font-Size="25pt" ForeColor="#F53F0A" Text="Quantity : "></asp:Label>

        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" BorderWidth="0px" Font-Bold="True" Font-Names="MV Boli" Font-Size="20pt" ForeColor="#009933" Height="239px" Rows="5" TextMode="MultiLine" Width="688px" CssClass="img">My Name Is Indraneel Pal. I am a student of Electrical Engineering jadavpur</asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Forte" Font-Size="25pt" ForeColor="#F53F0A" Text="Price Per Unit : "></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Forte" Font-Size="25pt" ForeColor="#F53F0A" Text="Quantity : "></asp:Label>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Forte" Font-Size="25pt" ForeColor="#F53F0A" Text="Quantity : "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" BackColor="#66CCFF" ForeColor="Black" Height="23px" Width="233px" Font-Size="15pt" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot keep this empty" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="#336600" ValidationGroup="AddToCart" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#000066" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#FFFF42" Height="47px" Text="Add To Cart" Width="297px" OnClick="Button3_Click" ValidationGroup="AddToCart" OnClientClick="Confirm()" />
        
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Forte" Font-Size="25pt" ForeColor="#F53F0A" Text="Quantity : "></asp:Label>
        
    </div>
    <div style="position:relative;width:1379px; left: -13px; top: -723px; background-color: #2A2A2A; height: 136px;">

            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Names="Forte" Font-Size="25pt" Font-Underline="True" ForeColor="White" Text="Privacy Policy"></asp:Label>
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
