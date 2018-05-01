<%@ Page Title="" Language="C#" MasterPageFile="~/Client2.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Client_Account" %>
<%@ MasterType VirtualPath="~/Client2.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Details Updated Successfully")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: -5px; left: -9px; height: 1000px; width: 1380px; background-image: url('../Textures/textureforclient7.JPG'); margin-right: 13px;">

        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="Red" Text="First Name : "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#99FFCC" Font-Bold="True" Font-Size="15pt" ForeColor="Black" Height="22px" Width="357px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required" Font-Bold="True" Font-Size="20pt" ForeColor="#003300" ValidationGroup="Edit"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="Red" Text="Last Name : "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" BackColor="#99FFCC" Font-Bold="True" Font-Size="15pt" ForeColor="Black" Height="22px" Width="357px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field is required" Font-Bold="True" Font-Size="20pt" ForeColor="#003300" ValidationGroup="Edit"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="Red" Text="User Mail : "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" BackColor="#99FFCC" Font-Bold="True" Font-Size="15pt" ForeColor="Black" Height="22px" Width="357px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="This field is required" Font-Bold="True" Font-Size="20pt" ForeColor="#003300" ValidationGroup="Edit"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="Red" Text="Address : "></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" BackColor="#99FFCC" Font-Bold="True" Font-Size="15pt" ForeColor="Black" Height="57px" TextMode="MultiLine" Width="357px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="This field is required" Font-Bold="True" Font-Size="20pt" ForeColor="#003300" ValidationGroup="Edit"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="Red" Text="City : "></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" BackColor="#99FFCC" Font-Bold="True" Font-Size="15pt" ForeColor="Black" Height="22px" Width="357px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="This field is required" Font-Bold="True" Font-Size="20pt" ForeColor="#003300" ValidationGroup="Edit"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="Red" Text="Pin : "></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" BackColor="#99FFCC" Font-Bold="True" Font-Size="15pt" ForeColor="Black" Height="22px" Width="357px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="This field is required" Font-Bold="True" Font-Size="20pt" ForeColor="#003300" ValidationGroup="Edit"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="Red" Text="State : "></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" BackColor="#99FFCC" Font-Bold="True" Font-Size="15pt" ForeColor="Black" Height="22px" Width="357px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="This field is required" Font-Bold="True" Font-Size="20pt" ForeColor="#003300" ValidationGroup="Edit"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="Red" Text="Country : "></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" BackColor="#99FFCC" Font-Bold="True" Font-Size="15pt" ForeColor="Black" Height="22px" Width="357px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="This field is required" Font-Bold="True" Font-Size="20pt" ForeColor="#003300" ValidationGroup="Edit"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#000066" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="#FFFF42" Height="44px" Text="Edit" Width="147px" OnClick="Button1_Click" ValidationGroup="Edit" OnClientClick="Confirm()" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#000066" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="#FFFF42" Height="44px" Text="Continue Shopping" Width="235px" OnClick="Button2_Click" />
        
        &nbsp;&nbsp;

    </div>
    <div style="position:relative;width:1379px; left: -13px; top: -3px; background-color: #2A2A2A; height: 161px;">

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

