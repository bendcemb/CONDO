<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TEST.aspx.cs" Inherits="CD02.TEST" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<link href="TEST.css" rel="stylesheet" />--%>
    <style>
        .card-body div{
    width:100%;
    padding:4px 7px 2px 5px; 
    
}
    </style>


    <div class="d-flex justify-content-between flex-wrap">

        <section class="col-md-6 p-2">

            <div class="card">
                <div class="card-header">
                    XXXXX1
                </div>
                <div class="card-body">
                    <div class="row p-2">
                        <label>รหัส</label>
                        <asp:TextBox runat="server" ID="txtRO_CODE" CssClass="form-control"></asp:TextBox>
                    </div>

                     <div class="row">
                        <label>อาคาร</label>
                        <asp:TextBox runat="server" ID="txtRO_DEPT" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="row">
                        <label>ชั้น</label>
                        <asp:TextBox runat="server" ID="txtRO_FLOOR" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="row">
                        <label>ห้อง</label>
                        <asp:TextBox runat="server" ID="txtRO_ROOM" CssClass="form-control"></asp:TextBox>
                    </div>

                   <div class="row">
                        <label>บ้านเลขที่</label>
                        <asp:TextBox runat="server" ID="txtRO_HOMENO" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="row">
                        <label>พื้นที่</label>
                        <asp:TextBox runat="server" ID="txtRO_AREA" CssClass="form-control" TextMode="SingleLine" placeholder="00.00"></asp:TextBox>
                    </div>

                   <div class="row">
                        <label class="text-wrap">อัตราส่วนกรรมสิทธิ์</label>
                        <asp:TextBox runat="server" ID="txtRO_RATIO" CssClass="form-control"></asp:TextBox>
                    </div>


                   <div class="row">
                        <label>สถานะห้อง</label>
                        <asp:DropDownList runat="server" ID="ddlRO_STATUS" CssClass="form-control"></asp:DropDownList>
                    </div>


                   <div class="row">
                        <label>ประเภทห้อง</label>
                        <asp:DropDownList runat="server" ID="ddlRO_RTYPE" CssClass="form-control">
                        </asp:DropDownList>
                    </div>
                </div>
            </div>



        </section>

        <section class="col-md-6 p-2">
            <div class="card">
                <div class="card-header">
                    xxxxx2
                </div>
                <div class="card-body">
                   
                       <div class="row">
                            <label>เจ้าของห้อง</label>
                            <asp:DropDownList runat="server" ID="ddlRO_OWNER" CssClass="form-control">
                            </asp:DropDownList>
                        </div>

                        <div class="row">
                            <label>ลูกหนี้ที่ 1</label>
                            <asp:TextBox runat="server" ID="txtRO_CUST2" CssClass="form-control"></asp:TextBox>
                        </div>

                       <div class="row">
                            <label>ลูกหนี้ที่ 2</label>
                            <asp:TextBox runat="server" ID="txtRO_CUST3" CssClass="form-control"></asp:TextBox>
                        </div>

                       <div class="row">
                            <label>ลูกหนี้ที่ 3</label>
                            <asp:TextBox runat="server" ID="txtRO_CUST4" CssClass="form-control"></asp:TextBox>
                        </div>

                       <div class="row">
                            <label>เลขที่สัญญา</label>
                            <asp:TextBox runat="server" ID="txtRO_LEASENO" CssClass="form-control"></asp:TextBox>
                        </div>

                       <div class="row">
                            <label>วันที่ โอน</label>
                            <asp:TextBox runat="server" ID="txtRO_DATEIN" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div>

                        <div class="row">
                            <label>วันที่ เข้าอยู่</label>
                            <asp:TextBox runat="server" ID="txtRO_DATEIN2" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div>

                        <div class="row">
                            <label>หมายเหตุ</label>
                            <asp:TextBox runat="server" ID="txtRO_REMARK" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>

                        </div>
                   
                </div>
            </div>

        </section>
    </div>

</asp:Content>
