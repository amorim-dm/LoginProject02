<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginSystem.aspx.cs" Inherits="LoginProject02.LoginSystem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #txtPassword {
            width: 240px;
            margin-bottom: 0px;
             border-radius: 10px;
             border: black solid 1px;
        }

        #txtUser {
            width: 240px;
            border-radius: 10px;
            border: black solid 1px;
            padding: 2px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box; 
        }

        .auto-style1 {
            width: 250px;
            display: block;
            margin-left: auto;
            margin-right: auto;
            background-color: #ff0055;
            padding: 20px;
            border-radius: 10px;
            font-family: 'Segoe UI';
            box-shadow: 0px 0px 30px 0px rgba(255, 0, 43, 0.8);
            margin: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }

        #Login {
            color: white;
            background-color: crimson;
            border-radius: 10px;
            padding: 5px;
        }

        .label_login {
            color: white;
        }

        .logged {
            color: #15bf59;
            font-weight: bold;
            break-after: avoid;
            break-before: avoid;
        }

        #logado {
            text-decoration: none;  
            margin: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);  
            font-family: 'Segoe UI';
            font-size: 40px;
            text-align: center;
            background-color: #c3d4c7;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 0px 30px 0px rgba(146, 146, 146, 0.8);
        }

        #Log_Out {
            background-color: dimgray;
            border-radius: 10px;
            padding: 5px;
            width: 100%;
            color: white;
            font-size: 24px;
            font-weight: bold;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" id="naoLogado" runat="server">
            <h2 style="text-align:center; color: white;">Login</h2>
            <br />
            <label class="label_login">Usuário:</label><br />
            <asp:TextBox id="txtUser" runat="server"></asp:TextBox><br />
            <br />
            <label class="label_login">Senha:</label><br />
            <asp:TextBox id="txtPassword" runat="server" type="password"></asp:TextBox><br />
            <br />
            <asp:Button ID="Login" runat="server" OnClick="Login_Click" Text="Login" />
            <br />
            <br />
         </div>
            

        <div id="logado" runat="server">
            <p>Seja bem-vindo</p> <asp:Label CssClass="logged" ID="NomeUser" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Log_Out" runat="server" OnClick="LogOut_Click" Text="Log Out" />
        </div>

    </form>
</body>
</html>
