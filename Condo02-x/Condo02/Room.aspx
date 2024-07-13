<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="Condo02.Room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="bStyleSheet1.css" rel="stylesheet" />

    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-8 col-md-6 col-lg-4">
                <div class="card">
                    <div class="card-header">
                        <ul class="nav nav-tabs card-header-tabs" id="bologna-list" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" href="#description" role="tab" aria-controls="description" aria-selected="true">Room</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#history" role="tab" aria-controls="history" aria-selected="false">Customer</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#deals" role="tab" aria-controls="deals" aria-selected="false">Change</a>
                            </li>
                        </ul>
                    </div>
                    <div class="card-body">
                        <%--<h4 class="card-title">หมายเลขห้อง</h4>
                        <h6 class="card-subtitle mb-2">room</h6>--%>

                        <div class="tab-content mt-3">
                            <div class="tab-pane active" id="description" role="tabpanel">
                                <asp:Label runat="server">ห้อง</asp:Label>
                                <asp:TextBox ID="txtRoom" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:Label runat="server">อาคาร</asp:Label>
                                <asp:TextBox ID="txtBuilding" runat="server" CssClass="form-control"></asp:TextBox>
                                <a href="#" class="card-link text-danger">Read more</a>
                            </div>

                            <div class="tab-pane" id="history" role="tabpanel" aria-labelledby="history-tab">
                                เจ้าของ
                                <asp:TextBox ID="txtCustId" runat="server"></asp:TextBox>
                                ชื่อ
                                <asp:TextBox ID="txtCustName" runat="server"></asp:TextBox>
                                <a href="#" class="card-link text-danger">Read more</a>
                            </div>

                            <div class="tab-pane" id="deals" role="tabpanel" aria-labelledby="deals-tab">
                                <p class="card-text">Immerse yourself in the colours, aromas and traditions of Emilia-Romagna with a holiday in Bologna, and discover the city's rich artistic heritage.</p>
                                <a href="#" class="btn btn-danger btn-sm">Get Deals</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="bJavaScript.js"></script>
</asp:Content>
