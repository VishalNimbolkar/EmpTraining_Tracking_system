<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
                        <p>
                            
                            <table style="width:100%;">
                                <tr>
                                    <td>
    <table style="width:100%;">
        <tr>
            <td bgcolor="Maroon" colspan="4">
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                    Text="Notification"></asp:Label>
            </td>
        </tr>
        <tr>
            <a href="Default.aspx">Default.aspx</a>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                            CellPadding="4" DataKeyNames="empid" DataSourceID="SqlDataGetData" 
                                            ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                            <Columns>
                                                    <asp:CommandField ShowSelectButton="True" />
                                                    <asp:ButtonField ButtonType="Button" Text="Accept" CommandName="Accept"    />
                                                <asp:ButtonField ButtonType="Button" Text="Reject" CommandName="Reject" />
                                                <asp:BoundField DataField="empid" HeaderText="empid" ReadOnly="True" 
                                                    SortExpression="empid" />
                                                <asp:BoundField DataField="empname" HeaderText="empname" 
                                                    SortExpression="empname" />
                                                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                                                <asp:BoundField DataField="gender" HeaderText="gender" 
                                                    SortExpression="gender" />
                                                <asp:BoundField DataField="emailid" HeaderText="emailid" 
                                                    SortExpression="emailid" />
                                                <asp:BoundField DataField="address" HeaderText="address" 
                                                    SortExpression="address" />
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
                                            
                                            SelectCommand="SELECT [empid], [empname], [dob], [gender], [emailid], [address] FROM [Registration] WHERE ([status] = @status)" 
                                            UpdateCommand="UPDATE Registration SET status ='Accept' where empid =@id">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="pending" Name="status" Type="String" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:ControlParameter ControlID="hfGetID" Name="id" PropertyName="Value" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataUpdateReject" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                                            SelectCommand="">
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:HiddenField ID="hfGetID" runat="server" />
                                    </td>
                                </tr>
                            </table>
                            
                        </p>
                    </asp:Content>


