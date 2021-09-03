<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="R_Design.aspx.cs" Inherits="admin_R_Design" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border: thin solid #FF9900; width: 100%;">
        <tr>
            <td bgcolor="Maroon" class="header">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="White" Text="Reports on Designing" Width="400px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                    <series>
                        <asp:Series Name="Series1" XValueMember="username" YValueMembers="total" 
                        YValuesPerPoint="2">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                SelectCommand="SELECT Registration.empname as username, SUM(designing) AS total FROM Marks inner join Registration on Marks.username=Registration.username GROUP BY Marks.username,Registration.empname">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

