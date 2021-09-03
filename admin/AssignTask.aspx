<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AssignTask.aspx.cs" Inherits="admin_AssignTask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td class="header" colspan="4">
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                                            Text="Assign Task" Width="300px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" style="color: #FF0000">
                Task ID</td>
            <td>
                <asp:TextBox ID="txtid" runat="server" Width="70px" Font-Bold="True" 
                                    ForeColor="#FF3300"></asp:TextBox>
            </td>
            <td>
                Select&nbsp; Group Name</td>
            <td>
                <asp:DropDownList ID="ddlgroup" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataGetGroup" DataTextField="groupname" 
                    DataValueField="groupname" 
                    onselectedindexchanged="ddlgroup_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataGetGroup" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                    SelectCommand="SELECT distinct [groupname] FROM [GroupData]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr valign="top">
            <td class="style4" style="color: #FF0000">
                Task Desc.</td>
            <td>
                <asp:TextBox ID="txttask" runat="server" Width="400px" Height="200px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="empid" DataSourceID="SqlDataGetEmp" 
                    ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                    <asp:TemplateField>
                                          <ItemTemplate>
                                              <asp:CheckBox ID="chkBox" runat="server" />
                                          </ItemTemplate>
                                    </asp:TemplateField>
                        <asp:BoundField DataField="empid" HeaderText="empid" ReadOnly="True" 
                            SortExpression="empid" />
                        <asp:BoundField DataField="empname" HeaderText="empname" 
                            SortExpression="empname" />
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
                <asp:SqlDataSource ID="SqlDataGetEmp" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                    SelectCommand="SELECT [empid], [empname] FROM [Registration]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style5" style="color: #FF0000">
                Time Duration(Days)</td>
            <td class="style1">
                <asp:TextBox ID="txtDays" runat="server" Width="126px" Font-Bold="True" 
                                    ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style1">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style1">
                <asp:Button ID="btnsubmit" runat="server" BackColor="Maroon" Font-Bold="True" 
                                            ForeColor="White" Text="Submit" 
                    onclick="Button1_Click" CssClass="tbox" Height="40px" />
            </td>
            <td class="style1">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                                        &nbsp;</td>
            <td>
                                        &nbsp;</td>
            <td>
                                        &nbsp;</td>
            <td>
                                        &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                                        &nbsp;</td>
            <td>
                                        <asp:Label ID="lblmsg" runat="server" Font-Size="Large" ForeColor="#990000"></asp:Label>
            </td>
            <td>
                                        &nbsp;</td>
            <td>
                                        &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                                        &nbsp;</td>
            <td>
                                        &nbsp;</td>
            <td>
                                        &nbsp;</td>
            <td>
                                        &nbsp;</td>
        </tr>
    </table>
</asp:Content>

