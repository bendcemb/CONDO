<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CD04.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
    <link href="app.css" rel="stylesheet" />

    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Condo Project</h3>
        </div>
    </div>


    <%--file--%>
    <div class="card py-2" style="background-color:#c6efff">
       
            <h5 class="text-center">ทะเบียน</h5>
       
        <div class="card-body">
            <%--row1--%>
            <div class="d-flex justify-content-start">
                <div class="row justify-content-around text-center btn bg-color-Blue">
                    <asp:LinkButton runat="server" ID="lbtRoom" PostBackUrl="~/Room.aspx">
                        <asp:Image runat="server" ID="ImageRoom" ImageUrl="~/img/buildings-fill.svg" AlternateText="Room" Height="60px" Width="180px"
                            CssClass="m-2" />
                    </asp:LinkButton>
                    <br />
                    <label>ROOM</label>
                </div>

                <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
                    <asp:LinkButton runat="server" ID="lbtCustomer" PostBackUrl="~/Customers.aspx">
                        <asp:Image runat="server" ID="ImageCustomer" ImageUrl="~/img/person-vcard.svg" AlternateText="Customer" Height="60px" Width="180px"
                            CssClass="m-2" />
                    </asp:LinkButton>
                    <br />
                    <label>CUSTOMER</label>
                </div>

                <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
                    <asp:LinkButton runat="server" ID="lbtIncome" PostBackUrl="~/Income.aspx">
                        <asp:Image runat="server" ID="imgIncome" ImageUrl="~/img/income-tax-icon.svg" AlternateText="Income" Height="60px" Width="180px"
                            CssClass="m-2" />
                    </asp:LinkButton>
                    <br />
                    <label>INCOME</label>
                </div>

                <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
                    <asp:LinkButton runat="server" ID="LinkButton4" PostBackUrl="~/Customers.aspx">
                        <asp:Image runat="server" ID="Image3" ImageUrl="~/img/three-horizontal-lines-icon.svg" AlternateText="Room" Height="60px" Width="180px"
                            CssClass="m-2" />
                    </asp:LinkButton>
                    <br />
                    <label>Other</label>
                </div>

            </div>
            <%--row2--%>
            <div class="d-flex justify-content-start mt-3">

                <div class="row justify-content-around text-center btn bg-color-Blue">
                    <asp:LinkButton runat="server" ID="LinkButton5" PostBackUrl="~/Room.aspx">
                        <asp:Image runat="server" ID="Image4" ImageUrl="~/img/buildings-fill.svg" AlternateText="Room" Height="60px" Width="180px"
                            CssClass="m-2" />
                    </asp:LinkButton>
                    <br />
                    <label>ROOM</label>
                </div>

                <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
                    <asp:LinkButton runat="server" ID="LinkButton6" PostBackUrl="~/Customers.aspx">
                        <asp:Image runat="server" ID="Image5" ImageUrl="~/img/person-vcard.svg" AlternateText="Room" Height="60px" Width="180px"
                            CssClass="m-2" />
                    </asp:LinkButton>
                    <br />
                    <label>CUSTOMER</label>
                </div>

                <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
                    <asp:LinkButton runat="server" ID="LinkButton7" PostBackUrl="~/Room.aspx">
                        <asp:Image runat="server" ID="Image6" ImageUrl="~/img/income-tax-icon.svg" AlternateText="Room" Height="60px" Width="180px"
                            CssClass="m-2" />
                    </asp:LinkButton>
                    <br />
                    <label>INCOME</label>
                </div>

                <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
                    <asp:LinkButton runat="server" ID="LinkButton8" PostBackUrl="~/Customers.aspx">
                        <asp:Image runat="server" ID="Image7" ImageUrl="~/img/three-horizontal-lines-icon.svg" AlternateText="Room" Height="60px" Width="180px"
                            CssClass="m-2" />
                    </asp:LinkButton>
                    <br />
                    <label>Other</label>
                </div>

            </div>
        </div>
    </div>

    <%--transection--%>
     <div class="card py-2" style="background-color:#dcffe4">
    
         <h5 class="text-center">บันทึก</h5>
    
     <div class="card-body" >
         <%--row1--%>
         <div class="d-flex justify-content-start">
             <div class="row justify-content-around text-center btn bg-color-Blue">
                 <asp:LinkButton runat="server" ID="LinkButton25" PostBackUrl="~/Customers.aspx">
                     <asp:Image runat="server" ID="Image25" ImageUrl="~/img/buildings-fill.svg" AlternateText="Room" Height="60px" Width="180px"
                         CssClass="m-2" />
                 </asp:LinkButton>
                 <br />
                 <label>ROOM</label>
             </div>

             <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
                 <asp:LinkButton runat="server" ID="LinkButton26" PostBackUrl="~/Customers.aspx">
                     <asp:Image runat="server" ID="Image26" ImageUrl="~/img/person-vcard.svg" AlternateText="Room" Height="60px" Width="180px"
                         CssClass="m-2" />
                 </asp:LinkButton>
                 <br />
                 <label>CUSTOMER</label>
             </div>

             <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
                 <asp:LinkButton runat="server" ID="LinkButton27" PostBackUrl="~/Room.aspx">
                     <asp:Image runat="server" ID="Image27" ImageUrl="~/img/income-tax-icon.svg" AlternateText="Room" Height="60px" Width="180px"
                         CssClass="m-2" />
                 </asp:LinkButton>
                 <br />
                 <label>INCOME</label>
             </div>

             <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
                 <asp:LinkButton runat="server" ID="LinkButton28" PostBackUrl="~/Customers.aspx">
                     <asp:Image runat="server" ID="Image28" ImageUrl="~/img/three-horizontal-lines-icon.svg" AlternateText="Room" Height="60px" Width="180px"
                         CssClass="m-2" />
                 </asp:LinkButton>
                 <br />
                 <label>Other</label>
             </div>

         </div>
         <%--row2--%>
         <div class="d-flex justify-content-start mt-3">

             <div class="row justify-content-around text-center btn bg-color-Blue">
                 <asp:LinkButton runat="server" ID="LinkButton29" PostBackUrl="~/Room.aspx">
                     <asp:Image runat="server" ID="Image29" ImageUrl="~/img/buildings-fill.svg" AlternateText="Room" Height="60px" Width="180px"
                         CssClass="m-2" />
                 </asp:LinkButton>
                 <br />
                 <label>ROOM</label>
             </div>

             <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
                 <asp:LinkButton runat="server" ID="LinkButton30" PostBackUrl="~/Customers.aspx">
                     <asp:Image runat="server" ID="Image30" ImageUrl="~/img/person-vcard.svg" AlternateText="Room" Height="60px" Width="180px"
                         CssClass="m-2" />
                 </asp:LinkButton>
                 <br />
                 <label>CUSTOMER</label>
             </div>

             <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
                 <asp:LinkButton runat="server" ID="LinkButton31" PostBackUrl="~/Room.aspx">
                     <asp:Image runat="server" ID="Image31" ImageUrl="~/img/income-tax-icon.svg" AlternateText="Room" Height="60px" Width="180px"
                         CssClass="m-2" />
                 </asp:LinkButton>
                 <br />
                 <label>INCOME</label>
             </div>

             <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
                 <asp:LinkButton runat="server" ID="LinkButton32" PostBackUrl="~/Customers.aspx">
                     <asp:Image runat="server" ID="Image32" ImageUrl="~/img/three-horizontal-lines-icon.svg" AlternateText="Room" Height="60px" Width="180px"
                         CssClass="m-2" />
                 </asp:LinkButton>
                 <br />
                 <label>Other</label>
             </div>

         </div>
     </div>
 </div>

  
    <%--report--%>
    <div class="card py-2" style="background-color:#facbed">
       
            <h5 class="text-center">รายงาน</h5>
       
        <div class="card-body" >
     <%--row1--%>
     <div class="d-flex justify-content-start">
         <div class="row justify-content-around text-center btn bg-color-Blue">
             <asp:LinkButton runat="server" ID="LinkButton9" PostBackUrl="~/Customers.aspx">
                 <asp:Image runat="server" ID="Image8" ImageUrl="~/img/buildings-fill.svg" AlternateText="Room" Height="60px" Width="180px"
                     CssClass="m-2" />
             </asp:LinkButton>
             <br />
             <label>ROOM</label>
         </div>

         <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
             <asp:LinkButton runat="server" ID="LinkButton10" PostBackUrl="~/Customers.aspx">
                 <asp:Image runat="server" ID="Image9" ImageUrl="~/img/person-vcard.svg" AlternateText="Room" Height="60px" Width="180px"
                     CssClass="m-2" />
             </asp:LinkButton>
             <br />
             <label>CUSTOMER</label>
         </div>

         <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
             <asp:LinkButton runat="server" ID="LinkButton11" PostBackUrl="~/Room.aspx">
                 <asp:Image runat="server" ID="Image10" ImageUrl="~/img/income-tax-icon.svg" AlternateText="Room" Height="60px" Width="180px"
                     CssClass="m-2" />
             </asp:LinkButton>
             <br />
             <label>INCOME</label>
         </div>

         <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
             <asp:LinkButton runat="server" ID="LinkButton12" PostBackUrl="~/Customers.aspx">
                 <asp:Image runat="server" ID="Image11" ImageUrl="~/img/three-horizontal-lines-icon.svg" AlternateText="Room" Height="60px" Width="180px"
                     CssClass="m-2" />
             </asp:LinkButton>
             <br />
             <label>Other</label>
         </div>

     </div>
     <%--row2--%>
     <div class="d-flex justify-content-start mt-3">

         <div class="row justify-content-around text-center btn bg-color-Blue">
             <asp:LinkButton runat="server" ID="LinkButton13" PostBackUrl="~/Room.aspx">
                 <asp:Image runat="server" ID="Image12" ImageUrl="~/img/buildings-fill.svg" AlternateText="Room" Height="60px" Width="180px"
                     CssClass="m-2" />
             </asp:LinkButton>
             <br />
             <label>ROOM</label>
         </div>

         <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
             <asp:LinkButton runat="server" ID="LinkButton14" PostBackUrl="~/Customers.aspx">
                 <asp:Image runat="server" ID="Image13" ImageUrl="~/img/person-vcard.svg" AlternateText="Room" Height="60px" Width="180px"
                     CssClass="m-2" />
             </asp:LinkButton>
             <br />
             <label>CUSTOMER</label>
         </div>

         <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
             <asp:LinkButton runat="server" ID="LinkButton15" PostBackUrl="~/Room.aspx">
                 <asp:Image runat="server" ID="Image14" ImageUrl="~/img/income-tax-icon.svg" AlternateText="Room" Height="60px" Width="180px"
                     CssClass="m-2" />
             </asp:LinkButton>
             <br />
             <label>INCOME</label>
         </div>

         <div class="row justify-content-around text-center btn bg-color-Blue ms-5">
             <asp:LinkButton runat="server" ID="LinkButton16" PostBackUrl="~/Customers.aspx">
                 <asp:Image runat="server" ID="Image15" ImageUrl="~/img/three-horizontal-lines-icon.svg" AlternateText="Room" Height="60px" Width="180px"
                     CssClass="m-2" />
             </asp:LinkButton>
             <br />
             <label>Other</label>
         </div>

     </div>
 </div>
    </div>

    <%--ไม่ใช้งาน--%>
    <div class="card d-none">
        <div class="card-header">
            <h3 class="card-title">Application Buttons</h3>
        </div>
        <div class="card-body">
            <p>Add the classes <code>.btn.btn-app</code> to an <code>&lt;a></code> tag to achieve the following:</p>
            <a class="btn btn-app">
                <i class="fas fa-edit"></i>Edit
            </a>
            <a class="btn btn-app">
                <i class="fas fa-play"></i>Play
            </a>
            <a class="btn btn-app">
                <i class="fas fa-pause"></i>Pause
            </a>
            <a class="btn btn-app">
                <i class="fas fa-save"></i>Save
            </a>

        </div>


    </div>
    <%--/ไม่ใช้งาน--%>

    <script src="bJavaScript.js"></script>
</asp:Content>
