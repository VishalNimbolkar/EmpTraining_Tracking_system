<%@ Page Title="" Language="C#" MasterPageFile="~/employee/EmpMasterPage.master" AutoEventWireup="true" CodeFile="ShowTask.aspx.cs" Inherits="employee_ShowTask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td class="header" bgcolor="Maroon" colspan="2">
            <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                                            Text="Show Task" Width="200px"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
          <asp:Panel ID="Panel1" runat="server" Width="100%" Height="350px" ScrollBars="Vertical">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataGetList" ForeColor="#333333" 
                GridLines="None" Width="700px" 
                onselectedindexchanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="taskid" HeaderText="taskid" 
                        SortExpression="taskid" />
                    <asp:BoundField DataField="task" HeaderText="task" SortExpression="task" />
                    <asp:BoundField DataField="date1" HeaderText="date1" SortExpression="date1" />
                    <asp:BoundField DataField="user_status" HeaderText="user_status" 
                        SortExpression="user_status" />
                    <asp:BoundField DataField="reason" HeaderText="reason" 
                        SortExpression="reason" />
                         <asp:BoundField DataField="last_date" HeaderText="Last Date" 
                        SortExpression="last_date" />
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
            <asp:SqlDataSource ID="SqlDataGetList" runat="server" 
                ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                SelectCommand="SELECT [taskid], [task], [date1], [user_status], [reason],[last_date] FROM [Task] WHERE ([username] = @username) AND user_status in('Rejected','Pending')">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="userid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
           </asp:Panel>
        </td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
</table>
</asp:Content>

