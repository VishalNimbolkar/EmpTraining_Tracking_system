<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="NewEmp.aspx.cs" Inherits="admin_NewEmp" %>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
 
                    <table class="login-tbl">
                       
                        <tr>
                            <td class="style4">
                                <asp:Image ID="Image4" runat="server" ImageUrl="~/web_img/registration.png" 
                                            Width="50px" />
                            </td>
                            <td class="header head-new">
                                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                                            Text="Employee Registration"></asp:Label>
                            </td>
                        </tr>

                         <tr><td class="style4">&nbsp;</td></tr>
                        <tr>
            <td class="style4" align="left" style="width: 200px; color: #FFFFFF;">
                                        Emp ID</td>
            <td>
                <asp:TextBox ID="txtempid" runat="server" Width="70px" Font-Bold="True" 
                                    ForeColor="#FF3300" ReadOnly="True"></asp:TextBox>
            </td>
                        </tr>
                        <tr>
            <td class="style4" align="left" style="width: 200px; color: #FFFFFF;">
                                        Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#FF9900">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="RegularExpressionValidator" 
                    ForeColor="Yellow" ValidationExpression="[a-zA-Z ]*$">Must be in Alphabets</asp:RegularExpressionValidator>
            </td>
                        </tr>
                        <tr>
            <td class="style4" align="left" style="width: 200px; color: #FFFFFF;">
                                        Company</td>
            <td>
                <asp:TextBox ID="txtCompany" runat="server" Width="200px"></asp:TextBox>
            </td>
                        </tr>
                        <tr>
            <td class="style4" align="left" style="width: 200px; color: #FFFFFF;">
                                        DOB</td>
            <td>
                <asp:TextBox ID="txtdob" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdob" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Yellow" Display="Dynamic">Please Enter the DOB</asp:RequiredFieldValidator>
            </td>
                        </tr>
                        <tr>
            <td class="style4" align="left" style="width: 200px; color: #FFFFFF;">
                                        Gender</td>
            <td style="color: #FFFFFF";>
                <asp:RadioButtonList ID="rbgender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem >Male</asp:ListItem>
                    <asp:ListItem >Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
                        </tr>
                        <tr>
            <td class="style4" align="left" style="width: 200px; color: #FFFFFF;">
                                        Address</td>
            <td>
                <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtadd" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Yellow" Display="Dynamic">Please Enter the Address</asp:RequiredFieldValidator>
            </td>
                        </tr>
                        <tr>
            <td class="style4" align="left" style="width: 200px; color: #FFFFFF;">
                                        Email ID</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#FF9900">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="#FFFF99" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Must be in Proper Format</asp:RegularExpressionValidator>
            </td>
                        </tr>
                        <tr>
            <td class="style4" align="left" style="width: 200px; color: #FFFFFF;">
                                        Mobile</td>
            <td>
                <asp:TextBox ID="txtmob" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtmob" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="Yellow" 
                    ValidationExpression="\d{10}">Must be proper format</asp:RegularExpressionValidator>
            </td>
                        </tr>
                        <tr>
            <td class="style4" align="left" style="width: 200px; color: #FFFFFF;">
                                        Password</td>
            <td>
                <asp:TextBox ID="txtpwd" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtpwd" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Yellow" Display="Dynamic">Please Enter the Password</asp:RequiredFieldValidator>
            </td>
                        </tr>
                        <tr>
            <td class="style4" align="left" style="width: 200px; color: #FFFFFF;">
                                        Confirm Password</td>
            <td>
                <asp:TextBox ID="txtconfirm" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToCompare="txtconfirm" ControlToValidate="txtpwd" 
                    ErrorMessage="CompareValidator" ForeColor="Yellow" ValueToCompare="txtpwd">Password not match</asp:CompareValidator>
            </td>
                        </tr>
                        <tr>
            <td class="style4" align="left" style="width: 200px; color: #FFFFFF;">
                                        Photo</td>
            <td>
                <asp:FileUpload ID="fuphoto" runat="server" ForeColor="#FFCC00" />
            </td>
                        </tr>
                        <tr> 
                        <td class="style4" align="left" style="width: 200px; color: #FFFFFF;">
                                        Area of Interest (Group)</td>
                            <td class="style1">
                                <asp:DropDownList ID="ddlGroup" runat="server" DataSourceID="SqlDataDataGroup" 
                                    DataTextField="groupname" DataValueField="groupname">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataDataGroup" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                                    SelectCommand="SELECT [groupname] FROM [GroupData] ORDER BY [groupname]">
                                </asp:SqlDataSource>
                                        </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style1">
                                        &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                            </td>
                            <td class="style1">
                                <asp:Button ID="Button1" runat="server"  Font-Bold="True" 
                                             Text="Submit" onclick="Button1_Click" class="hvr-wobble-vertical btn-style" />
                            </td>
                        </tr>
                        </table>
 
                    </asp:Content>


