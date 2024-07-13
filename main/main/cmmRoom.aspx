<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cmmRoom.aspx.cs" Inherits="main.cmmRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>room</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="myscript.css" rel="stylesheet" />
    <script src="js/bootstrap.bundle.js"></script>

</head>
<body>
    <div class="navbar navbar-dark bg-dark">
        <asp:HyperLink runat="server" CssClass="text-light">Home</asp:HyperLink>
    </div>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <nav class="input-group-text">เลขที่อ้างอิง</nav>                
                    <asp:TextBox runat="server" ID="btnsearch" CssClass="form-control"></asp:TextBox>
               
            </div>
        </div>
    </form>
</body>
</html>
