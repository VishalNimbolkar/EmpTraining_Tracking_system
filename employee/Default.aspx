<%@ Page Title="" Language="C#" MasterPageFile="~/employee/EmpMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="employee_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td bgcolor="Maroon" colspan="4">
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                    Text="Notification"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/web_img/bell.gif" 
                    Width="50px" />
            </td>
            <td>
                <asp:Label ID="lblmsgTask" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/web_img/bell.gif" 
                    Width="50px" />
            </td>
            <td>
                <asp:Label ID="lblmsgMesaage" runat="server" Font-Bold="True" 
                    ForeColor="#FF3300"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

