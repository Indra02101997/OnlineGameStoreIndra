<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="Admin_MyProfile" %>
<%@ MasterType VirtualPath="~/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Congrats You have Updated Your Profile!!!")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: 117px; left: 0px; height: 132px; text-align:center; background-image: url('../Textures/texture5.JPG'); width: 1366px;">
        <br /><br />
        <h1 style="position: relative; font-family: 'Lucida Calligraphy'; font-size: 50px; font-weight: bolder; font-style: oblique; color: #000099; text-decoration: underline;">Update Profile</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div style="position:relative; top: 119px; left: 0px; height: 1377px; width: 1366px; background-image: url('../Textures/texture5.JPG');">

        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" Font-Underline="True" ForeColor="#820000" Text=" Name :"></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFCC" ForeColor="#FF3300" Height="25px" Width="496px" Font-Bold="True" Font-Size="20pt"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Required Field" Font-Bold="True" Font-Names="Algerian" Font-Size="18pt" ForeColor="#009900" ValidationGroup="Profile"></asp:RequiredFieldValidator>
&nbsp;<br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" Font-Underline="True" ForeColor="#820000" Text="Email :"></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" BackColor="#CCFFCC" ForeColor="#FF3300" Height="25px" Width="496px" Font-Bold="True" Font-Size="20pt"></asp:TextBox>
        &nbsp;&nbsp;
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Required Field" Font-Bold="True" Font-Names="Algerian" Font-Size="18pt" ForeColor="#009900" ValidationGroup="Profile"></asp:RequiredFieldValidator>
&nbsp;<br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" Font-Underline="True" ForeColor="#820000" Text="Password :"></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" BackColor="#CCFFCC" ForeColor="#FF3300" Height="25px" Width="496px" Font-Bold="True" Font-Size="20pt"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Required Field" Font-Bold="True" Font-Names="Algerian" Font-Size="18pt" ForeColor="#009900" ValidationGroup="Profile"></asp:RequiredFieldValidator>
&nbsp;<br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" Font-Bold="True" Font-Names="Franklin Gothic Medium" Font-Size="20pt" ForeColor="#6AAFFB" Text="Update Details" OnClick="Button1_Click" OnClientClick="Confirm()" ValidationGroup="Profile" />

    </div>
</asp:Content>

