<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageshop.aspx.cs" Inherits="WebLogin.pageshop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page Shop</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .img-thumbnail {
            max-width: 100px;
            max-height: 100px;
            width: auto;
            height: auto;
        }

        .product-info {
            text-align: center;
            margin-bottom: 20px;
        }

        .product-item {
            width: 23%; /* ให้แสดงเป็น 4 สินค้าต่อแถว */
            margin-right: 1%; /* ระยะห่างระหว่างสินค้า */
            display: inline-block;
            vertical-align: top; /* จัดสินค้าให้อยู่ชิดบนสุด */
        }

        @media (max-width: 768px) {
            .product-item {
                width: 48%; /* ให้แสดงเป็น 2 สินค้าต่อแถว เมื่อหน้าจอเล็กกว่า 768px */
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Shop</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Contact</a>
                            </li>
                            <li class="nav-item">
                                <asp:TextBox ID="txtsearch" runat="server" CssClass="form-control" placeholder="Search......."></asp:TextBox>
                            </li>
                            <li class="nav-item">
                                <asp:Button ID="btn_search" runat="server" Text="Search" CssClass="form-control" />
                            </li>
                            <li class="nav-item">
                                <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="form-control btn btn-danger" OnClick="btnlogout_Click" Width="77px" />
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <asp:GridView ID="GridViewStock" runat="server" AutoGenerateColumns="False" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Width="100%">
                <Columns>
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <div class="product-info product-item">
                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("img") %>' CssClass="img-thumbnail" Height="100px" Width="100px" />
                                <br />
                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Product") %>'></asp:Label>
                                <br />
                                <asp:Label ID="lblProductPrice" runat="server" Text='<%# Eval("Price", "{0:C}") %>'></asp:Label>
                                <br />
                                <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CssClass=" form-control btn btn-primary" Width="120" />
                            </div>
                        </ItemTemplate>
                        <ItemStyle CssClass="product-item" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ยพน"></asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
