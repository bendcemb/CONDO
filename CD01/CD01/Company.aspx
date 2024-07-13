<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="CD01.Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row form-control">
        <b>บริษัท / นิติบุคคลฯ</b>
        <div class="input-group">
            <asp:TextBox ID="txtSearch" runat="server" />
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        </div>

        <div class="row m-2">
              <%-- <asp:DropDownList runat="server" ID="ddlCompany"></asp:DropDownList>--%>
  <asp:ListBox runat="server" ID="lbxCompany" CssClass="form-control"></asp:ListBox>
  <%-- <asp:DataList runat="server" ID="dtlCompany"></asp:DataList>--%>
  <%-- <asp:BulletedList runat="server" ID="bllCompany"></asp:BulletedList>--%>
  <%-- <asp:ListView ID="lsvCompany" runat="server"></asp:ListView>--%>
        </div>
      
    </div>


    <hr />

    <div class="d-flex col-12">

        <div class="form-group col-6 m-1">
            <div class="card border border-primary p-2">
                ห้อง
           
            <asp:GridView runat="server" ID="grvRoom" AutoGenerateColumns="false" CssClass="table table-striped table-responsive" AllowPaging="true" PageSize="10" OnPageIndexChanging="grvRoom_PageIndexChanging">
                <Columns>
                    <%--<asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="lblNoData" runat="server" Text="ไม่มีข้อมูล" Visible='<%# grvRoom.Rows.Count == 0 %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>--%>

                    <asp:BoundField DataField="RO_CODE" HeaderText="รหัสห้อง" />
                    <asp:BoundField DataField="" HeaderText="a" />
                    <asp:BoundField DataField="" HeaderText="a" />
                    <asp:BoundField DataField="" HeaderText="a" />

                </Columns>
            </asp:GridView>

                <div class="card-body">
                    <div class="input-group">
                        <asp:TextBox runat="server" ID="txtAddRoom" CssClass="form-control" PlaceHolder="กรอกเลขห้อง"></asp:TextBox>
                        <asp:Button runat="server" Text="addRoom" CssClass="btn btn-primary" />
                    </div>
                </div>

            </div>
        </div>



        <div class="form-group col-6 m-1">
            <div class="card border border-warning  p-2">
                เจ้าของ

            <asp:Button runat="server" Text="addOwner" CssClass="btn btn-primary" />

            </div>
        </div>

    </div>

</asp:Content>
