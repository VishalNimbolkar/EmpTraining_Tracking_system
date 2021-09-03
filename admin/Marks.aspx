<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Marks.aspx.cs" Inherits="admin_Marks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 90px;
        }
        .style7
        {
            height: 23px;
        }
        .style8
        {
            height: 26px;
        }
        .style9
        {
            height: 23px;
            width: 221px;
        }
        .style10
        {
            width: 221px;
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
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Emp Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Emp ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtempid" runat="server" Width="100px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Task"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttask" runat="server" Height="110px" TextMode="MultiLine" 
                    Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label7" runat="server" Text="Task Status"></asp:Label>
            </td>
            <td class="style8">
                <asp:DropDownList ID="ddlstatus" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Done</asp:ListItem>
                    <asp:ListItem>Pending</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" BorderStyle="None" Visible="False">
                    <table style="border: thin solid #008000; width:60%;">
                        <tr>
                            <td class="style7" colspan="2">
                                <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#003366" 
                                    Text="Employee Performance Measurment"></asp:Label>
                                (10 Marks for each Tech.)</td>
                        </tr>
                        <tr>
                            <td class="style7" colspan="2">
                           <hr color="green" />
                           </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Analysis"></asp:Label>
                            </td>
                            <td class="style9">
                                <asp:TextBox ID="txtanalysis" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Desisgning"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="txtdes" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Coding"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="txtcode" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Testing"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="txttest" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" BorderStyle="None" Visible="False">
                    <table style="border: thin solid #008000; width:60%;">
                        <tr>
                            <td class="style7" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6" align="left">
                                <asp:Label ID="Label14" runat="server" Font-Bold="True" 
                                    Text="Reason/Suggestion"></asp:Label>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtreason" runat="server" Width="167px" Height="50px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:ImageButton ID="btnsubmit" runat="server" 
                    ImageUrl="~/web_img/confirm1.jpg" onclick="btnsubmit_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataDone" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                    DeleteCommand="DELETE FROM [Marks] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [Marks] ([empid], [username], [task], [analysis], [designing], [coding], [testing], [obtain_marks], [total_marks]) VALUES (@empid, @username, @task, @analysis, @designing, @coding, @testing, @obtain_marks, @total_marks)" 
                    SelectCommand="SELECT * FROM [Marks]" 
                    UpdateCommand="UPDATE Task SET admin_status ='Done' WHERE (username=@username)">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtempid" Name="empid" PropertyName="Text" 
                            Type="Int32" />
                        <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                        <asp:ControlParameter ControlID="txttask" Name="task" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="txtanalysis" Name="analysis" 
                            PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="txtdes" Name="designing" PropertyName="Text" 
                            Type="Int32" />
                        <asp:ControlParameter ControlID="txtcode" Name="coding" PropertyName="Text" 
                            Type="Int32" />
                        <asp:ControlParameter ControlID="txttest" Name="testing" PropertyName="Text" 
                            Type="Int32" />
                        <asp:ControlParameter ControlID="hftotal" DefaultValue="" Name="obtain_marks" 
                            PropertyName="Value" Type="Int32" />
                        <asp:Parameter DefaultValue="40" Name="total_marks" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataPending" runat="server" 
                    
                    UpdateCommand="UPDATE Task SET user_status = @user_status, reason = @reason WHERE (username = @username) AND (taskid = @taskid)" 
                    ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                    DeleteCommand="DELETE FROM [Task] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [Task] ([taskid], [task], [date1], [username], [user_status], [admin_status], [doc_path]) VALUES (@taskid, @task, @date1, @username, @user_status, @admin_status, @doc_path)" 
                    SelectCommand="SELECT * FROM [Task]">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="taskid" Type="Int32" />
                        <asp:Parameter Name="task" Type="String" />
                        <asp:Parameter Name="date1" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="user_status" Type="String" />
                        <asp:Parameter Name="admin_status" Type="String" />
                        <asp:Parameter Name="doc_path" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:SessionParameter DefaultValue="" Name="taskid" SessionField="taskid" 
                            Type="Int32" />
                        <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                        <asp:Parameter DefaultValue="Rejected" Name="user_status" />
                        <asp:ControlParameter ControlID="txtreason" DefaultValue="" Name="reason" 
                            PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:HiddenField ID="hftotal" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

