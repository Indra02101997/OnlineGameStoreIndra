<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewCustomer.aspx.cs" Inherits="Admin_ViewCustomer" %>
<%@ MasterType VirtualPath="~/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: 119px; left: 0px; height: 117px; text-align:center; background-image: url('../Textures/texture5.JPG'); width: 1366px;">
        <br /><br />
        <h1 style="position: relative; font-family: 'Lucida Calligraphy'; font-size: 50px; font-weight: bolder; font-style: oblique; color: #000099; text-decoration: underline;">Customer Details</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div style="position:relative; top: 124px; left: 0px; height: 1000px; width: 1366px; background-image: url('../Textures/texture5.JPG');">

        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FormView ID="CustomerDetails" runat="server" DataKeyNames="user_id" Font-Bold="True" Font-Names="Algerian" Font-Size="25pt" ForeColor="#620000">
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="labe1" runat="server" Text="First Name :"></asp:Label>
                &nbsp;&nbsp;<asp:Label ID="label11" runat="server" Text='<%# Bind("user_fname") %>'></asp:Label>
                <br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Last Name :"></asp:Label>
                &nbsp;&nbsp;<asp:Label ID="label22" runat="server" Text='<%# Bind("user_lname") %>'></asp:Label>
                <br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text=" Email :"></asp:Label>
                &nbsp;&nbsp;&nbsp;<asp:Label ID="label33" runat="server" Text='<%# Bind("user_mail") %>' Font-Names="arial"></asp:Label>
                <br /><br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Address :"></asp:Label>
                &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" BackColor="#ffff66" Font-Bold="true" Font-Size="12pt" ForeColor="#009933" Text='<%# Bind("user_address") %>' TextMode="MultiLine"></asp:TextBox>
                <br /><br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text=" City :"></asp:Label>
                &nbsp;&nbsp;<asp:Label ID="label1" runat="server" Text='<%# Bind("user_city") %>'></asp:Label>
                <br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Post Code :"></asp:Label>
                &nbsp;&nbsp;<asp:Label ID="label77" runat="server" Text='<%# Bind("user_pin") %>'></asp:Label>
                <br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="State : "></asp:Label>
                &nbsp;&nbsp;<asp:Label ID="label88" runat="server" Text='<%# Bind("user_state") %>'></asp:Label>
                <br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text=" Country :"></asp:Label>
                &nbsp;&nbsp;<asp:Label ID="label99" runat="server" Text='<%# Bind("user_country") %>'></asp:Label>
                <br /><br />
            </ItemTemplate>
        </asp:FormView>

        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="Blue" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="#F5AE0A" Height="43px" Text="View All Users" Width="358px" OnClick="Button1_Click" OnClientClick="Confirm()"/>

    </div>
</asp:Content>

