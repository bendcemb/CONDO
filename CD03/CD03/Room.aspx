<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="CD03.Room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #divgrv1 {
            overflow: scroll;
            
        }
    </style>

    <script type="text/javascript">
        function SetFocusToTextBox() {
            // ให้หา element ด้วย ID และกำหนด Focus ไปที่นั้น
            var textBox = document.getElementById('<%= txtRO_CODE.ClientID %>');
            //if (textBox != null) {
            //    textBox.focus();
            //}
            textBox.focus();
        }
    </script>

    <h5>Room</h5>
    <%--    <div id="divgrv1">
       
    </div>--%>
    <asp:GridView ID="grv1" runat="server" AutoGenerateColumns="false" CssClass="table table-sm table-bordered"
        HeaderStyle-BackColor="#009999" HeaderStyle-ForeColor="White" HeaderStyle-VerticalAlign="Top" HeaderStyle-HorizontalAlign="Center"
        DataKeyNames="RO_CODE" PageSize="7" PagerSettings-Mode="Numeric" AllowPaging="true" OnPageIndexChanging="grv1_PageIndexChanging" RowStyle-Wrap="false">
       
        <Columns>

            <asp:TemplateField HeaderText="รหัสห้อง">
                <ItemTemplate>
                    <a href="javascript:void(0);" onclick='<%# "SelectRow(" + Container.DisplayIndex + ", \"" + Eval("RO_CODE") + "\"); return false;" %>'>
                        <%# Eval("RO_CODE") %>
                    </a>
                </ItemTemplate>
            </asp:TemplateField>

            <%--<asp:BoundField DataField="RO_CODE" HeaderText="รหัสห้อง" />--%>
            <asp:BoundField DataField="RO_DEPT" HeaderText="อาคาร" />
            <asp:BoundField DataField="RO_FLOOR" HeaderText="ชั้น" />
            <asp:BoundField DataField="RO_ROOM" HeaderText="เลขห้อง" />
            <asp:BoundField DataField="RO_HOMENO" HeaderText="บ้านเลขที่" />
            <asp:BoundField DataField="RO_AREA" HeaderText="พื้นที่" />
            <asp:BoundField DataField="RO_RATIO" HeaderText="อัตราส่วนกรรมสิทธิ์" />
            <asp:BoundField DataField="RO_DATEIN" HeaderText="วันที่โอน" />
            <asp:BoundField DataField="RO_MEA" HeaderText="มิเตอร์น้ำประปา" />
            <asp:BoundField DataField="RO_ELECNO" HeaderText="มิเตอร์ไฟฟ้า" />
            <asp:BoundField DataField="RO_OWNER" HeaderText="เจ้าของ" />
            <asp:BoundField DataField="RO_CUST1" HeaderText="ลูกหนี้ที่ 1" />
            <asp:BoundField DataField="RO_CUST2" HeaderText="ลูกหนี้ที่ 2" />
            <asp:BoundField DataField="RO_CUST3" HeaderText="ลูกหนี้ที่ 3" />
            <asp:BoundField DataField="RO_CUST4" HeaderText="ลูกหนี้ที่ 4" />
            <asp:BoundField DataField="RO_LEASENO" HeaderText="เลขที่สัญญา" />
            <asp:BoundField DataField="RO_STATUS" HeaderText="สถานะ" />
            <asp:BoundField DataField="RO_RTYPE" HeaderText="ประเภท" />
            <asp:BoundField DataField="RO_REMARK" HeaderText="หมายเหตุ" />
            <asp:BoundField DataField="RO_DATEIN2" HeaderText="วันที่เข้าอยู่" />
            <asp:BoundField DataField="EDIT_DATE" HeaderText="วันที่แก้ไข" DataFormatString="{0:dd/MM/yyyy}" />

            <%--<asp:BoundField DataField="EDIT_TIME" HeaderText="เวลาที่แก้ไข" />--%>
            <asp:BoundField DataField="EDIT_BY" HeaderText="แก้ไขโดย" />

        </Columns>
    </asp:GridView>

  
    <div class="card p-2">

        <div class="d-flex justify-content-between">

            <div class="col-3">
                <div>
                    <asp:Label runat="server">รหัสห้อง</asp:Label>
                    <asp:TextBox ID="txtRO_CODE" runat="server" CssClass="form-control" OnTextChanged="txtRO_CODE_TextChanged"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">อาคาร</asp:Label>
                    <asp:TextBox ID="txtRO_DEPT" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">ชั้น</asp:Label>
                    <asp:TextBox ID="txtRO_FLOOR" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">เลขห้อง</asp:Label>
                    <asp:TextBox ID="txtRO_ROOM" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">บ้านเลขที่</asp:Label>
                    <asp:TextBox ID="txtRO_HOMENO" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-3">
                <div>
                    <asp:Label runat="server">เจ้าของห้อง</asp:Label>
                    <%--<asp:TextBox ID="txtRO_OWNER" runat="server" CssClass="form-control"></asp:TextBox>--%>
                    <asp:DropDownList ID="ddlRO_OWNER" runat="server" CssClass="form-control" AutoPostBack="true">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div>
                    <asp:Label runat="server">ลูกหนี้ที่ 1</asp:Label>
                    <asp:TextBox ID="txtRO_CUST1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">ลูกหนี้ที่ 2</asp:Label>
                    <asp:TextBox ID="txtRO_CUST2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">ลูกหนี้ที่ 3</asp:Label>
                    <asp:TextBox ID="txtRO_CUST3" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">ลูกหนี้ที่ 4</asp:Label>
                    <asp:TextBox ID="txtRO_CUST4" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-3">
                <div>
                    <asp:Label runat="server">พื้นที่</asp:Label>
                    <asp:TextBox ID="txtRO_AREA" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">อัตราส่วนกรรมสิทธิ์</asp:Label>
                    <asp:TextBox ID="txtRO_RATIO" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">สถานะ</asp:Label>
                    <%--<asp:TextBox ID="txtRO_STATUS" runat="server" CssClass="form-control"></asp:TextBox>--%>
                    <asp:DropDownList ID="ddlRO_STATUS" runat="server" CssClass="form-control" AutoPostBack="true">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div>
                    <asp:Label runat="server">ประเภท</asp:Label>
                    <%--<asp:TextBox ID="txtRO_RTYPE" runat="server" CssClass="form-control"></asp:TextBox>--%>
                    <asp:DropDownList ID="ddlRO_RTYPE" runat="server" CssClass="form-control" AutoPostBack="true">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div>
                    <asp:Label runat="server">มิเตอร์น้ำประปา</asp:Label>
                    <asp:TextBox ID="txtRO_MEA" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-3">
                <div>
                    <asp:Label runat="server">วันที่โอน</asp:Label>
                    <asp:TextBox ID="txtRO_DATEIN" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">วันที่เข้าอยู่</asp:Label>
                    <asp:TextBox ID="txtRO_DATEIN2" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">เลขที่สัญญา</asp:Label>
                    <asp:TextBox ID="txtRO_LEASENO" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">หมายเหตุ</asp:Label>
                    <asp:TextBox ID="txtRO_REMARK" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div>
                    <asp:Label runat="server">มิเตอร์ไฟฟ้า</asp:Label>
                    <asp:TextBox ID="txtRO_ELECNO" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>


        </div>

        <div class="row mt-3">

            <div class="col-6">
                <div style="font-size: x-large">
                    <asp:Label ID="lblStatusMode" runat="server" CssClass=""></asp:Label>
                </div>

            </div>
            <div class="col-6 d-flex justify-content-end pe-5">

                <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary"
                    Text="เพิ่ม" Width="100px" OnClick="btnAdd_Click" OnClientClick="SetFocusToTextBox()" />
                <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary ms-1"
                    Text="แก้ไข" Width="100px" OnClick="btnEdit_Click" />
                <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-primary ms-1"
                    Text="ลบ" Width="100px" />
                <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary ms-1 "
                    Text="บันทึก" Width="100px" OnClick="btnSave_Click" />
                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-primary ms-1"
                    Text="ยกเลิก" Width="100px" OnClick="btnCancel_Click" />

                <asp:HiddenField ID="hdfEdit" runat="server" />
            </div>
        </div>
    </div>
    <div class="d-flex justify-content-between">
        <div class="col-6"></div>
        <div class="col-6 d-flex justify-content-between">
            <div>
                <asp:Label runat="server">วันที่แก้ไข :</asp:Label>
                <asp:Label ID="lblEDIT_DATE" runat="server"></asp:Label>
            </div>
            <div class="w-50">
                <asp:Label runat="server">แก้ไขโดย :</asp:Label>
                <asp:Label ID="lblEDIT_BY" runat="server"></asp:Label>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function SelectRow(index, roCode) {
            // แสดงค่าใน TextBox
            document.getElementById('<%= txtRO_CODE.ClientID %>').value = roCode;

        // ดำเนินการ PostBack โดยใช้ GetPostBackEventReference
        <%= Page.ClientScript.GetPostBackEventReference(txtRO_CODE, String.Empty) %>;

            return false;
        }
    </script>

</asp:Content>
