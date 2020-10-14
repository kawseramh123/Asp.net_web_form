<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="Web_Project.WorkingFolder.Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" DataKeyNames="TeacherID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="TeacherID" HeaderText="TeacherID" InsertVisible="False" ReadOnly="True" SortExpression="TeacherID" />
            <asp:BoundField DataField="TeacherName" HeaderText="TeacherName" SortExpression="TeacherName" />
            <asp:BoundField DataField="DepartmentName" HeaderText="DepartmentName" SortExpression="DepartmentName" />
            <asp:BoundField DataField="TeacherMobile" HeaderText="TeacherMobile" SortExpression="TeacherMobile" />
        </Columns>
</asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" SelectCommand="SELECT * FROM [Teacher]"></asp:SqlDataSource>
       <br />
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-hover" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="TeacherID" DataSourceID="SqlDataSource2">
        <Fields>
            <asp:BoundField DataField="TeacherID" HeaderText="TeacherID" InsertVisible="False" ReadOnly="True" SortExpression="TeacherID" />
            <asp:BoundField DataField="TeacherName" HeaderText="TeacherName" SortExpression="TeacherName" />
            <asp:BoundField DataField="DepartmentName" HeaderText="DepartmentName" SortExpression="DepartmentName" />
            <asp:BoundField DataField="TeacherMobile" HeaderText="TeacherMobile" SortExpression="TeacherMobile" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
    DeleteCommand="DELETE FROM [Teacher] WHERE [TeacherID] = @original_TeacherID AND (([TeacherName] = @original_TeacherName) OR ([TeacherName] IS NULL AND @original_TeacherName IS NULL)) AND (([DepartmentName] = @original_DepartmentName) OR ([DepartmentName] IS NULL AND @original_DepartmentName IS NULL)) AND (([TeacherMobile] = @original_TeacherMobile) OR ([TeacherMobile] IS NULL AND @original_TeacherMobile IS NULL))" 
    InsertCommand="INSERT INTO [Teacher] ([TeacherName], [DepartmentName], [TeacherMobile]) VALUES (@TeacherName, @DepartmentName, @TeacherMobile)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [Teacher]" 
    UpdateCommand="UPDATE [Teacher] SET [TeacherName] = @TeacherName, [DepartmentName] = @DepartmentName, [TeacherMobile] = @TeacherMobile WHERE [TeacherID] = @original_TeacherID AND (([TeacherName] = @original_TeacherName) OR ([TeacherName] IS NULL AND @original_TeacherName IS NULL)) AND (([DepartmentName] = @original_DepartmentName) OR ([DepartmentName] IS NULL AND @original_DepartmentName IS NULL)) AND (([TeacherMobile] = @original_TeacherMobile) OR ([TeacherMobile] IS NULL AND @original_TeacherMobile IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_TeacherID" Type="Int32" />
        <asp:Parameter Name="original_TeacherName" Type="String" />
        <asp:Parameter Name="original_DepartmentName" Type="String" />
        <asp:Parameter Name="original_TeacherMobile" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TeacherName" Type="String" />
        <asp:Parameter Name="DepartmentName" Type="String" />
        <asp:Parameter Name="TeacherMobile" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TeacherName" Type="String" />
        <asp:Parameter Name="DepartmentName" Type="String" />
        <asp:Parameter Name="TeacherMobile" Type="String" />
        <asp:Parameter Name="original_TeacherID" Type="Int32" />
        <asp:Parameter Name="original_TeacherName" Type="String" />
        <asp:Parameter Name="original_DepartmentName" Type="String" />
        <asp:Parameter Name="original_TeacherMobile" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    </asp:Content>
