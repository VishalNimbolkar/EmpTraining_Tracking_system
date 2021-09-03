<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SendMsg.aspx.cs" Inherits="admin_SendMsg" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style7
    {
        height: 23px;
        }
    .style8
    {
        width: 116px;
    }

 /*.tbox
{
border:2px solid #b3b3b3;
background:#dddddd;
width:200px;
border-radius:25px;
-moz-border-radius:25px; 
-moz-box-shadow:    1px 1px 1px #ccc;
-webkit-box-shadow: 1px 1px 1px 1px #ccc;
 box-shadow:         1px 2px 2px 2px #ccc;
}*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="login-tbl">
    <tr>
        <td class="header head-new" bgcolor="#336699" colspan="2">
            <asp:Label ID="Label3" runat="server" 
                Font-Size="X-Large" ForeColor="White" Text="Send Message" Font-Bold="True"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            Select User Name</td>
        <td >
            <asp:DropDownList ID="ddlusers" runat="server" DataSourceID="SqlDataGetDate" 
                DataTextField="username" DataValueField="username" style="width:305px;">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataGetDate" runat="server" 
                ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                SelectCommand="SELECT username FROM Registration"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style8">
            Subject</td>
        <td>
            <asp:TextBox ID="txtsub" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8">
            Message</td>
        <td>
            <asp:TextBox ID="txtmsg" runat="server" Height="93px" TextMode="MultiLine" 
                Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td >
            &nbsp;</td>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" 
                Font-Bold="True"  onclick="Button1_Click" 
                Text="Send"  Font-Size="Medium"  
               class="hvr-wobble-vertical btn-style" />
        </td>
    </tr>
    <!--<tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Courier New" 
                ForeColor="#CC3300"></asp:Label>
        </td>
    </tr>-->
    <!--<tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>-->
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            <asp:Label ID="lblmsg1" runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Size="Large" ForeColor="Black"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    </table>
</asp:Content>


