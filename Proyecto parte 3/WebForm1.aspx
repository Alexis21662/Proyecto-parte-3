<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="Proyecto_parte_3.WebForm1" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
            <series>
                <asp:Series Name="Series1" XValueMember="Nombre" YValueMembers="Cantidad">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="SELECT TOP (1000) Clientes.Nombre, Clientes.Apellido, Clientes.CorreoElectronico, Inventario.Cantidad, Inventario.ProductoID
FROM   Clientes CROSS JOIN
             Inventario
GROUP BY Clientes.Nombre, Clientes.Apellido, Clientes.CorreoElectronico, Inventario.Cantidad, Inventario.ProductoID"></asp:SqlDataSource>
    </form>
</body>
</html>
