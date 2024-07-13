<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="Condo.Room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex justify-content-between">
        <%--ทะเบียนห้อง--%>
        <div class="card col-6">
            <div class="card-header">
                <h4>ทะเบียนห้อง</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="row col-6">
                        <asp:Label ID="lblRoomId" runat="server">เลขห้อง</asp:Label>
                        <asp:TextBox ID="txtRoomId" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="row col-6">
                        <asp:Label ID="lblRoomNo" runat="server">บ้านเลขที่</asp:Label>
                        <asp:TextBox ID="txtRoomNo" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="row col-3">
                        <asp:Label ID="lblBuilding" runat="server">อาคาร</asp:Label>
                        <asp:TextBox ID="txtBuilding" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="row col-3">
                        <asp:Label ID="lblFloor" runat="server">ชั้น</asp:Label>
                        <asp:TextBox ID="txtFloor" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
              
                    <div class="row col-3">
                        <asp:Label ID="lblRatio" runat="server">อัตราส่วนกรรมสิทธิ์</asp:Label>
                        <asp:TextBox ID="txtRatio" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="row col-3">
                        <asp:Label ID="lblArea" runat="server">พื้นที่</asp:Label>
                        <asp:TextBox ID="txtArea" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="row col-6">
                        <asp:Label ID="lblType" runat="server">ประเภท</asp:Label>
                        <div class="col-4">
                            <asp:TextBox ID="txtTypeId" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-8">
                            <asp:TextBox ID="txtType" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                    </div>

                    <div class="row col-6">
                        <asp:Label ID="lblStatus" runat="server">สถานะ</asp:Label>
                        <div class="col-4">
                            <asp:TextBox ID="txtStatusId" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-8">
                            <asp:TextBox ID="txtStatus" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--ทะเบียนเจ้าของ--%>
        <div class="card col-6">
            <div class="card-header">
                <h4>เจ้าของ</h4>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="row col-4">
                        <asp:Label ID="lblOwnerId" runat="server">รหัสเจ้าของ</asp:Label>
                        <asp:TextBox ID="txtOwnerId" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="row col-8 ms-1">
                        <asp:Label ID="lblOwnerName" runat="server">ชื่อเจ้าของ</asp:Label>
                        <asp:TextBox ID="txtOwnerName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="row col-4">
                        <asp:Label ID="Label1" runat="server">รหัสเจ้าของ</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="row col-8 ms-1">
                        <asp:Label ID="Label2" runat="server">ชื่อเจ้าของ</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="row col-4">
                        <asp:Label ID="Label3" runat="server">รหัสเจ้าของ</asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="row col-8 ms-1">
                        <asp:Label ID="Label4" runat="server">ชื่อเจ้าของ</asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="row col-4">
                        <asp:Label ID="Label5" runat="server">รหัสเจ้าของ</asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="row col-8 ms-1">
                        <asp:Label ID="Label6" runat="server">ชื่อเจ้าของ</asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="row col-4">
                        <asp:Label ID="Label7" runat="server">รหัสเจ้าของ</asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="row col-8 ms-1">
                        <asp:Label ID="Label8" runat="server">ชื่อเจ้าของ</asp:Label>
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

            </div>

        </div>
    </div>

</asp:Content>
