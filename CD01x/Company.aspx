<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="CD01.Company" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Company.css" rel="stylesheet" />

    <div class="d-flex justify-content-center">
        <asp:TextBox runat="server" ID="txtSearch" CssClass="txtsearch-x"></asp:TextBox>
    </div>
    <div class="btnxx">
        <asp:Button runat="server" ID="btnSearch" CssClass="btnSearch" Text="Search" />


        <asp:RadioButtonList runat="server" ID="rbltype" OnSelectedIndexChanged="rbltype_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Text="Condo" Value="C"></asp:ListItem>
            <asp:ListItem Text="Village" Value="V"></asp:ListItem>
        </asp:RadioButtonList>

        <asp:RadioButtonList runat="server" ID="rblzone" OnSelectedIndexChanged="rblzone_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Text="กรุงเทพและปริมณฑล" Value="bkk"></asp:ListItem>
            <asp:ListItem Text="จังหวัดอื่น" Value="other"></asp:ListItem>
        </asp:RadioButtonList>

    </div>

    <div class="d-flex justify-content-around mt-3">
        <section class="border border-1 border-danger p-3" style="width: 50%">
            <div class="gridview-container" style="height: 600px">

                <%--            <asp:GridView runat="server" ID="grv1" AllowPaging="true" PageSize="10" OnPageIndexChanging="grv1_PageIndexChanging" OnSelectedIndexChanging="grv1_SelectedIndexChanging" 
     AlternatingRowStyle-CssClass="table table-striped" CssClass="table table-striped" AutoGenerateSelectButton="true">--%>

                <asp:GridView runat="server" ID="grv1" OnSelectedIndexChanging="grv1_SelectedIndexChanging"
                    AlternatingRowStyle-CssClass="table table-striped" CssClass="table table-striped" AutoGenerateSelectButton="true">
                    <Columns>
                    </Columns>
                </asp:GridView>
            </div>
        </section>
        <section class="border border-1 border-danger p-3" style="width: 50%">
            <asp:Label ID="lblSelectedData" runat="server" Text="Selected Data will appear here." />
        </section>
    </div>
</asp:Content>
