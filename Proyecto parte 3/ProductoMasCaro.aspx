<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ProductoMasCaro.aspx.vb" Inherits="Proyecto_parte_3.ProductoMasCaro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="ObtenerProductoMasCaro" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br />
        Nombre&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Precio&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" Width="290px" />
        <br />
        <div>
            <asp:Button ID="Button2" runat="server" Text="MENU" Width="290px" />
        </div>
    </form>
</body>
</html>
