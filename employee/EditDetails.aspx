<%@ Page Title="" Language="C#" MasterPageFile="~/employee/EmpMasterPage.master" AutoEventWireup="true" CodeFile="EditDetails.aspx.cs" Inherits="employee_EditDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style4
        {
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="login-tbl" >
        <tr>
            <td class="header" bgcolor="Maroon" colspan="2">
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                                            Text="Edit Details" Width="200px"></asp:Label>
            </td>
        </tr>
        <tr >
            <td colspan="2">
             <asp:Panel ID="Panel1" runat="server" Width="100%"  ScrollBars="Vertical">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="empid" DataSourceID="SqlDataEdit" 
                    ForeColor="#333333" GridLines="None"  Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="empname" HeaderText="empname" 
                            SortExpression="empname" />
                        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                        <asp:BoundField DataField="address" HeaderText="address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="emailid" HeaderText="emailid" 
                            SortExpression="emailid" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" 
                            SortExpression="mobile" />
                        <asp:BoundField DataField="empid" HeaderText="empid" ReadOnly="True" 
                            SortExpression="empid" Visible="False" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="True"  />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataEdit" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                    DeleteCommand="DELETE FROM [Registration] WHERE [empid] = @empid" 
                    InsertCommand="INSERT INTO [Registration] ([empname], [dob], [address], [emailid], [mobile], [empid]) VALUES (@empname, @dob, @address, @emailid, @mobile, @empid)" 
                    SelectCommand="SELECT [empname], [dob], [address], [emailid], [mobile], [empid] FROM [Registration] WHERE ([username] = @username)" 
                    UpdateCommand="UPDATE [Registration] SET [empname] = @empname, [dob] = @dob, [address] = @address, [emailid] = @emailid, [mobile] = @mobile WHERE [empid] = @empid">
                    <DeleteParameters>
                        <asp:Parameter Name="empid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="empname" Type="String" />
                        <asp:Parameter Name="dob" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="emailid" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
                        <asp:Parameter Name="empid" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="userid" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="empname" Type="String" />
                        <asp:Parameter Name="dob" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="emailid" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
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
        <tr>
            <td>
                <asp:Image ID="Image3" runat="server" Height="23px" 
                    ImageUrl="~/web_img/blinking.gif" Width="34px" />
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" 
                    NavigateUrl="~/employee/ChangePhoto.aspx">Click here to change profile photo</asp:HyperLink>
            </td>
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

