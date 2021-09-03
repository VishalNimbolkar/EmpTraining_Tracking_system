<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="CompletedTask.aspx.cs" Inherits="admin_CompletedTask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="header" bgcolor="Maroon">
                <asp:Label ID="Label3" runat="server" 
                Font-Size="X-Large" ForeColor="White" Text="Completed Task"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
&nbsp;
                &nbsp;
                </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="taskid" HeaderText="taskid" 
                            SortExpression="taskid" />
                        <asp:BoundField DataField="task" HeaderText="task" SortExpression="task" />
                        <asp:BoundField DataField="date1" HeaderText="date1" SortExpression="date1" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                    SelectCommand="SELECT distinct [taskid], [task], [date1] FROM [Task]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

