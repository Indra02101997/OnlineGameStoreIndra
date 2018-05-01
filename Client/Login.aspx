<%@ Page Title="" Language="C#" MasterPageFile="~/Client1.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Client_Login" %>
<%@ MasterType VirtualPath="~/Client1.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: -11px; left: -8px; height: 815px; width: 1369px; text-align: center; background-image: url('../Textures/textureforclient2.JPG');">

    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Britannic Bold" Font-Size="15pt" ForeColor="Red" Text="Already Registered? Login Here!"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#005500" Text="Email Id : "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" BackColor="#3EB1FF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Yellow" Height="26px" Width="458px"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email Id Required " Font-Bold="True" Font-Size="20pt" ForeColor="#FF6600" ValidationGroup="Login"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#005500" Text="Password : "></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" BackColor="#3EB1FF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Yellow" Height="26px" TextMode="Password" Width="458px"></asp:TextBox>
&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Required " Font-Bold="True" Font-Size="20pt" ForeColor="#FF6600" ValidationGroup="Login"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#000099" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="Yellow" Text="Login" OnClick="Button1_Click" />
    <br />
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Red" NavigateUrl="~/Client/Register.aspx">Click Here To Register</asp:HyperLink>
        <br />
        <br />
    <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Red" NavigateUrl="~/Client/Password.aspx">Forgot Password?</asp:HyperLink>
    <br />
    <br />
    <br />

    </div>
    <div style="position:relative;width:1379px; left: -13px; top: -25px; background-color: #2A2A2A; height: 146px;">

            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" Font-Names="Forte" Font-Size="25pt" Font-Underline="True" ForeColor="White" Text="Privacy Policy"></asp:Label>
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

