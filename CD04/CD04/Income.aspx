<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Income.aspx.cs" Inherits="CD04.Income" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h6>INCOME</h6>
    <div class="card ">
        <%--room row1--%>
        <div class="row m-2">

            <div class="col-sm-2">
                <label class="col-sm">รหัส</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="txtIN_CODE" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">บ้านเลขที่</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="txtRO_HOMENO" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">อาคาร</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="txtRO_DEPT" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">ชั้น</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="txtRO_FLOORS" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">ห้อง</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="txtRO_ROOM" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

        </div>
        <%--room row2--%>
        <div class="row m-2">
            <div class="col-sm-2">
                <label class="col-sm">อัตราส่วน</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="txtRO_RATIO" CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtRO_RATIO"
                        ValidationExpression="\d+(\.\d+)?" ErrorMessage="กรอกเฉพาะตัวเลข" Display="Dynamic" />
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">พื้นที่</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="txtRO_AREA" CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtRO_AREA"
                        ValidationExpression="\d+(\.\d+)?" ErrorMessage="Invalid number format" Display="Dynamic" />
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">ประเภท</label>
                <div class="col-sm">
                    <%--<asp:TextBox runat="server" ID="TextBox4" CssClass="form-control"></asp:TextBox>--%>
                    <asp:DropDownList runat="server" ID="ddlRO_RTYPE" CssClass="form-control">
                        <asp:ListItem>-- เลือกประเภท --</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">สถานะ</label>
                <div class="col-sm">
                    <%--<asp:TextBox runat="server" ID="txtRO_STATUS" CssClass="form-control"></asp:TextBox>--%>
                    <asp:DropDownList runat="server" ID="ddlRO_STATUS" CssClass="form-control">
                        <asp:ListItem Value="">-- เลือกสถานะ --</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="col-sm-2 d-none">
                <label class="col-sm">Area</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="TextBox16" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>

    </div>

    <h6>Customer</h6>
    <div class="card ">

        <%--customer row1--%>
        <div class="row m-2">

            <div class="col-sm-2">
                <label class="col-sm">เจ้าของ</label>
                <div class="col-sm">
                    <asp:DropDownList ID="ddlRO_OWNER" runat="server" CssClass="form-control">
                       <asp:ListItem Text="-- กรุณาเลือก --" Value=""></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">ลูกหนี้ที่ 1</label>
                <div class="col-sm">
                    <asp:DropDownList runat="server" ID="ddlRO_CUST1" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">ลูกหนี้ที่ 2</label>
                <div class="col-sm">
                    <asp:DropDownList runat="server" ID="ddlRO_CUST2" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">ลูกหนี้ที่ 3</label>
                <div class="col-sm">
                    <asp:DropDownList runat="server" ID="ddlRO_CUST3" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">ลูกหนี้ที่ 4</label>
                <div class="col-sm">
                    <asp:DropDownList runat="server" ID="ddlRO_CUST4" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>

        </div>

        <%--customer row2--%>
        <div class="row m-2 d-none">
            <div class="col-sm-2">
                <label class="col-sm">บ้านเลขที่</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="TextBox11" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">ประเภท</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="TextBox12" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">สถานะ</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="TextBox13" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">Area</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="TextBox14" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">Area</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="TextBox22" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>

    <h6>Other...</h6>
    <div class="card ">
        <%--Other row1--%>
        <div class="row m-2">
            <div class="col-sm-2">
                <label class="col-sm">วันที่โอน</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="txtRO_DATEIN" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">วันที่เข้าอยู่</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="txtRO_DATEIN2" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">เลขที่สัญญา</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="txtRO_LEASENO" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-6">
                <label class="col-sm">หมายเหตุ</label>
                <div class="row">
                    <asp:TextBox runat="server" ID="txtRO_REMARK" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

        </div>
        <%--Other row2--%>
        <div class="row m-2 d-none">
            <div class="col-sm-2">
                <label class="col-sm">บ้านเลขที่</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="TextBox29" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">ประเภท</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="TextBox30" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2">
                <label class="col-sm">สถานะ</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="TextBox31" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2 d-none">
                <label class="col-sm">Area</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="TextBox32" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-2 d-none">
                <label class="col-sm">Area</label>
                <div class="col-sm">
                    <asp:TextBox runat="server" ID="TextBox33" CssClass="form-control"></asp:TextBox>
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

    <%--list view--%>
      <asp:ListView runat="server" ID="liv1" DataKeyNames="RO_CODE">
      <LayoutTemplate>

          <table border="1" id="dataTable" runat="server" class="table table-sm">
              <thead>
                  <tr class="bg-black">
                      <th class="text-light">รหัสห้อง</th>
                      <th class="text-light">รหัสเจ้าของ</th>
                      <th class="text-light">บ้านเลขที่</th>
                  </tr>
              </thead>
              <tbody>
                  <tr runat="server" id="itemPlaceholder" />
              </tbody>
          </table>

      </LayoutTemplate>

      <ItemTemplate>
          <tr onclick="selectRow('<%# Eval("RO_CODE") %>',
              '<%# Eval("RO_OWNER") %>',
              '<%# Eval("RO_HOMENO") %>',
              '<%# Eval("PE_NAME") %>',
              this);">

              <td><%# Eval("RO_CODE") %></td>
              <td><%# Eval("RO_OWNER") %></td>
              <td><%# Eval("RO_HOMENO") %></td>
              <td><%# Eval("PE_NAME") %></td>
          </tr>
      </ItemTemplate>
  </asp:ListView>

    <div class=" d-flex justify-content-center m-2">
            <asp:LinkButton runat="server" ID="lkbback" CssClass="btn btn-dark " Text="กลับหน้าหลัก" PostBackUrl="~/Index.aspx">     
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
  <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4z"/>
</svg><b class="ms-3">กลับหน้าหลัก</b>
    </asp:LinkButton>
    </div>
</asp:Content>
