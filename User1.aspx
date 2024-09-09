<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Jaguar.User" %>

<%--<!DOCTYPE html>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Page Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" />
  
     <script type="text/javascript" src="https://cdn.datatables.net/2.0.8/js/dataTables.min.js"></script>
    <link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="js/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
    <script src="js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/dt-1.10.25datatables.min.js"></script>


    <style type="text/css">
        

        *, ::before, ::after {
            box-sizing: border-box;
        }

        body {
            position: relative;
            margin: var(--header-height) 0 0 0;
            padding: 0 1rem;
            font-family: var(--body-font);
            font-size: var(--normal-font-size);
            transition: .5s;
        }

        a {
            text-decoration: none;
        }
        .show {
            left: 0;
        }
        a {
            margin-left: 0px;
            text-align: center;
            color: white;
        }
     
        .auto-style2 {
            position: relative;
            display: flex;
            flex-direction: column;
           
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: .25rem;
            width: 100%;
            margin-top: 0px;
            left: 0px;
            top: 0px;
        }
        .card-body {
            position: relative;
            width: 100%;
            background-color: #fff;
            box-shadow: 0 0 15px -2px #000000;
        }
      
   

   
   

  

  
  
    </style>
    <script type="text/javascript">
        $(function () {
            $("[id*=GridView1]").DataTable(
                {
                    bLengthChange: true,
                    lengthMenu: [[5, 10,25,50,100,-1], [5, 10,25,50,100,"All"]],
                    bFilter: true,
                    bSort: true,
                    bPaginate: true
                });
        });
      
        function LinkButton5_Click(DealerID) {
            var ans = confirm("Are you sure you want to delete this Record?");
            if (ans) {
                $.ajax({
                    url: "User.aspx/LinkButton5_Click",
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
</head>
<body>--%>
<%--<form id="form1" runat="server">
        
        <div style="padding-left:65rem; text-align:center">--%>
         <%--<button type="button" class="btn btn-success btn btn-sm m-2" >--%>
        <%--  <a href="Register.aspx">+Add User</a>
        </div>
<div class="auto-style2">
<div class="card-body hight-100">
<asp:GridView ID="GridView1" ClientIDMode="Static" runat="server" CssClass="display compact;
table table-Responsive table-border" AutoGenerateColumns="False" 
HorizontalAlign="Center" OnRowDeleting="GridView1_RowDeleting" style="margin-top: 0px" >
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
<asp:LinkButton ID="LinkButton1" runat="server" BackColor="white" ForeColor="Black"><i class="fa-solid fa-pen-to-square">
</i></asp:LinkButton>
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
                           
    <asp:BoundField DataField="Username" HeaderText=" Username" />
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
                        
                         
                          <asp:LinkButton ID="LinkButton3" runat="server">
                              <i class="fas fa-key" style="font-size:15px;color:green"></i>
                          </asp:LinkButton>
                               <asp:LinkButton ID="LinkButton2" PostBackUrl='<%# String.Format("DeleteDealer.aspx?id={0}",Eval("DealerID")) %>'  runat="server" OnClick="LinkButton2_Click">>
                           <i class="fas fa-trash-alt" style="font-size:15px;color:red"></i>
                           </asp:LinkButton>
                          </ItemTemplate>
                          </asp:TemplateField>
                           
                        </Columns>    
                    </asp:GridView>
</div>
</div>                                
<footer class="main-footer" style="margin-left: 0px !important; font-size: medium">
 <strong>Copyright&copy;2024<a href="#">JLR</a></strong>
All Rights Reserved.           
</footer>
</form>
    

</body>
</html>--%>




<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Page Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>

<%--    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />

    --%>

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
    <style type="text/css">
        *, ::before, ::after {
            box-sizing: border-box;
        }
        body {
            position: relative;
            margin: var(--header-height) 0 0 0;
            padding: 0 1rem;
            font-family: var(--body-font);
            font-size: var(--normal-font-size);
            transition: .5s;
        }
        a {
            text-decoration: none;
        }
        .show {
            left: 0;
        }
        a {
            margin-left: 0px;
            text-align: center;
            color: white;
        }
        .auto-style2 {
            position: relative;
            display: flex;
            flex-direction: column;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: .25rem;
            width: 100%;
            margin-top: 0px;
            left: 0px;
            top: 0px;
        }
        .card-body {
            position: relative;
            width: 100%;
            background-color: #fff;
            box-shadow: 0 0 15px -2px #000000;
        }
    </style>
 <%--  <script type="text/javascript">
    
       $(function () {
         
           $("[id*=GridView1]").DataTable(
               {
                   bLengthChange: true,
                   lengthMenu: [[5, 10, -1], [5, 10, "All"]],
                   bFilter: true,
                   bSort: true,
                   bPaginate: true
               });
       });
  
       

        function LinkButton5_Click(DealerID) {
            var ans = confirm("Are you sure you want to delete this Record?");
            if (ans) {
                $.ajax({
                    url: "User.aspx/LinkButton5_Click",
                    type: "POST",
                    data: JSON.stringify({ DealerID: DealerID }),
                    contentType: "application/json;charset=UTF-8",
                    dataType: "json",
                    success: function (data) {
                        alert("Delete successful");
                        location.reload();
                    },
                    error: function (err) {
                        alert("Error: " + err.responseText);
                    }
                });
            }
            return false;
        }
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding-left:65rem; text-align:center">
            <a href="Register.aspx">+Add User</a>
        </div>
        <div class="auto-style2">
            <div class="card-body hight-100">
                <asp:GridView ID="GridView1" ClientIDMode="Static" runat="server" CssClass="display compact table table-responsive table-border" AutoGenerateColumns="False" HorizontalAlign="Center" OnRowDeleting="GridView1_RowDeleting" style="margin-top: 0px">
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
                        <asp:TemplateField HeaderText="Contact">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtcontact" runat="server" Text='<%# Eval("Contact") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Contact") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtstatus" runat="server" Text='<%# Eval("Status") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
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
                                <asp:LinkButton ID="LinkButton3" runat="server">
                                    <i class="fas fa-key" style="font-size:15px;color:green"></i>
                                </asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" PostBackUrl='<%# String.Format("DeleteDealer.aspx?id={0}", Eval("DealerID")) %>' runat="server" OnClick="LinkButton2_Click">
                                    <i class="fas fa-trash-alt" style="font-size:15px;color:red"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <footer class="main-footer" style="margin-left: 0px !important; font-size: medium">
            <strong>Copyright &copy; 2024 <a href="#">JLR</a></strong>
            All Rights Reserved.
        </footer>
    </form>
</body>
</html>



