<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Jaguar.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap5.0.1.min.css" rel="stylesheet" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="css/datatables-1.10.25.min.css" />
    <title>Server Side CRUD Ajax Operations</title>
    <style type="text/css">
        .btnAdd {
            text-align: right;
            width: 83%;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="container-fluid">
            <h2 class="text-center">Welcome to Datatable</h2>
            <p class="datatable design text-center">Welcome to Datatable</p>
            <div class="row">
                <div class="container">
                    <div class="btnAdd">
                        <a href="#!" data-id="" data-bs-toggle="modal" data-bs-target="#addUserModal" class="btn btn-success btn-sm">Add User</a>
                    </div>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <asp:GridView ID="GridView" runat="server" CssClass="table" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:TemplateField HeaderText="SrNo">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("SrNo") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("SrNo") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="white" ForeColor="Black">
                                                <i class="fa-solid fa-pen-to-square"></i>
                                            </asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="DealerID">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtdeal" runat="server" Text='<%# Eval("DealerID") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DealerID") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="FirstName">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtfirst" runat="server" Text='<%# Eval("FirstName") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="LastName">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtlast" runat="server" Text='<%# Eval("LastName") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>                                      

                                    <asp:TemplateField HeaderText="Username">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtuser" runat="server" Text='<%# Eval("Username") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Username") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>                     

                                    <asp:TemplateField HeaderText="Role">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtrole" runat="server" Text='<%# Eval("Role") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Role") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Email">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtemail" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="contact">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtcontact" runat="server" Text='<%# Eval("contact") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("contact") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="status">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtstatus" runat="server" Text='<%# Eval("status") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="CreatedOn">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtcreated" runat="server" Text='<%# Eval("CreatedOn") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("CreatedOn") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                    
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton4" Text="Delete" PostBackUrl='<%# String.Format("DeleteDealer.aspx?id={0}",Eval("DealerID")) %>'  runat="server" OnClick="LinkButton4_Click">
                                                
                                            </asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                
                            </asp:GridView>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
   
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>

    <script type="text/javascript">
        function LinkButton5_Click(DealerID) {
            var ans = confirm("Are you sure you want to delete this Record?");
            if (ans) {
                $.ajax({
                    url: "WebForm1.aspx/DeleteRecord",
                    type: "POST",
                    data: JSON.stringify({ DealerID: DealerID }),
                    contentType: "application/json;charset=UTF-8",
                    dataType: "json",
                    success: function (data) {
                        alert("Delete successful");
                        // Reload or refresh the data table here
                        location.reload();
                    },
                    error: function (err) {
                        alert("Error: " + err.responseText);
                    }
                });
            }
            return false;
        }
    </script>
</body>
</html>
