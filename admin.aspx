<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Jaguar.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Registration</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="inner_div">
            <table>
                <tr>
                    <th colspan="3"><h1>Admin Registration</h1></th>
                </tr>
                <tr>
                    <td>Username:</td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Enter Username" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtusername"></asp:RequiredFieldValidator></td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:RegularExpressionValidator runat="server" ErrorMessage="*Enter Email ID" ForeColor="Red" Display="Static" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtmail"></asp:RegularExpressionValidator></td>
                    <td><asp:TextBox ID="txtmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td><asp:RequiredFieldValidator runat="server" ErrorMessage="*Enter First Name" ForeColor="Red" Display="Static" SetFocusOnError="true" ControlToValidate="txtfname"></asp:RequiredFieldValidator></td>
                    <td>
                        <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>   
                    </td> 
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><asp:RequiredFieldValidator runat="server" ErrorMessage="*Enter Last Name" ForeColor="Red" Display="Static" SetFocusOnError="true" ControlToValidate="txtlname"></asp:RequiredFieldValidator></td>
                    <td><asp:TextBox ID="txtlname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Phone No:</td>
                    <td><asp:RequiredFieldValidator runat="server" ErrorMessage="*Enter Phone No" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtphone"></asp:RequiredFieldValidator></td>
                    <td><asp:TextBox ID="txtphone" runat="server"></asp:TextBox></td>
                </tr>
            
                

                <tr>
                    <td>App Role:</td>
                    <td><asp:RequiredFieldValidator runat="server" ErrorMessage="*Role" SetFocusOnError="true" ForeColor="Red" ControlToValidate="ddlAppRole"></asp:RequiredFieldValidator></td>
                    <td>
                        <asp:DropDownList ID="ddlAppRole" runat="server" OnSelectedIndexChanged="ddlAppRole_SelectedIndexChanged">
                            <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                            <asp:ListItem Text="Dealer" Value="Dealer"></asp:ListItem>
                            <asp:ListItem Text="User" Value="User"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Status:</td>
                    <td><asp:RequiredFieldValidator runat="server" ErrorMessage="*Status" SetFocusOnError="true" ForeColor="Red" ControlToValidate="ddlStatus"></asp:RequiredFieldValidator></td>
                    <td>
                        <asp:DropDownList ID="ddlStatus" runat="server">
                            <asp:ListItem Text="Active" Value="Active"></asp:ListItem>
                            <asp:ListItem Text="Inactive" Value="Inactive"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Enter Password" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Re-Enter Password:</td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Enter Re-Enter Password" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtrepass"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" ErrorMessage="*Password Not A Match" ForeColor="Red" Display="Dynamic" ControlToValidate="txtrepass" ControlToCompare="txtpassword" SetFocusOnError="true"></asp:CompareValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtrepass" runat="server" TextMode="Password" CausesValidation="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td style="padding-left:75px;">
                        <asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Jaguar.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Registration</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="inner_div">
            <table>
                <tr>
                    <th colspan="3"><h1>Admin Registration</h1></th>
                </tr>
                <tr>
                    <td>Username:</td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Enter Username" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtusername"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:RegularExpressionValidator runat="server" ErrorMessage="*Enter a valid Email ID" ForeColor="Red" Display="Static" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtmail"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Enter First Name" ForeColor="Red" Display="Static" SetFocusOnError="true" ControlToValidate="txtfname"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>   
                    </td> 
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Enter Last Name" ForeColor="Red" Display="Static" SetFocusOnError="true" ControlToValidate="txtlname"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Phone No:</td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Enter Phone No" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtphone"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>App Role:</td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Select Role" SetFocusOnError="true" ForeColor="Red" ControlToValidate="ddlAppRole"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlAppRole" runat="server">
                            <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                            <asp:ListItem Text="Dealer" Value="Dealer"></asp:ListItem>
                            <asp:ListItem Text="User" Value="User"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Status:</td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Select Status" SetFocusOnError="true" ForeColor="Red" ControlToValidate="ddlStatus"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlStatus" runat="server">
                            <asp:ListItem Text="Active" Value="Active"></asp:ListItem>
                            <asp:ListItem Text="Inactive" Value="Inactive"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Enter Password" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Re-Enter Password:</td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Re-enter Password" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtrepass"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" ErrorMessage="*Passwords do not match" ForeColor="Red" Display="Dynamic" ControlToValidate="txtrepass" ControlToCompare="txtpassword" SetFocusOnError="true"></asp:CompareValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtrepass" runat="server" TextMode="Password" CausesValidation="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td style="padding-left:75px;">
                        <asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
