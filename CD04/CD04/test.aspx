<%@ Page Title="TEST" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="CD04.test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card">
        <div class="d-flex justify-content-between">
            <asp:TextBox runat="server" ID="txtSelectedID" ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
            <asp:TextBox runat="server" ID="txtSelectedName" ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
            <asp:TextBox runat="server" ID="txtSelectedAge" ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
        </div>

    </div>

    <asp:ListView runat="server" ID="lvExample" DataKeyNames="RO_CODE">
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
            <tr onclick="selectRow('<%# Eval("RO_CODE") %>','<%# Eval("RO_OWNER") %>','<%# Eval("RO_HOMENO") %>', this);">
                <td><%# Eval("RO_CODE") %></td>
                <td><%# Eval("RO_OWNER") %></td>
                <td><%# Eval("RO_HOMENO") %></td>
            </tr>
        </ItemTemplate>
    </asp:ListView>
  

    <%--เลือกแถวในตารางไปแสดงใน textbox , เปลี่ยนสีของแถวที่เลือก--%>
    <script type="text/javascript">
        function selectRow(RO_CODE, RO_OWNER, RO_HOMENO, row) {
            // รีเซ็ตสีทุกแถว
            var rows = document.getElementsByTagName('tr');
            for (var i = 0; i < rows.length; i++) {
                rows[i].style.backgroundColor = ''; //รีเซ็ตสีของพื้นหลัง
                rows[i].style.color = ''; // รีเซ็ตสีของข้อความ
            }
            
            // นำข้อมูลไปแสดงใน TextBox           
            document.getElementById('<%= txtSelectedID.ClientID %>').value = RO_CODE;
            document.getElementById('<%= txtSelectedName.ClientID %>').value = RO_OWNER;
            document.getElementById('<%= txtSelectedAge.ClientID %>').value = RO_HOMENO;

            row.style.backgroundColor = 'cornflowerblue';
            row.style.color = 'White';
        }
    </script>


</asp:Content>
