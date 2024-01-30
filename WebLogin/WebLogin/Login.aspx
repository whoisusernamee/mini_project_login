<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebLogin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function togglePassword() {
            var passwordField = document.getElementById('<%= txtpass.ClientID %>');
            var checkbox = document.getElementById('<%= CheckBox1.ClientID %>');
            passwordField.type = checkbox.checked ? "text" : "password";
        }
    </script>

</head>
<body>
    <style>
        .form-control {
            max-width: 100%;
        }
    </style>
    <div class="container-fluid p-5 bg-white text-black text-center">
        <h1>Login For Connect Database Dkttc</h1>
        <p>this is a asp.net webapplication(.NETFRAMEWORK)</p>
    </div>
    <form id="form1" runat="server">

        <div id="formlogin">

            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <asp:TextBox ID="txtuser" runat="server" placeholder="Username" CssClass="form-control text-center"></asp:TextBox><br />
                        <asp:TextBox ID="txtpass" CssClass="form-control text-center" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Show password" OnCheckedChanged="CheckBox1_CheckedChanged" aria-label="Show password" />
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <br />
                        <asp:Button ID="btnlogin" CssClass="btn btn-secondary form-control" runat="server" Text="Login" OnClick="btnlogin_Click" />
                    </div>
                </div>

                <label id="alerts" runat="server"></label>
            </div>
        </div>
    </form>
    <script>
        document.getElementById('<%= CheckBox1.ClientID %>').addEventListener('change', togglePassword);
    </script>
</body>
</html>
