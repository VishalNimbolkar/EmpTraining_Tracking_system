<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ProjectList.aspx.cs" Inherits="admin_ProjectList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr>
            <td class="header" bgcolor="Maroon" colspan="2">
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                                            Text="Show Project List" Width="400px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" Width="100%" Height="350px" ScrollBars="Vertical">
                    <asp:GridView ID="GridView2" runat="server" 
    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pid" 
    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%" 
                        onselectedindexchanged="GridView2_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                            <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" 
            SortExpression="pid" />
                            <asp:BoundField DataField="pname" HeaderText="Project" SortExpression="pname" />
                            <asp:BoundField DataField="details" HeaderText="Details" 
            SortExpression="details" />
                            <asp:BoundField DataField="technology" HeaderText="Technology" 
            SortExpression="technology" />
                            <asp:BoundField DataField="doc" HeaderText="doc" SortExpression="doc" 
                                Visible="False" />

                            <asp:TemplateField HeaderText="Document">
                                <ItemTemplate>
                                    <a href="../Client/Doc/<%# Eval("doc") %>">Download</a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
    
                        SelectCommand="SELECT [pid], [pname], [details], [technology], [doc] FROM [ProjectReg] WHERE ([status] = @status)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
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
    </table>
</asp:Content>

