<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CD01.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>log in อิอิ</title>

    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow: hidden;
        }

        .background {
            width: 100vw;
            height: 100vh;
            background: url('../img/bg-light-blue.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        .content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }
    </style>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="content" id="loginform">

            <div class="card bg-light">
                <div class="card-body">

                    <asp:Label runat="server" ID="lblMessage" class="text-danger"></asp:Label>
                    <div class="mb-3">
                        <label for="txtemail" class="form-label">E-mail</label>
                        <asp:TextBox runat="server" ID="txtemail" CssClass="form-control" TextMode="Email" placeholder="Enter your e-mail"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="txtpassword" class="form-label">Password</label>
                        <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
                    </div>
                    <div class="d-grid">
                        <asp:Button runat="server" ID="btnLogin" Text="Log in" CssClass="btn btn-primary btn-block" OnClick="btnLogin_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>

  

</body>
</html>
