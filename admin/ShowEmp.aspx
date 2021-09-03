<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowEmp.aspx.cs" Inherits="admin_ShowEmp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr>
            <td class="header" bgcolor="Maroon" colspan="2">
                                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                                            Text="Show Employee" Width="400px"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" Width="100%" Height="350px" ScrollBars="Vertical">
               
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="empid" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="5" 
                        Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="empid" HeaderText="empid" ReadOnly="True" 
                            SortExpression="empid" />
                        <asp:BoundField DataField="empname" HeaderText="empname" 
                            SortExpression="empname" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="emailid" HeaderText="emailid" 
                            SortExpression="emailid" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" 
                            SortExpression="mobile" />
                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" 
                            Visible="False" />
                        <asp:TemplateField HeaderText="photo">
         <ItemTemplate>
              <img src='../employee/photos/<%# Eval("photo") %>' width="100px" height="100px"  style="border: thin solid #FF9900" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                    DeleteCommand="DELETE FROM [Registration] WHERE [empid] = @empid" 
                    InsertCommand="INSERT INTO [Registration] ([empid], [empname], [gender], [emailid], [mobile], [photo]) VALUES (@empid, @empname, @gender, @emailid, @mobile, @photo)" 
                    SelectCommand="SELECT [empid], [empname], [gender], [emailid], [mobile], [photo] FROM [Registration]" 
                    UpdateCommand="UPDATE [Registration] SET [empname] = @empname, [gender] = @gender, [emailid] = @emailid, [mobile] = @mobile, [photo] = @photo WHERE [empid] = @empid">
                    <DeleteParameters>
                        <asp:Parameter Name="empid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="empid" Type="Int32" />
                        <asp:Parameter Name="empname" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="emailid" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
                        <asp:Parameter Name="photo" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="empname" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="emailid" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
                        <asp:Parameter Name="photo" Type="String" />
                        <asp:Parameter Name="empid" Type="Int32" />
                    </UpdateParameters>
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
    </table>
</asp:Content>

