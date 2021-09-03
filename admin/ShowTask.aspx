<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowTask.aspx.cs" Inherits="admin_ShowTask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td class="header" bgcolor="Maroon" colspan="2">
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                                            Text="Show Task" Width="200px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
              <asp:Panel ID="Panel1" runat="server" Width="100%" Height="350px" ScrollBars="Vertical">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="empid" DataSourceID="SqlDataGetData" ForeColor="#333333" 
                    GridLines="None" Width="100%" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" SelectText="Marks" />
                        <asp:BoundField DataField="empid" HeaderText="empid" ReadOnly="True" 
                            SortExpression="empid" />
                        <asp:BoundField DataField="empname" HeaderText="empname" 
                            SortExpression="empname" />
                        <asp:BoundField DataField="username" HeaderText="username" 
                            SortExpression="username" />
                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" 
                            Visible="False" />
                        <asp:BoundField DataField="taskid" HeaderText="Task ID" SortExpression="id" />
                        <asp:BoundField DataField="task" HeaderText="task" SortExpression="task" />
                        <asp:BoundField DataField="doc_path" HeaderText="doc_path" 
                            SortExpression="doc_path" Visible="False" />
     <asp:TemplateField HeaderText="View Task">
         <ItemTemplate>
              <a href="../employee/task/<%# Eval("username") %>/<%# Eval("doc_path") %>" >View</a>
         </ItemTemplate>
     </asp:TemplateField>

           <asp:TemplateField HeaderText="photo">
         <ItemTemplate>
              <img src='../employee/photos/<%# Eval("photo") %>' width="100px" height="100px" style="border: thin solid #FF9900" />
         </ItemTemplate>
     </asp:TemplateField>
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
                    SelectCommand="SELECT Registration.empid, Registration.empname, Registration.username, Registration.photo, Task.taskid, Task.task, Task.doc_path FROM Registration INNER JOIN Task ON Registration.username = Task.username COLLATE Latin1_General_CI_AI WHERE (Task.user_status = 'Done') AND (Task.admin_status = 'Pending')">
                </asp:SqlDataSource>
                </asp:Panel>
            </td>
        </tr>
        <tr valign="top">
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                                        &nbsp;</td>
            <td>
                                        &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                                        &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                                        &nbsp;</td>
            <td>
                                        &nbsp;</td>
        </tr>
    </table>

 



</asp:Content>

