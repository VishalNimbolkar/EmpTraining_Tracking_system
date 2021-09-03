<%@ Page Title="" Language="C#" MasterPageFile="~/employee/EmpMasterPage.master" AutoEventWireup="true" CodeFile="CompleteTask.aspx.cs" Inherits="employee_CompleteTask" %>

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
                                            Text="Completed Task" Width="200px"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
         <asp:Panel ID="Panel1" runat="server" Width="100%" Height="350px" ScrollBars="Vertical">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataGetData" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Date" SortExpression="date1">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("date1") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("date1") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="taskid" HeaderText="taskid" 
                        SortExpression="taskid" />
                    <asp:BoundField DataField="task" HeaderText="task" SortExpression="task" />
                    <asp:BoundField DataField="analysis" HeaderText="analysis" 
                        SortExpression="analysis" />
                    <asp:BoundField DataField="designing" HeaderText="designing" 
                        SortExpression="designing" />
                    <asp:BoundField DataField="coding" HeaderText="coding" 
                        SortExpression="coding" />
                    <asp:BoundField DataField="testing" HeaderText="testing" 
                        SortExpression="testing" />
                    <asp:BoundField DataField="obtain_marks" HeaderText="obtain_marks" 
                        SortExpression="obtain_marks" />
                    <asp:BoundField DataField="total_marks" HeaderText="total_marks" 
                        SortExpression="total_marks" />
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
            <asp:SqlDataSource ID="SqlDataGetData" runat="server" 
                ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                SelectCommand="SELECT Task.date1, Task.taskid, Task.task, Marks.analysis, Marks.designing, Marks.coding, Marks.testing, Marks.obtain_marks, Marks.total_marks FROM Marks INNER JOIN Task ON Marks.id = Task.id WHERE (Marks.username = @username)">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="userid" />
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

