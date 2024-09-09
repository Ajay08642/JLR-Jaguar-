<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Jaguar.ResetPassword" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
    <style>
        /* Style for the body */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

/* Style for the form container */
#form1 {
    width: 80%;
    max-width: 400px; /* Adjust as needed */
    margin: 50px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Style for the h1 heading */
h1 {
    text-align: center;
    color: #333;
}

/* Style for the labels */
label {
    display: block;
    margin-bottom: 5px;
    color: #666;
}

/* Style for the input fields */
input[type="text"],
input[type="password"],
input[type="submit"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 3px;
    box-sizing: border-box;
}

/* Style for the error message */
#lblErrorMsg {
    color: red;
    font-weight: bold;
}

/* Style for the link expired message */
#lblinkexpired {
    color: red;
    font-weight: bold;
}

/* Style for the submit button */
#resetpwdBtn {
    background-color: #1D1D1D;
    color: #fff;
    border: none;
    border-radius: 3px;
    padding: 10px 15px;
    cursor: pointer;
}

/* Style for the submit button on hover */
#resetpwdBtn:hover {
    background-color: #333;
}

/* Style for the placeholders */
::placeholder {
    color: #999;
}

/* Responsive styles */
@media screen and (max-width: 600px) {
    #form1 {
        width: 90%;
    }
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Reset Password</h1><br />
            <div>
                <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label><br />
                <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                <asp:Label ID="lblpass1" runat="server" Text="Password"></asp:Label><br />

                <asp:TextBox ID="password" runat="server" Placeholder="Enter Your Password" TextMode="Password"></asp:TextBox><br />
                <asp:Label ID="lblpass" runat="server" Text="Confirm Password"></asp:Label><br />
                <asp:TextBox ID="Confirm_password" runat="server" Placeholder="Enter Your Confirm Password" TextMode="Password"></asp:TextBox><br />
                <asp:Button ID="resetpwdBtn"  runat="server" Text="Submit" OnClick="resetpwdBtn_Click"/>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="PlaceHolder2" runat="server">
                <asp:Label ID="lblinkexpired" runat="server" Text="Link is Expired"></asp:Label><br />
                </asp:PlaceHolder>
            </div>
        </div>
    </form>
</body>
</html>--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Jaguar.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
    <style>
        /* Style for the body */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        /* Style for the form container */
        #form1 {
            width: 80%;
            max-width: 400px; /* Adjust as needed */
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Style for the h1 heading */
        h1 {
            text-align: center;
            color: #333;
        }

        /* Style for the labels */
        label {
            display: block;
            margin-bottom: 5px;
            color: #666;
        }

        /* Style for the input fields */
        input[type="text"],
        input[type="password"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        /* Style for the error message */
        #lblErrorMsg {
            color: red;
            font-weight: bold;
        }

        /* Style for the link expired message */
        #lblinkexpired {
            color: red;
            font-weight: bold;
        }

        /* Style for the submit button */
        #resetpwdBtn {
            background-color: #1D1D1D;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 10px 15px;
            cursor: pointer;
        }

        /* Style for the submit button on hover */
        #resetpwdBtn:hover {
            background-color: #333;
        }

        /* Style for the placeholders */
        ::placeholder {
            color: #999;
        }

        /* Responsive styles */
        @media screen and (max-width: 600px) {
            #form1 {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Reset Password</h1><br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label><br />
            <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                <label for="password">Password</label><br />
                <asp:TextBox ID="password" runat="server" Placeholder="Enter Your Password" TextMode="Password"></asp:TextBox><br />
                <label for="Confirm_password">Confirm Password</label><br />
                <asp:TextBox ID="Confirm_password" runat="server" Placeholder="Enter Your Confirm Password" TextMode="Password"></asp:TextBox><br />
                <asp:Button ID="resetpwdBtn" runat="server" Text="Submit" OnClick="resetpwdBtn_Click" />
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="PlaceHolder2" runat="server">
                <asp:Label ID="lblinkexpired" runat="server" Text="Link is Expired"></asp:Label><br />
            </asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
