<%@ Page Language="C#" MasterPageFile="~/employee/EmpMasterPage.master" AutoEventWireup="true" CodeFile="ChangePhoto.aspx.cs" Inherits="employee_ChangePhoto" Title="Untitled Page" %>

<script runat="server">

   
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style4
        {
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="#006699" Text="Change Profile Photo"></asp:Label>
    <hr color="orange" />
Select Photo&nbsp;
<asp:FileUpload ID="fuPhoto" runat="server" Width="300px" />
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ControlToValidate="fuPhoto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
    Text="Upload" />
    <hr color="orange" />
<asp:SqlDataSource ID="sqlPhoto" runat="server" 
    ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
    DeleteCommand="DELETE FROM [Registration] WHERE [empid] = @empid" 
    InsertCommand="INSERT INTO [Registration] ([empid], [photo], [username]) VALUES (@empid, @photo, @username)" 
    SelectCommand="SELECT [empid], [photo], [username] FROM [Registration]" 
    
    UpdateCommand="UPDATE [Registration] SET [photo] = @photo WHERE  [username] = @username ">
    <DeleteParameters>
        <asp:Parameter Name="empid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="empid" Type="Int32" />
        <asp:Parameter Name="photo" Type="String" />
        <asp:Parameter Name="username" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:ControlParameter ControlID="hfPhotoUrl" Name="photo" PropertyName="Value" 
            Type="String" />
        <asp:SessionParameter Name="username" SessionField="userid" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:HiddenField ID="hfPhotoUrl" runat="server" />
</asp:Content>

