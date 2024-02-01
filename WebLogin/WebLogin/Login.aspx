<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebLogin.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        .auto-style1 {
            width: 500px;
            height: 500px;
            top: 500px;
        }

        .auto-style2 {
            height: 50px;
            width: 500px;
        }

        .auto-style5 {
            width: 500px;
        }
        .auto-style6 {
            width: 10px;
            height: 138px;
            top: 500px;
        }
        .auto-style7 {
            height: 21px;
            width: 500px;
        }
        .auto-style9 {
            width: 500px;
            height: 130px;
        }
        .auto-style10 {
            height: 102px;
            width: 500px;
        }
        .auto-style11 {
            width: 500px;
            height: 103px;
        }
    </style>

    <script>
        function togglePassword() {
            var passwordField = document.getElementById('<%= txtpassword.ClientID %>');
            var checkbox = document.getElementById('<%= CheckBox1.ClientID %>');
            passwordField.type = checkbox.checked ? "text" : "password";
        }
    </script>

</head>
<body>


    <form id="form1" runat="server">
        <script>

</script>
        <div id="headlogin">
            <table class="auto-style6" align="center" >
                <tr>

                </tr>
                </table>
        </div>
        <div id="form_login" class=" justify-content-center">
            <table class=" form-control auto-style1" align="center" style="background-color: #CCFFCC;" border="1">
                <tr>
                    <td colspan="2" align="center" class="auto-style9">
                        <h2>Store Dkttc</h2>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style7"><h6 class="text-center">Login for Connect Database</h6></td>
                    
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style10">
                        <asp:TextBox ID="txtuser" runat="server" placeholder="username" CssClass=" form-control text-center" Width="300px"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style11">
                        <asp:TextBox ID="txtpassword" runat="server" placeholder="password" TextMode="Password" CssClass=" form-control text-center" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style5">
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Show password" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style2">
                        <asp:Button ID="btnlogin" runat="server" CssClass=" form-control btn btn-success" Text="Login" Width="260px" OnClick="btnlogin_Click1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style2">
                        <label id="alerts" runat="server"></label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <script>
        document.getElementById('<%= CheckBox1.ClientID %>').addEventListener('change', togglePassword);
    </script>
</body>
</html>
