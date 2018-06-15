<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addinguserform.aspx.cs" Inherits="Library.addinguserform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:ScriptManager ID="ScriptManager1" runat="server" />
            </div>
            <div class="row">
                <h1>Add User</h1>
            </div>
            <div>
                <asp:GridView id="Griddata" runat="server" AutoGenerateColumns="true">
                </asp:GridView>
            </div>
            <div class="row">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="Namebox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Namebox" ErrorMessage="Name required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="row">
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="Usernamebox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Usernamebox" ErrorMessage="Username required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="Usernamebox" ErrorMessage="Username already exists." ForeColor="Red"></asp:CustomValidator>
            </div>
            <div class="row">
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="Emailbox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Emailbox" ErrorMessage="Valid Email required." ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="row">
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="Passwordbox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Passwordbox" ErrorMessage="Password can't be empty." ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="">
                <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                <asp:TextBox ID="CPasswordbox" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Passwordbox" ControlToValidate="CPasswordbox" ErrorMessage="Entered Password not same" ForeColor="Red"></asp:CompareValidator>
            </div>
            <div class="row">
                <asp:Button ID="Adduser" runat="server" OnClick="Adduser_Click" Text="Add User" />

                <input id="Reset1" type="reset" value="Reset" /></div>
            
        </div>
        
    </form>
</body>
</html>
