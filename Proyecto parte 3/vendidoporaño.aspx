<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="vendidoporaño.aspx.vb" Inherits="Proyecto_parte_3.vendidoporaño" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="CantidadVentas" HeaderText="CantidadVentas" ReadOnly="True" SortExpression="CantidadVentas" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="ObtenerProductoMasVendidoPorAnio" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Anio" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        AÑO&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" Width="267px" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Menu" Width="267px" />
    </form>
</body>
</html>
