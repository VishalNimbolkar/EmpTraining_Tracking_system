<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="admin_Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style=" width:100%;">
        <tr>
            <td colspan="2" width="300px" bgcolor="Maroon" class="header">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="White" Text="Reports"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="300px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="300px">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/web_img/analysis1.jpg" Width="200px" 
                    PostBackUrl="~/admin/R_Analysis.aspx" CssClass="header" 
                    onclick="ImageButton1_Click" />
            </td>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/web_img/design1.jpg" Width="200px" 
                    PostBackUrl="~/admin/R_Design.aspx" CssClass="header" />
            </td>
        </tr>
        <tr>
            <td width="300px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="300px">
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/web_img/coding1.jpg" Width="200px" 
                    PostBackUrl="~/admin/R_Coding.aspx" CssClass="header" />
            </td>
            <td>
                <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/web_img/testing1.jpg" Width="200px" 
                    PostBackUrl="~/admin/R_Testing.aspx" CssClass="header" />
            </td>
        </tr>
        <tr>
            <td width="300px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="300px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="300px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="300px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="300px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="300px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

