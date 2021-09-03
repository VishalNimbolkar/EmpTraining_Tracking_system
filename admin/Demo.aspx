<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Demo.aspx.cs" Inherits="admin_Demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="empid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="empid" HeaderText="empid" ReadOnly="True" 
                SortExpression="empid" />
            <asp:BoundField DataField="empname" HeaderText="empname" 
                SortExpression="empname" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="emailid" HeaderText="emailid" 
                SortExpression="emailid" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
        SelectCommand="SELECT [empid], [empname], [dob], [emailid] FROM [Registration]">
    </asp:SqlDataSource>
</asp:Content>

