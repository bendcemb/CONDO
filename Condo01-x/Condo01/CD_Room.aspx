<%@ Page Title="" Language="C#" MasterPageFile="~/bSite.Master" AutoEventWireup="true" CodeBehind="CD_Room.aspx.cs" Inherits="Condo01.CD_Room" Culture="th-TH" UICulture="th-TH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="m-2">
    <h4>Room</h4>
  </div>
  <div class="row d-flex justify-content-between p-2">
    <div class="col-4">
      รหัสห้อง
      <asp:TextBox ID="txtRoomId" runat="server" CssClass="form-control"></asp:TextBox>
      อาคาร
      <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
      ชั้น
      <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
      เลขที่ห้อง
      <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
      บ้านเลขที่
      <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
      พื้นที่
      <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
      อัตราส่วนกรรมสิทธิ์
      <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
      ประเภท
      <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
      สถานะ
      <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>

    </div>
    <div class="col-4">
      รหัสเจ้าของ
      <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>
      ชื่อเจ้าของ
      <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"></asp:TextBox>
      รหัสผู้เช่า
      <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control"></asp:TextBox>
      ชื่อผู้เช่า
      <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control"></asp:TextBox>
      รหัสผู้เช่า2
  <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
      ชื่อผู้เช่า2
  <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
      รหัสผู้เช่า3
      <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control"></asp:TextBox>
      ชื่อผู้เช่า3
      <asp:TextBox ID="TextBox16" runat="server" CssClass="form-control"></asp:TextBox>
      รหัสผู้เช่า4
      <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control"></asp:TextBox>
      ชื่อผู้เช่า4
      <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="col-4">
      <asp:TextBox ID="TextBox22" runat="server" CssClass="form-control"></asp:TextBox>
      <asp:TextBox ID="TextBox23" runat="server" CssClass="form-control"></asp:TextBox>
      <asp:TextBox ID="TextBox24" runat="server" CssClass="form-control"></asp:TextBox>
      <asp:TextBox ID="TextBox25" runat="server" CssClass="form-control"></asp:TextBox>
      <asp:TextBox ID="TextBox26" runat="server" CssClass="form-control"></asp:TextBox>
      <asp:TextBox ID="TextBox27" runat="server" CssClass="form-control"></asp:TextBox>
      <asp:TextBox ID="TextBox28" runat="server" CssClass="form-control"></asp:TextBox>
      <asp:TextBox ID="TextBox29" runat="server" CssClass="form-control"></asp:TextBox>
      <asp:TextBox ID="TextBox30" runat="server" CssClass="form-control"></asp:TextBox>
      <asp:TextBox ID="TextBox31" runat="server" CssClass="form-control"></asp:TextBox>
      <asp:TextBox ID="TextBox32" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
  </div>

</asp:Content>
