<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="Library.Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"/>
    <script src="jquery-3.3.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="bg-light">
            <div class="container">
                
                <div class="py-5 text-center">
                    <h1>Login Page</h1>
                </div>
                <div class="row">
                    <div class="jumbotron">
                        <div class="row">
                            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                            <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                        </div>
                        <div class="row">
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                        </div>
                        <div class="row">
                            <asp:Button ID="Login" runat="server" Text="Login" OnClick="Login_Click" />
                            <input id="Reset1" type="reset" value="Reset" />
                        </div>
                        <div class="row">
                            <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" />
                            <asp:Button ID="Forgot" runat="server" Text="Forget Password" OnClick="Forgot_Click" />
                        </div>
                        
                    </div>
                </div>
                    

                </div>
                
            </div>

        </div>
        
     </form>
</body>
</html>
