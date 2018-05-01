<%@ Page Title="" Language="C#" MasterPageFile="~/Client1.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Client_Register" %>
<%@ MasterType VirtualPath="~/Client1.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("You have been successfully Registered. Now Login with your email and passsword")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: -21px; left: -9px; height: 873px; width: 1366px; background-image: url('../Textures/textureforclient2.JPG');">

    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Forte" Font-Size="25pt" Font-Underline="True" ForeColor="#F94F31" Text="Register Here"></asp:Label>
                <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#005500" Text="First Name : "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" BackColor="#3EB1FF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Yellow" Height="26px" Width="458px"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name Required " Font-Bold="True" Font-Size="20pt" ForeColor="#FF6600" ValidationGroup="Register"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#005500" Text="Last Name : "></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" BackColor="#3EB1FF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Yellow" Height="26px" Width="458px"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last Name Required " Font-Bold="True" Font-Size="20pt" ForeColor="#FF6600" ValidationGroup="Register"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#005500" Text="Email Id : "></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" BackColor="#3EB1FF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Yellow" Height="26px" Width="458px"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email Id Required " Font-Bold="True" Font-Size="20pt" ForeColor="#FF6600" ValidationGroup="Register"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#005500" Text="Password : "></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" BackColor="#3EB1FF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Yellow" Height="26px" TextMode="Password" Width="458px"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Password Required " Font-Bold="True" Font-Size="20pt" ForeColor="#FF6600" ValidationGroup="Register"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#005500" Text="Address : "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox5" runat="server" BackColor="#3EB1FF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Yellow" Height="76px" TextMode="MultiLine" Width="452px"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Address Required " Font-Bold="True" Font-Size="20pt" ForeColor="#FF6600" ValidationGroup="Register"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#005500" Text="City : "></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" BackColor="#3EB1FF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Yellow" Height="26px" Width="458px"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="City Required " Font-Bold="True" Font-Size="20pt" ForeColor="#FF6600" ValidationGroup="Register"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#005500" Text="Pin Code : "></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server" BackColor="#3EB1FF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Yellow" Height="26px" Width="458px"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Pin Code Required " Font-Bold="True" Font-Size="20pt" ForeColor="#FF6600" ValidationGroup="Register"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#005500" Text="State : "></asp:Label>
    <asp:TextBox ID="TextBox8" runat="server" BackColor="#3EB1FF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Yellow" Height="26px" Width="458px"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="State Required " Font-Bold="True" Font-Size="20pt" ForeColor="#FF6600" ValidationGroup="Register"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#005500" Text="Country : "></asp:Label>
    <asp:TextBox ID="TextBox9" runat="server" BackColor="#3EB1FF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Yellow" Height="26px" Width="458px"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="Country Required " Font-Bold="True" Font-Size="20pt" ForeColor="#FF6600" ValidationGroup="Register"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label89" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#005500" Text="Question : "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#00CCFF" Font-Bold="True" Font-Size="15pt" Height="25pt" Width="481px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>What is your favourite book?</asp:ListItem>
            <asp:ListItem>What is your hobby?</asp:ListItem>
            <asp:ListItem>What is your favourite sport?</asp:ListItem>
            <asp:ListItem>What is your favourite sport?</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label90" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#005500" Text="Answer : "></asp:Label>
    <asp:TextBox ID="TextBox10" runat="server" BackColor="#3EB1FF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Yellow" Height="26px" Width="458px"></asp:TextBox>
&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="Country Required " Font-Bold="True" Font-Size="20pt" ForeColor="#FF6600" ValidationGroup="Register"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="#000099" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="Yellow" Text="Register" ValidationGroup="Register" OnClick="Button1_Click" OnClientClick="Confirm()" />

    </div>
    <div style="position:relative;width:1379px; left: -13px; top: -13px; background-color: #2A2A2A; height: 159px;">

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

