<%@ Page Title="เจ้าของ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="CD04.Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h5 class=" text-center">Customers in my hand</h5>

    <h6>ทะเบียนเจ้าของ Customer</h6>
    <div class="card ">
        <%--room row1--%>
        <div class="row m-2">

            <div class="col-sm-2">
                <label class="col-sm">รหัสชื่อ</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="txtPE_CODE" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-1">
                <label class="col-sm">คำนำหน้า</label>
                <div class="row">
                    <asp:DropDownList runat="server" ID="ddlPE_TITLE" CssClass="form-control">
                        <asp:ListItem Text="--" Value=""></asp:ListItem>
                        <asp:ListItem Text="นาย" Value="นาย"></asp:ListItem>
                        <asp:ListItem Text="นาง" Value="นาง"></asp:ListItem>
                        <asp:ListItem Text="นางสาว" Value="นางสาว"></asp:ListItem>
                        <asp:ListItem Text="ดช." Value="ดช."></asp:ListItem>
                        <asp:ListItem Text="ดญ." Value="ดญ."></asp:ListItem>
                        <asp:ListItem Text="คุณ" Value="คุณ"></asp:ListItem>
                        <asp:ListItem Text="นาย" Value="นาย"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="col-sm-9">
                <label class="col-sm">ชื่อ</label>
                <div class="row">
                    <asp:TextBox runat="server" ID="txtPE_NAME" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>
        <%--room row2--%>
        <div class="row ms-3 m-2">
            <div class="col-sm-8">
                <label class="col-sm">ที่อยู่</label>
                <div class="row col-sm">
                    <asp:TextBox runat="server" ID="txtPE_ADDRESS1" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-3 ms-auto">
                <label class="col-sm">เบอร์โทรศัพท์</label>
                <div class="row">
                    <asp:TextBox runat="server" ID="txtPE_TELA" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                </div>
            </div>

        </div>
    </div>



    <%--button--%>
    <div class="d-flex justify-content-end py-3">
        <div class="row col-6">
            <asp:Button runat="server" ID="Button1" CssClass="btn btn-primary col-2 ms-1 m-lg-auto" Text="add" />
            <asp:Button runat="server" ID="Button2" CssClass="btn btn-primary col-2 ms-1 m-lg-auto" Text="edite" />
            <asp:Button runat="server" ID="Button3" CssClass="btn btn-primary col-2 ms-1 m-lg-auto" Text="delete" />
            <asp:Button runat="server" ID="Button4" CssClass="btn btn-primary col-2 ms-1 m-lg-auto" Text="save" />
            <asp:Button runat="server" ID="Button5" CssClass="btn btn-primary col-2 ms-1 m-lg-auto" Text="cancel" />
        </div>

    </div>

    <%--gridview--%>
    <div class="card">
        <asp:GridView runat="server" ID="grv1" ShowHeaderWhenEmpty="true" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="a" DataField="a" />
                <asp:BoundField HeaderText="b" DataField="b" />
            </Columns>

            <%--แสดงตารางที่ไม่มีข้อมูล--%>
            <EmptyDataTemplate>
                <table class="table table-bordered">
                    <thead class="bg-primary text-white">
                        <tr>
                            <th>รหัสห้อง</th>
                            <th>เจ้าของห้อง</th>
                        </tr>
                    </thead>
                    <tr>
                        <td colspan="5">No data available</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <%-- /แสดงตารางที่ไม่มีข้อมูล--%>
        </asp:GridView>

        <asp:ListView runat="server" ID="liv1" DataKeyNames="PE_CODE">
            <LayoutTemplate>
                <table runat="server" id="dataTable">
                    <thead>
                        <tr>
                            <th>r</th>
                            <th>n</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder"></tr>
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr onclick="selectRow('<%# Eval("PE_CODE") %>',
                                       '<%# Eval("PE_TITLE") %>',
                                       '<%# Eval("PE_NAME") %>',
                                       '<%# Eval("ADDRESSA") %>',
                                       this);">

                    <td><%# Eval("PE_CODE") %></td>
                    <td><%# Eval("PE_TITLE") %></td>
                    <td><%# Eval("PE_NAME") %></td>
                    <td><%# Eval("ADDRESSA") %></td>
      <%--PE_CODE
      PE_TITLE
      PE_NAME
      PE_ETITLE
      PE_ENAME     
      PE_ADDR1B
      PE_ADDR2B
      PE_ADDR3B
      PE_TELB
      PE_TELA
      PE_CARDID
      PE_CARDAT
      PE_CARDDAT
      PE_CARDDUE
      PE_MAILTO
      PE_LANG
      PE_BIRTH
      PE_AGE
      PE_TYPE
      PE_TOTAL
      PE_COMPANY
      PE_CNAME1
      PE_CNAME2
      PE_KEY1
      PE_KEY2
      PE_COMNAME
      PE_MOBILE
      PE_REMARK
      PE_GROUP
      PE_NATION
      PE_GNAT
      PE_GNATION
      PE_ARVDATE
      PE_VISA
      PE_ENTRY
      PE_TMNO
      PE_OCCUP
      PE_REFMAN
      PE_ADDR1C
      PE_ADDR2C
      PE_ADDR3C
      PE_NAMEC
      PE_AR_NAME
      PE_RC_NAME
      EDIT_DATE
      EDIT_TIME
      EDIT_BY
      PE_ACNO
      PE_AMOUNT
      PE_ROOM
      PE_DISC1
      PE_DISC1D
      PE_DISC1A
      PE_DISC1T
      PE_DISC2
      PE_DISC21
      PE_DISC22
      PE_DISC21F
      PE_DISC22F
      PE_TAX0
      PE_EMAIL
      PE_DBNO--%>
                </tr>
            </ItemTemplate>
        </asp:ListView>

            <div class=" d-flex justify-content-center m-2">
            <asp:LinkButton runat="server" ID="lkbback" CssClass="btn btn-dark " Text="กลับหน้าหลัก" PostBackUrl="~/Index.aspx">     
      <%--  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
  <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4z"/>
</svg>--%>
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
  <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"/>
  <path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293z"/>
</svg>
    <b class="ms-3">กลับหน้าหลัก</b>
    </asp:LinkButton>
    </div>

    </div>

    <script type="text/javascript">
        function selectRow(PE_CODE, ddlPE_TITLE, PE_NAME, ADDRESSA, row) {
            // รีเซ็ตสีทุกแถว
            var rows = document.getElementsByTagName('tr');
            for (var i = 0; i < rows.length; i++) {
                rows[i].style.backgroundColor = ''; //รีเซ็ตสีของพื้นหลัง
                rows[i].style.color = ''; // รีเซ็ตสีของข้อความ
            }

            // นำข้อมูลไปแสดงใน TextBox           
            document.getElementById('<%= txtPE_CODE.ClientID %>').value = PE_CODE;
            document.getElementById('<%= ddlPE_TITLE.ClientID %>').value = ddlPE_TITLE;
            document.getElementById('<%= txtPE_NAME.ClientID %>').value = PE_NAME;
            document.getElementById('<%= txtPE_ADDRESS1.ClientID %>').value = ADDRESSA

            row.style.backgroundColor = 'cornflowerblue';
            row.style.color = 'White';
        }
    </script>
</asp:Content>
