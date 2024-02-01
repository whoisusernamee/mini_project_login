<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageshop.aspx.cs" Inherits="WebLogin.pageshop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page Shop</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 2px solid #CC6600;
            background-color: #808000;
        }

        .auto-style4 {
            width: 761px;
        }

       
        .auto-style5 {
            width: 127px;
        }

       
    </style>

</head>
<body>

    <form id="form1" runat="server" class="justify-content-center">

        <table class="auto-style1">
            <tr class="justify-content-center">
                <td align="left" class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="Home" CssClass=" form-control"  Width="123px" />
                </td>
                <td align="center" class="auto-style4">
                    <asp:TextBox ID="txtsearch" runat="server" placeholder="Search....." CssClass=" form-control" Width="784px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnsearch" runat="server" Text="Search" CssClass=" form-control" Width="182px" OnClick="btnsearch_Click" />
                </td>
                <td align="right">
                    <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="btn btn-danger form-control" OnClick="btnlogout_Click" Width="178px" />
                </td>
            </tr>
        </table>
        <asp:DataList ID="DataList1" runat="server" Height="100%" Width="100%" RepeatDirection="Horizontal" RepeatColumns="5" HorizontalAlign="Center">
            <ItemTemplate>
                <div class="product-item">
                    <table align="center">
                        <tr>
                            <td align="center">
                                </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Product") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("img") %>' CssClass="img-thumbnail" Height="150px" Width="150px" /></td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Label ID="lblProductPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CssClass="form-control btn btn-success" Width="120" /></td>
                        </tr>
                    </table>

                    <br />

                    <br />

                    <br />

                </div>
            </ItemTemplate>



        </asp:DataList>
    </form>
</body>
</html>
