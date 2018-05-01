<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ProductEdit.aspx.cs" Inherits="Admin_ProductEdit" %>
<%@ MasterType VirtualPath="~/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .input-xlarge {}
    </style>
    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Congrats You have Updated the game details!!!")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: 110px; left: 0px; height: 126px; text-align:left;">
    <div style="position:relative; top: -6px; left: 0px; height: 137px; text-align:center; background-image: url('../Textures/texture5.JPG'); width: 1366px;">
        <br /><br />
        <h1 style="position: relative; font-family: 'Lucida Calligraphy'; font-size: 50px; font-weight: bolder; font-style: oblique; color: #000099; text-decoration: underline;">Update Product Details</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    </div>
    <div style="position:relative; top: 114px; left: 0px; height: 700px; width: 1366px; background-image: url('../Textures/texture5.JPG');">

        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" Font-Underline="True" ForeColor="#820000" Text="Product Name :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFCC" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="#FF3300" Width="469px"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Required Field" Font-Bold="True" Font-Names="Algerian" Font-Size="18pt" ForeColor="#009900" ValidationGroup="Update"></asp:RequiredFieldValidator>
&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Only Alpha Numeric name" Font-Bold="True" Font-Names="Algerian" Font-Size="12pt" ForeColor="#FFFFCC" ValidationExpression="^[a-zA-Z0-9\-\s]+$" ValidationGroup="Upload"></asp:RegularExpressionValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" Font-Underline="True" ForeColor="#820000" Text="Product  Price  :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCFFCC" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="#FF3300" Width="469px"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Required Field" Font-Bold="True" Font-Names="Algerian" Font-Size="18pt" ForeColor="#009900" ValidationGroup="Update"></asp:RequiredFieldValidator>
        &nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Only Money" Font-Bold="True" Font-Names="Algerian" Font-Size="12pt" ForeColor="#FFFFCC" ValidationExpression="^([1-9]\d{0,2}(\,\d{3})*|([1-9]\d*))(\.\d{2})?$" ValidationGroup="Upload"></asp:RegularExpressionValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" Font-Underline="True" ForeColor="#820000" Text="Quantity :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCFFCC" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="#FF3300" Width="469px"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Required Field" Font-Bold="True" Font-Names="Algerian" Font-Size="18pt" ForeColor="#009900" ValidationGroup="Update"></asp:RequiredFieldValidator>
        &nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" Font-Underline="True" ForeColor="#820000" Text="Product Image :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#99FFCC" Font-Bold="True" Font-Size="15pt" Width="462px" />
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="Required Field" Font-Bold="True" Font-Names="Algerian" Font-Size="18pt" ForeColor="#009900" ValidationGroup="Update"></asp:RequiredFieldValidator>
        &nbsp;
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="CustomValidator" Font-Bold="True" Font-Names="Algerian" Font-Size="12pt" ForeColor="#FFFFCC" ValidationGroup="Upload"></asp:CustomValidator>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" Font-Underline="True" ForeColor="#820000" Text=" Category :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCFFCC" Font-Bold="True" Font-Size="12pt" ForeColor="#FF3300" Height="24px" Width="459px" AutoPostBack="True">
        </asp:DropDownList>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="Required Field" Font-Bold="True" Font-Names="Algerian" Font-Size="18pt" ForeColor="#009900" ValidationGroup="Update"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" Font-Underline="True" ForeColor="#820000" Text="Description :"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Textbox4" runat="server" BackColor="#99FFCC" Font-Bold="True" Font-Names="Arial" Font-Size="10pt" ForeColor="#FF9248" Rows="8" TextMode="MultiLine" Width="458px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" Font-Bold="True" Font-Names="Franklin Gothic Medium" Font-Size="20pt" ForeColor="#6AAFFB" Text="Update Details" OnClick="Button1_Click" OnClientClick="Confirm()" ValidationGroup="Upload" />

    </div>
</asp:Content>

