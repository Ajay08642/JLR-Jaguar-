<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forget.aspx.cs" Inherits="Jaguar.Forget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <style>
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
}

.header {
    background-color: #1D1D1D;
    color: white;
    padding: 20px;
    text-align: center;
}

.container {
    max-width: 600px;
    margin: 20px auto;
    background-color: #fff;
    border-radius: 5px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    margin: 0;
}

.form-container {
    padding: 20px;
}

label {
    font-weight: bold;
}

input[type="text"], input[type="email"], input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    margin-top: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #45a049;
}

.error-msg {
    color: #ff0000;
    font-weight: bold;
    margin-bottom: 15px;
    text-align: center;
}

@media (max-width: 768px) {
    .container {
        margin: 20px 10px;
    }
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
        <h1>Forgot Password</h1>
    </div>
    <div class="container">
        <div class="form-container">
            <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox ID="email" runat="server" Placeholder="Enter Your Email"></asp:TextBox><br /><br />
            <asp:Button ID="forgotpwdbtn" runat="server" Text="Submit" OnClick="forgotpwdbtn_Click"/>
        </div>
    </div>
    </form>
</body>
</html>
