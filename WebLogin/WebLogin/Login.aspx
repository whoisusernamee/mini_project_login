<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebLogin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container-fluid p-5 bg-white text-black text-center">
  <h1>Login For Connect Database Dkttc</h1>
  <p>this is a asp.net webapplication(.NETFRAMEWORK)</p> 
</div>
    <form id="form1" runat="server">
    
        <div class="container" >
            <div class="row">
                
                <asp:TextBox ID="txtuser" runat="server" placeholder="Username" CssClass="form-control"></asp:TextBox><br />
            </div>
            <div class="row">
                 <p></p>
                 <asp:TextBox ID="txtpass" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br />
            </div>
            <div class="row">
                <p></p>
                    <asp:Button ID="btnlogin" CssClass="btn btn-secondary btn-block form-control" runat="server" Text="Login" OnClick="btnlogin_Click" />
               </div>
            </div>
            <div class="container">
        <div class ="row text-center">
            <label id="alerts" runat="server"></label>

        </div>
                </div>



        
 </form>
    
    
</body>
</html>
