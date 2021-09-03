<%@ Page Title="" Language="C#" MasterPageFile="~/employee/EmpMasterPage.master" AutoEventWireup="true" CodeFile="SubmitTask.aspx.cs" Inherits="employee_SubmitTask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style4
        {
            width: 89px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border: thin ridge #FF9933; width:100%;">
        <tr>
            <td class="style4">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/web_img/show.png" 
                                            Width="50px" />
            </td>
            <td bgcolor="#336699">
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                                            Text="Submit Task"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table align="left" style="width:100%;">
                    <tr>
                        <td class="style4" style="color: #FF0000; font-weight: bold">
                            ID</td>
                        <td>
                            <asp:TextBox ID="txtid" runat="server" Font-Bold="True" ReadOnly="True" 
                                Width="50px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #FF0000; font-weight: bold">
                            Task</td>
                        <td class="style1">
                            <asp:TextBox ID="txttask" runat="server" Font-Bold="True" ReadOnly="True" 
                                TextMode="MultiLine" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #FF0000; font-weight: bold">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #FF0000; font-weight: bold">
                            Upload File</td>
                        <td>
                            <asp:FileUpload ID="fuphoto" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #FF0000; font-weight: bold">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" style="color: #FF0000; font-weight: bold">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                                onclick="btnsubmit_Click" />
                        </td>
                    </tr>
                </table>
&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataGetData" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                    
                    SelectCommand="SELECT taskid, task FROM Task WHERE (taskid = @taskid) AND (username = @username)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="taskid" QueryStringField="id" Type="Int32" />
                        <asp:SessionParameter Name="username" SessionField="userid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:HiddenField ID="hfID" runat="server" />
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
    </table>
</asp:Content>

