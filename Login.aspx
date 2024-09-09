<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Jaguar.Login" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
           
             
        }

        .login-container {
            background-color: transparent;
            padding: 20px;
            border-radius: 5px;
            width: 350px; /* Adjust the width as needed */
            max-width: 400px; /* Maximum width for larger screens */
            opacity:0.9;
            transition: 0.1s ease;
        }

        h2 {
            text-align: center;
        }

        .input-group {
            margin-bottom: 20px;
            color:blue;
        }

        .input-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            padding-left: 0px;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align:center;
        }

        .btn-container {
            text-align: center;
            margin-top: 10px; /* Add margin to separate buttons from input fields */
        }

        .btn {
            width: 45%; /* Adjust button width */
            padding: 10px;
            background-color: rgb(29,29,29);
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: dimgrey;
        }

        .login-result {
            margin-top: 10px;
            text-align: center;
            color: red;
        }
        img
        {
          height:100vh;
          width:100%;
        
  position: absolute;
  left: 0px;
  top: 0px;
  z-index: -1;
opacity:0.5;

        }
        
       
       

        /* Responsive Styles */
        @media only screen and (max-width: 600px) {
            .login-container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <div class="abc">
       
        <img src="img/CAR.jpg" />
    <form id="form1" runat="server">
          
        <div class="login-container">
            <h2 style="color:blue">Login</h2>
            <div class="input-group">
               
                <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
            </div>
            <div class="input-group">
               
                
              <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
            </div>
            <div class="btn-container">
                <asp:Button ID="loginButton" runat="server" Text="Login" CssClass="btn" OnClick="loginButton_Click" />
                <asp:Button ID="forgotButton" runat="server" Text="Forgot" CssClass="btn" OnClick="forgotButton_Click" />
            </div>
        </div>
    </form>
        </div>
</body>
</html>