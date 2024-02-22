<%@ Page Title="Room" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="CD02.Room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Index4.css" rel="stylesheet" />
    <script src="Index4.js"></script>
    <h6>Room</h6>

    <!-- Button to trigger modal -->
    <asp:Button runat="server" ID="btnAddRoom" CssClass="btn btn-primary" Text="เพิ่มห้อง" OnClientClick="openModal()" />

    <!-- Modal -->
    <div id="myModal" class="modal">
        <div class="modal-content">

            <span class="close" onclick="closeModal()">&times;</span>

            <div class="modal-body">
                <!-- Content of your modal goes here -->

                <div class="d-flex justify-content-start xform-control">

                    <div class="input-group">
                        <div class=" input-group-text">
                            <label>รหัส</label>
                        </div>
                        <asp:TextBox runat="server" ID="txtRO_CODE"></asp:TextBox>
                    </div>

                    <div class="input-group">
                        <div class=" input-group-text">
                            <label>อาคาร</label>
                        </div>
                        <asp:TextBox runat="server" ID="txtRO_DEPT"></asp:TextBox>
                    </div>

                    <div class="input-group">
                        <div class=" input-group-text">
                            <label>ชั้น</label>
                        </div>
                        <asp:TextBox runat="server" ID="txtRO_FLOOR"></asp:TextBox>
                    </div>

                    <div class="input-group">
                        <div class=" input-group-text">
                            <label>ห้อง</label>

                        </div>
                        <asp:TextBox runat="server" ID="txtRO_ROOM"></asp:TextBox>
                    </div>

                    <div class="input-group">
                        <div class=" input-group-text">
                            <label>บ้านเลขที่</label>

                        </div>
                        <asp:TextBox runat="server" ID="txtRO_HOMENO"></asp:TextBox>
                    </div>
                </div>

                <div class="d-flex justify-content-start xform-control">

                    <asp:TextBox runat="server" ID="txtRO_CUST2"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txtRO_CUST3"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txtRO_CUST4"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txtRO_LEASENO"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txtRO_DATEIN"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txtRO_DATEIN2"></asp:TextBox>

                </div>

                <div class="d-flex justify-content-start xform-control">

                    <asp:TextBox runat="server" ID="txtRO_AREA"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txtRO_RATIO"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txtRO_STATUS"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txtRO_RTYPE"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txtRO_REMARK"></asp:TextBox>

                </div>

                <%-- <asp:TextBox runat="server" ID="txtRO_CARPARK"></asp:TextBox>--%>
            </div>
            <div class=" modal-footer">
                <asp:TextBox runat="server" ID="txtEDIT_DATE"></asp:TextBox>
                <asp:TextBox runat="server" ID="txtEDIT_BY"></asp:TextBox>
                <asp:TextBox runat="server" ID="txtRO_FLAG"></asp:TextBox>
                <asp:Button runat="server" ID="btnSave" CssClass="btn btn-success" Text="บันทึก" />
                <asp:Button runat="server" ID="btnCancel" CssClass="btn btn-danger" Text="ยกเลิก" OnClientClick="closeModal()" />
            </div>

        </div>
    </div>
    <!-- /Modal -->

    <asp:GridView runat="server" ID="grv1" CssClass="table table-bordered mt-3" Font-Size="Small" AlternatingRowStyle-CssClass="bg-dark bg-opacity-25" HeaderStyle-BackColor="#669999" HeaderStyle-ForeColor="White"
        AutoGenerateColumns="false" HeaderStyle-CssClass="text-center" HeaderStyle-Font-Bold="true" >
        <Columns>
            <asp:BoundField DataField="RO_CODE" HeaderText="รหัสห้อง" />
            <asp:BoundField DataField="RO_DEPT" HeaderText="อาคาร" />
            <asp:BoundField DataField="RO_FLOOR" HeaderText="ชั้น" />
            <asp:BoundField DataField="RO_ROOM" HeaderText="ห้องที่" />
            <asp:BoundField DataField="RO_HOMENO" HeaderText="บ้านเลขที่" />
           
            <asp:BoundField DataField="RO_AREA" HeaderText="พื้นที่" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField DataField="RO_RATIO" HeaderText="อัตราส่วนกรรมสิทธิ์" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right" />
            <asp:BoundField DataField="RO_DATEIN" HeaderText="วันที่โอน" DataFormatString="{0:dd/MM/yyyy}" />
        
            <asp:BoundField DataField="RO_OWNER" HeaderText="รหัสเจ้าของ" />
            <asp:BoundField DataField="PE_NAME" HeaderText="เจ้าของห้อง" ItemStyle-Wrap="false" />
            <asp:BoundField DataField="RO_CUST2" HeaderText="ลูกหนี้ที่ 1" />
            <asp:BoundField DataField="RO_CUST3" HeaderText="ลูกหนี้ที่ 2" />
            <asp:BoundField DataField="RO_CUST4" HeaderText="ลูกหนี้ที่ 3" />
            <asp:BoundField DataField="RO_LEASENO" HeaderText="เลขที่สัญญา" />

            <asp:BoundField DataField="RO_STATUS" HeaderText="สถานะห้อง" />
            <asp:BoundField DataField="RO_RTYPE" HeaderText="ประเภทห้อง" />

            <asp:BoundField DataField="RO_REMARK" HeaderText="หมายเหตุ" />
            <asp:BoundField DataField="RO_DATEIN2" HeaderText="วันที่เข้าอยู่" DataFormatString="{0:dd/MM/yyyy}" />

            <asp:BoundField DataField="R_EDIT_DATE" HeaderText="วันที่แก้ไข" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="R_EDIT_BY" HeaderText="ผุ้บันทึก" />

           
        </Columns>
    </asp:GridView>
</asp:Content>
