<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="databaseConnect.aspx.cs" Inherits="WebLogin.databaseConnect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Database Connect</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>

    <form id="form1" runat="server" class="container mt-5">
        <div class="row text-center">
            <div class="col">
                <h1>Data Table</h1>
                <asp:Label ID="lblDatabaseResult" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col">
                <asp:Button ID="btnShowData" runat="server" Text="Show Team Table" OnClick="btnShowData_Click" CssClass="btn btn-primary" />
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-md-4">
                <asp:TextBox ID="txtId" runat="server" placeholder="ID" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtFname" runat="server" placeholder="First Name" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtLname" runat="server" placeholder="Last Name" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-md-4">
                <asp:Button ID="btnInsertData" runat="server" Text="Insert" OnClick="btnInsertData_Click" CssClass="btn btn-success" />
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtDeleteId" runat="server" placeholder="ID to Delete" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <asp:Button ID="btnDeleteData" runat="server" Text="Delete" OnClick="btnDeleteData_Click" CssClass="btn btn-danger" />
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
