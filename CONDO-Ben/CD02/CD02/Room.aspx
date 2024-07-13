<%@ Page Title="Room" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="CD02.Room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Room.css" rel="stylesheet" />

    <h6>Room</h6>

    <!-- Button to trigger modal -->
    <asp:Button runat="server" ID="btnAddRoom" CssClass="btn btn-primary" Text="เพิ่มห้อง" OnClientClick="openModal()" />

    <!-- Modal -->
    <div id="myModal" class="modal">
        <div class="modal-content">

            <span class="close" onclick="closeModal()">&times;</span>

            <%--body--%>
            <div class="modal-body">
                <!-- Content of your modal goes here -->

                <div class="d-flex justify-content-between flex-wrap">

                    <section class="col-md-6 p-2">

                        <div class="card">
                            <div class="card-header text-center">
                                -- ส่วนของ ห้อง --
                            </div>

                            <div class="card-body">

                                <div class="row">
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
                            <div class="card-header text-center">
                                -- ส่วนของ เจ้าของห้อง --
                            </div>
                            <div class="card-body">

                                <div class="row d-flex justify-content-between" style="border-radius: 5px 5px; padding: 0px 10px 0px 10px;">
                                    เพิ่มเจ้าของใหม่(ยังไม่มีข้อมุลในระบบ) 
                                    <asp:Button runat="server" ID="btnCreateCust" Text="+" CssClass="btn btn-info col-1" OnClientClick="openModalCust()" />
                                </div>

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

            </div>



            <div class=" modal-footer">
                <%--  <asp:TextBox runat="server" ID="txtEDIT_DATE"></asp:TextBox>
                <asp:TextBox runat="server" ID="txtEDIT_BY"></asp:TextBox>
                <asp:TextBox runat="server" ID="txtRO_FLAG"></asp:TextBox>--%>
                <asp:Button runat="server" ID="btnSave" CssClass="btn btn-success" Text="บันทึก" />
                <asp:Button runat="server" ID="btnCancel" CssClass="btn btn-danger" Text="ยกเลิก" OnClientClick="closeModal(); return false;" />

            </div>

        </div>
    </div>
    <!-- /Modal -->

    <!-- ModalCust -->
    <div id="myModalCust" class="modal2">

        <div class="modal-content2">
           <div class="modal-header d-flex justify-content-end">
               <h4>เพิ่มชื่อ เจ้าของห้อง/ผู้เช่า</h4>
                <span class="close2" onclick="closeModalCust()">&times;</span>
           </div>
            <div class="modal-body">              
                <div class="d-flex justify-content-between flex-wrap">

                    <section class="col-md-6 p-2">

                        <div class="card">
                            <div class="card-header text-center">
                                -- xxxx --
                            </div>
                            <div class="card-body">
                                xxxxxx
          <%--          <div class="row p-2">
                        <label>รหัส</label>
                        <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control"></asp:TextBox>
                    </div>--%>
                            </div>
                        </div>



                    </section>

                    <section class="col-md-6 p-2">
                        <div class="card">
                            <div class="card-header text-center">
                                -- xxxx --
                            </div>
                            <div class="card-body">
                                xx
                            </div>
                        </div>

                    </section>
                </div>
            </div>
            
            <div class=" modal-footer">
                <asp:Button runat="server" ID="btnSaveCust" CssClass="btn btn-success" Text="บันทึก" OnClick="btnSaveCust_Click" OnClientClick="closeModalCust(); return false;" />
                <asp:Button runat="server" ID="btnCancel2" CssClass="btn btn-danger" Text="ยกเลิก" OnClientClick="closeModalCust(); return false;" />
            </div>


        </div>

    </div>


    <asp:GridView runat="server" ID="grv1" CssClass="table table-bordered mt-3" Font-Size="Small" AlternatingRowStyle-CssClass="bg-dark bg-opacity-25" HeaderStyle-BackColor="#669999" HeaderStyle-ForeColor="White"
        AutoGenerateColumns="false" HeaderStyle-CssClass="text-center" HeaderStyle-Font-Bold="true">
        <Columns>
            <asp:BoundField DataField="RO_CODE" HeaderText="รหัสห้อง" />
            <asp:BoundField DataField="RO_DEPT" HeaderText="อาคาร" />
            <asp:BoundField DataField="RO_FLOOR" HeaderText="ชั้น" />
            <asp:BoundField DataField="RO_ROOM" HeaderText="ห้องที่" />
            <asp:BoundField DataField="RO_HOMENO" HeaderText="บ้านเลขที่" />
            <asp:BoundField DataField="RO_AREA" HeaderText="พื้นที่" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField DataField="RO_RATIO" HeaderText="อัตราส่วนกรรมสิทธิ์" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right" />

            <%--<asp:BoundField DataField="RO_STATUS" HeaderText="รหัสสถานะห้อง" />--%>
            <%--<asp:BoundField DataField="ST_NAME" HeaderText="สถานะห้อง" ItemStyle-Wrap="false" />--%>
            <asp:BoundField DataField="ST_TITLE" HeaderText="สถานะห้อง" ItemStyle-Wrap="false" />

            <%--<asp:BoundField DataField="RO_RTYPE" HeaderText="รหัสประเภทห้อง" />--%>
            <%--<asp:BoundField DataField="RT_NAME" HeaderText="ประเภทห้อง" ItemStyle-Wrap="false" />--%>
            <asp:BoundField DataField="RT_TITLE" HeaderText="ประเภทห้อง" ItemStyle-Wrap="false" />

            <%--<asp:BoundField DataField="RO_OWNER" HeaderText="รหัสเจ้าของ" />--%>
            <asp:BoundField DataField="PE_NAME" HeaderText="เจ้าของห้อง" ItemStyle-Wrap="false" />
            <%--   <asp:BoundField DataField="RO_CUST2" HeaderText="ลูกหนี้ที่ 1" />
            <asp:BoundField DataField="RO_CUST3" HeaderText="ลูกหนี้ที่ 2" />
            <asp:BoundField DataField="RO_CUST4" HeaderText="ลูกหนี้ที่ 3" />--%>
            <asp:BoundField DataField="RO_LEASENO" HeaderText="เลขที่สัญญา" />



            <asp:BoundField DataField="RO_REMARK" HeaderText="หมายเหตุ" />
            <asp:BoundField DataField="RO_DATEIN" HeaderText="วันที่ โอน" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="RO_DATEIN2" HeaderText="วันที่ เข้าอยู่" DataFormatString="{0:dd/MM/yyyy}" />

            <asp:BoundField DataField="R_EDIT_DATE" HeaderText="วันที่แก้ไข" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="R_EDIT_BY" HeaderText="ผุ้บันทึก" />


        </Columns>
    </asp:GridView>


    <script src="Room.js"></script>
</asp:Content>
