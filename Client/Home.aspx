<%@ Page Title="" Language="C#" MasterPageFile="~/Client1.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Client_Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .img:hover {
            cursor:pointer;
            width:auto;
            height:auto;
            transform:scale(1.1);
        }
        .img1 {
            font-family:'Lucida Calligraphy';
            font-size:15px;
            background-color:yellow;
            font-weight:bold;
            color:aliceblue;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
        <div style="border: medium solid #FF3300; position:relative; top: -9px; left: -8px; height: 522px; width: 1364px; background-image: url('../Textures/textureforclient7.JPG');">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="up1" runat="server" RenderMode="Block">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="4000" OnTick="Timer1_Tick"></asp:Timer>
                <br /><br />
                <asp:Image ID="Image1" runat="server" Width="1237px" Height="447px" style="margin-left: 58px; margin-right: 0px" />
            <div style="position:relative; top: -265px; left: 8px; width: 44px; height: 38px;">
                <asp:Button ID="button1" runat="server" BackColor="Black" Font-Size="25pt" ForeColor="#FFFF99" Height="38px" Text="&lt;" Width="43px" OnClick="button1_Click" />
            </div>
                <div style="position:relative; top: -294px; left: 1311px; width: 43px; height: 40px;">
                    <asp:Button ID="button2" runat="server" BackColor="Black" Font-Size="25pt" ForeColor="#FFFF99" Height="38px" Text="&gt;" Width="44px" OnClick="button2_Click" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <div id="prod" style="border-left: medium solid #FF0000; position:relative; top: -6px; left: 440px; height: 989px; width: 922px; background-image: url('../Textures/textureforclient7.JPG'); border-right-color: #FF0000; border-right-width: medium; border-top-color: #FF0000; border-top-width: medium; border-bottom-color: #FF0000; border-bottom-width: medium;">
        <br />
        &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Forte" Font-Size="30pt" Font-Underline="True" ForeColor="#033A63" Text="Latest Products"></asp:Label>
        <br />
        <br />
        <asp:DataList ID="Datalist1" runat="server" HorizontalAlign="Left" RepeatDirection="Horizontal" RepeatColumns="3" DataKeyField="product_id"  CellPadding="0" CellSpacing="20">
            <ItemStyle BorderColor="#FA4305" BorderStyle="Solid" BorderWidth="3px" />
            <ItemTemplate>
                <asp:Label ID="label1" runat="server" Text='<%#Bind("product_id") %>' Visible="false"></asp:Label>
                <asp:HyperLink ID="hp1" NavigateUrl='<%# Eval("product_id", "~/Client/ProductDetail.aspx?pid={0}") %>' runat="server"><asp:Image ID="imagebutton1" runat="server" ImageUrl='<%#Eval("product_image") %>' Width="275px" Height="250px" CssClass="img" />  </asp:HyperLink>           
                <div style="background-color:yellow; position:relative; top:-3px">
                    <asp:Label ID="Label3" runat="server" Text="Rs " Font-Bold="True" Font-Names="Forte" Font-Size="26px" ForeColor="#000099"></asp:Label>
                <asp:Label ID="pprice" runat="server" Text='<%#Bind("product_price","{0:0.00}") %>' Font-Bold="True" Font-Names="Forte" Font-Size="26px" ForeColor="#000099" Height="30px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="viewmore" runat="server" Text="View More" NavigateUrl='<%# Eval("product_id", "~/Client/ProductDetail.aspx?pid={0}") %>' Font-Bold="True" Font-Names="Forte" Font-Size="26px" ForeColor="#004ec1" Height="35px" ></asp:HyperLink>
            </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div style="position:relative; top: -994px; left: -8px; height: 984px; width: 447px; background-image: url('../Textures/textureforclient7.JPG');" id="search">

        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Forte" Font-Size="30pt" Font-Underline="True" ForeColor="#033A63" Text="Filter Search Here :"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#66FFFF" Font-Bold="True" Font-Names="Arial" Font-Size="15pt" ForeColor="Red" Height="23px" Width="250px"></asp:TextBox>
        <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" ServiceMethod="GetCompletionList" MinimumPrefixLength="1"  
                     EnableCaching="false" CompletionSetCount="1" TargetControlID="TextBox1" FirstRowSelected="false" DelimiterCharacters="" CompletionListCssClass="img1" ></asp:AutoCompleteExtender>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#000066" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="#FFFF42" Height="32px" Text="Search" Width="125px" OnClick="Button3_Click" />
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Forte" Font-Size="30pt" Font-Underline="True" ForeColor="#033A63" Text="Choose By Category"></asp:Label>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#66FFB3" Font-Bold="True" Font-Names="Lucida Calligraphy" Font-Size="15pt" ForeColor="#000099" Height="40px" Width="265px" AppendDataBoundItems="True">
        </asp:DropDownList>
        
    &nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" BackColor="#003300" Font-Bold="True" Font-Names="Algerian" Font-Size="18pt" ForeColor="Yellow" Height="40px" OnClick="Button4_Click" Text="Filter" Width="129px" />
        
    </div>
    <div style="position:relative; top: -1127px; left: 609px; height: 71px; width: 518px;">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Algerian" Font-Size="18pt" ForeColor="Yellow" Height="45px" OnClick="Button5_Click" Text="Prev" Width="146px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Algerian" Font-Size="18pt" ForeColor="Yellow" Height="45px" OnClick="Button6_Click" Text="Next" Width="153px" />
        </div>
    <div style="border-top: medium solid #FF0000; position:relative; width:1379px; left: -13px; top: -1068px; background-color: #2A2A2A; height: 158px; border-left-color: #FF0000; border-left-width: medium; border-right-color: #FF0000; border-right-width: medium; border-bottom-color: #FF0000; border-bottom-width: medium;">

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

