<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Allusers.aspx.cs" Inherits="Library.Allusers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
        </div>

        <div>
            <asp:GridView id="Griddata" runat="server" AutoGenerateColumns="true">
            </asp:GridView>
        </div>
        <div>
        </div>
        <asp:Button ID="adduser" runat="server" OnClick="adduser_Click" Text="AddUser" />
    </form>
</body>
</html>
