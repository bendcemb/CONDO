<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="TEST_MENU.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card">
        <div class="row">
            <h6>ทะเบียน</h6>
            <asp:ImageButton runat="server" Height="100px" Width="300px" CssClass="border-2" />
            <asp:ImageButton runat="server" Height="100px" Width="300px" />
            <asp:ImageButton runat="server" Height="100px" Width="300px" />
            <asp:ImageButton runat="server" Height="100px" Width="300px" />
            
        </div>
        <div class="row">
            <h6>บันทึก</h6>
        </div>
        <div class="row">
            <h6>รายงาน</h6>
        </div>
    </div>
</asp:Content>
