<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stock.aspx.cs" Inherits="WebLogin.shopui" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridViewStock" runat="server" AutoGenerateColumns="False" Height="143px" Width="597px">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="Product" HeaderText="Product" SortExpression="Product" />
                    <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:ImageField DataImageUrlField="img" HeaderText="Image" SortExpression="img" ControlStyle-Height="50" ControlStyle-Width="50" />
                </Columns>
            </asp:GridView>
        </div>
        <div>
            
        </div>
    </form>
</body>
</html>