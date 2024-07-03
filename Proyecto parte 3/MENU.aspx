<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MENU.aspx.vb" Inherits="Proyecto_parte_3.MENU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 39px;
        }
        .auto-style3 {
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Algerian; font-size: larger; font-weight: normal; background-color: #C0C0C0; color: #000080; text-transform: capitalize;">
        <div>
            TIENDA DE ROPA ALEXGOM<br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="InsertarCliente" Width="299px" BackColor="#CC33FF" BorderColor="#660066" ForeColor="Black" />
                    </td>
                    <td>
                        <asp:Button ID="Button16" runat="server" BackColor="#66FF33" Text="AgregarProducto" Width="375px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="ActualizarDescripcionProducto" Width="299px" BackColor="#9900FF" BorderColor="#9900CC" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="RegistrarVenta" Width="378px" BackColor="#669900" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button7" runat="server" Text="RegistrarDevolucion" Width="299px" BackColor="#FF33CC" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button4" runat="server" Text="ObtenerInventarioProducto" Width="376px" BackColor="#CC0000" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="Button9" runat="server" Text="EliminarProductoInventario" Width="299px" BackColor="#6600CC" />
                    </td>
                    <td>
                        <asp:Button ID="Button6" runat="server" Text="BuscarClientexCorreo" Width="381px" BackColor="#FF9933" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button11" runat="server" Text="ObtenerProductoMasVendido" Width="299px" BackColor="#9900FF" />
                    </td>
                    <td>
                        <asp:Button ID="Button8" runat="server" Text="ObtenerEmpleadoMasVenta" Width="377px" CssClass="auto-style3" BackColor="#9900FF" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button13" runat="server" Text="BuscarProductoxDescripcion" Width="299px" BackColor="#9900FF" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button10" runat="server" Text="CalcularVentaPorCliente" Width="380px" BackColor="#66CCFF" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="Button15" runat="server" Text="Obtener Producto Mas Caro" Width="299px" BackColor="#CC00FF" />
                    </td>
                    <td>
                        <asp:Button ID="Button12" runat="server" Text="AsignarEmpleadoVenta" Width="383px" BackColor="#66CCFF" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button14" runat="server" Text="Producto Mas Vendido Por Año" Width="386px" BackColor="#FF9933" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
