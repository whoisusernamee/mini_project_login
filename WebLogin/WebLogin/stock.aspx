<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stock.aspx.cs" Inherits="WebLogin.shopui" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>Stock</title>
</head>
<body>
    <form id="form1" runat="server">

        <style>
            .form-control {
                max-width: 250px; /* ปรับความยาวตามที่คุณต้องการ */
            }
        </style>

        <div id="head" class="text-center d-flex gap-5">
            <p></p>
            <h3>

                <asp:Label ID="Label1" runat="server" Text="Stock Website"></asp:Label>
            </h3>
            <p></p>
            <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="form-control btn btn-danger" OnClick="btnlogout_Click" Width="77px" />
        </div>


        <div>
            <p></p>
            <div id="insert" class="d-flex gap-2">
                <asp:TextBox ID="txtid" runat="server" CssClass="form-control" placeholder="ID"></asp:TextBox>
                <asp:TextBox ID="txtnameproduct" runat="server" CssClass="form-control" placeholder="Product name"></asp:TextBox>
                <asp:TextBox ID="txtnumber" runat="server" CssClass="form-control" placeholder="Number"></asp:TextBox>
                <asp:TextBox ID="txtprice" runat="server" CssClass="form-control" placeholder="price"></asp:TextBox>
                <asp:TextBox ID="txtimg" runat="server" CssClass="form-control" placeholder="link img"></asp:TextBox>
                <asp:Button ID="btninsert" runat="server" CssClass="btn btn-success form-control" Text="insert" OnClick="btninsert_Click" />
            </div>
            <p></p>
            <asp:GridView ID="GridViewStock" runat="server" AutoGenerateColumns="False" Height="100%" Width="100%" CellPadding="4" GridLines="None" ForeColor="#333333" OnSelectedIndexChanged="GridViewStock_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="Product" HeaderText="Product" SortExpression="Product" />
                    <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:ImageField DataImageUrlField="img" HeaderText="Image" SortExpression="img" ControlStyle-Height="50" ControlStyle-Width="50">
                        <ControlStyle Height="50px" Width="50px"></ControlStyle>
                    </asp:ImageField>
                    <asp:CommandField ShowSelectButton="True" />

                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <p></p>

        </div>
        <div id="update" class="d-flex gap-2">
            <asp:TextBox ID="txtidupdate" CssClass="form-control" runat="server" placeholder="Select ID"></asp:TextBox>
            <asp:TextBox ID="txtproductupdate" CssClass="form-control" runat="server" placeholder="Product To Update"></asp:TextBox>
            <asp:TextBox ID="txtnumberupdate" CssClass="form-control" runat="server" placeholder="Number To Update"></asp:TextBox>
            <asp:TextBox ID="txtpriceupdate" CssClass="form-control" runat="server" placeholder="Price To Update"></asp:TextBox>
            <asp:TextBox ID="txtimgupdate" CssClass="form-control" runat="server" placeholder="img To Update"></asp:TextBox>
            <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-primary form-control" Text="Update" OnClick="btnupdate_Click" />

        </div>
        <p></p>
        <div id="delete" class="d-flex gap-2">

            <asp:TextBox ID="txtdelete" runat="server" CssClass="form-control" placeholder="ID to Delete" Width="265px"></asp:TextBox>
            <asp:Button ID="btndelete" runat="server" CssClass="btn btn-danger" Text="Delete" OnClick="btndelete_Click" />
        </div>
    </form>
</body>
</html>
