<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ActualizarPrecio.aspx.vb" Inherits="Proyecto_parte_3.ActualizarPrecio" %>

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
                <asp:BoundField DataField="CantidadVentas" HeaderText="CantidadVentas" ReadOnly="True" SortExpression="CantidadVentas" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="ActualizarPrecio" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Nombre" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="Precio" PropertyName="Text" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Nombre&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        NuevoPrecio&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" Width="336px" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Menu" Width="336px" />
        <div>
        </div>
    </form>
</body>
</html>
