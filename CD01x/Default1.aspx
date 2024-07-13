<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="CD01.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home Page</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        function showDetailsWrapper(detail) {
         <%--   showDetails(detail, '<%= txtroomid.ClientID %>');
        }--%>
    </script>
    <table>
        <thead>
            <tr>
                <th>หัวข้อ</th>
                <th>รายละเอียด</th>
            </tr>
        </thead>
        <tbody>
            <tr onclick="showDetailsWrapper('รายละเอียดที่ 1')">
                <td>รายการที่ 1</td>
                <td>รายละเอียดที่ 1</td>
            </tr>
            <tr onclick="showDetailsWrapper('รายละเอียดที่ 2')">
                <td>รายการที่ 2</td>
                <td>รายละเอียดที่ 2</td>
            </tr>
            <tr onclick="showDetailsWrapper('รายละเอียดที่ 3')">
                <td>รายการที่ 3</td>
                <td>รายละเอียดที่ 3</td>
            </tr>
        </tbody>
    </table>
</asp:Content>