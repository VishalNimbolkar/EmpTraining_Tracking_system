<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Inbox.aspx.cs" Inherits="admin_Inbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style7
    {
        height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td class="header" bgcolor="Maroon">
            <asp:Label ID="Label3" runat="server" 
                Font-Size="X-Large" ForeColor="White" Text="Inbox"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataGetMsg" 
                CellPadding="4" ForeColor="#333333" GridLines="None" Width="80%" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ButtonType="Button" DeleteImageUrl="~/web_img/cancel2.jpg" 
                        InsertImageUrl="~/web_img/cancel2.jpg" ShowDeleteButton="True" />
                    <asp:BoundField DataField="msgdate" HeaderText="Date" 
                        SortExpression="msgdate" />
                    <asp:BoundField DataField="msgfrom" HeaderText="From" 
                        SortExpression="msgfrom" />
                    <asp:BoundField DataField="sub" HeaderText="Subject" SortExpression="sub" />
                    <asp:BoundField DataField="msg" HeaderText="Message" SortExpression="msg" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="id" Visible="False" />
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
            <asp:SqlDataSource ID="SqlDataGetMsg" runat="server" 
                ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                DeleteCommand="DELETE FROM [Msg] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [Msg] ([msgdate], [msgfrom], [sub], [msg]) VALUES (@msgdate, @msgfrom, @sub, @msg)" 
                SelectCommand="SELECT [msgdate], [msgfrom], [sub], [msg], [id] FROM [Msg] WHERE ([msgto] = @msgto) order by id desc" 
                UpdateCommand="UPDATE [Msg] SET [msgdate] = @msgdate, [msgfrom] = @msgfrom, [sub] = @sub, [msg] = @msg WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="msgdate" Type="String" />
                    <asp:Parameter Name="msgfrom" Type="String" />
                    <asp:Parameter Name="sub" Type="String" />
                    <asp:Parameter Name="msg" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="msgto" SessionField="userid" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="msgdate" Type="String" />
                    <asp:Parameter Name="msgfrom" Type="String" />
                    <asp:Parameter Name="sub" Type="String" />
                    <asp:Parameter Name="msg" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
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
</table>
</asp:Content>

