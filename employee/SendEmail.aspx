<%@ Page Title="" Language="C#" MasterPageFile="~/employee/EmpMasterPage.master" AutoEventWireup="true" CodeFile="SendEmail.aspx.cs" Inherits="employee_SendEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


    .style7
    {
        height: 23px;
        width: 116px;
    }
    .style8
    {
        width: 116px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border: thin solid #000080;"  class="login-tbl">
        <tr>
            <td class="style7">
            </td>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="#003399" 
                    Text="Messaging"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                To</td>
            <td>
                <asp:TextBox ID="txtEmailTo" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                From</td>
            <td>
                <asp:TextBox ID="txtEmailFrom" runat="server" Width="300px"></asp:TextBox>
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
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="Maroon" CssClass="tbox" 
                    Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" 
                    onclick="Button1_Click" Text="Send" Width="90px" />
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
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Courier New" 
                    ForeColor="#CC3300"></asp:Label>
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
    </table>
</asp:Content>

