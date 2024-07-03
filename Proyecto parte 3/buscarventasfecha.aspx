<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="buscarventasfecha.aspx.vb" Inherits="Proyecto_parte_3.buscarventasfecha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
		<asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1" Height="19px" Width="88px" AutoGenerateColumns="False" DataKeyNames="ClienteID">
            <Columns>
                <asp:BoundField DataField="ClienteID" HeaderText="ClienteID" InsertVisible="False" ReadOnly="True" SortExpression="ClienteID" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="CorreoElectronico" HeaderText="CorreoElectronico" SortExpression="CorreoElectronico" />
            </Columns>
		</asp:GridView>
		    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="InsertarCliente" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox3" Name="Nombre" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox4" Name="Apellido" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox5" Name="CorreoElectronico" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
		<p>
			Nombre
			<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
		</p>
		<p>
			Numero<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
		</p>
		<p>
			CorreoElectronico<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
		</p>
		<p>
			<asp:Button ID="Button1" runat="server" Text="Button" Width="192px" />
		</p>
            <p>
			    <asp:Button ID="Button2" runat="server" Text="Menu" Width="196px" />
		</p>
        </div>
    </form>
</body>
</html>
