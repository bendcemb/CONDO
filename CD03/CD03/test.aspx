<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="CD03.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HiddenField ID="hdflbl" runat="server" />
    <asp:Label ID="lbltest" runat="server"></asp:Label>
    <asp:TextBox ID="txtRO_CODE" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary" Text="Search" OnClick="btnSearch_Click"/>
</asp:Content>
