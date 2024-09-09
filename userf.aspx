  <%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="userf.aspx.cs" Inherits="Jaguar.ua" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
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

      /*  .auto-style2 {
            position: relative;
            display: flex;
            flex-direction: column;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: .25rem;
            width: 102%;
            margin-top: 0px;
            left: 0px;
            top: 0px;
          
        }*/

        .card-body {
            position: relative;
            width: 103%;
            background-color: #fff;
            box-shadow: 0 0 15px -2px #000000;
             margin-left:-25px;
        }

        body {
            font-family: 'Varela Round', sans-serif;
        }

        .modal-confirm {
            color: #636363;
            width: 100%;
        }

            .modal-confirm .modal-content {
                padding: 20px;
                border-radius: 5px;
                border: none;
                text-align: center;
                font-size: 14px;
               
            }

            .modal-confirm .modal-header {
                border-bottom: none;
                position: relative;
            }

            .modal-confirm h4 {
                text-align: center;
                font-size: 26px;
                margin: 30px 0 -10px;
            }

            .modal-confirm .close {
                position: absolute;
                top: -5px;
                right: -2px;
            }

            .modal-confirm .modal-body {
                color: #999;
            }

            .modal-confirm .modal-footer {
                border: none;
                text-align: center;
                border-radius: 5px;
                font-size: 13px;
                padding: 10px 15px 25px;
            }

                .modal-confirm .modal-footer a {
                    color: #999;
                }

            .modal-confirm .icon-box {
                width: 80px;
                height: 80px;
                margin: 0 auto;
                border-radius: 50%;
                z-index: 9;
                text-align: center;
                border: 3px solid #fbd60a;
            }

                .modal-confirm .icon-box i {
                    color: #f15e5e;
                    font-size: 46px;
                    display: inline-block;
                    margin-top: 13px;
                }

            .modal-confirm .btn, .modal-confirm .btn:active {
                color: #fff;
                border-radius: 4px;
                background: #60c7c1;
                text-decoration: none;
                transition: all 0.4s;
                line-height: normal;
                min-width: 120px;
                border: none;
                min-height: 40px;
                border-radius: 3px;
                margin: 0 5px;
            }

            .modal-confirm .btn-secondary {
                background: #c1c1c1;
            }

                .modal-confirm .btn-secondary:hover, .modal-confirm .btn-secondary:focus {
                    background: #a8a8a8;
                }

      .modal-dialog {
    position: relative;
    width: auto;
    margin: .5rem;
    pointer-events: none;
}
        

            .modal-confirm .btn-danger {
                background: #f15e5e;
            }

                .modal-confirm .btn-danger:hover, .modal-confirm .btn-danger:focus {
                    background: #ee3535;
                }

        .trigger-btn {
            display: inline-block;
            margin: 100px auto;
        }

        .label34 {
            text-align: right;
            margin: 10px;
            font-size: 20px;
            color:dodgerblue
        }
       
        #GridView1
        {
            width:20% !important;
            margin:0 auto;
        }
       
    </style>
    <script type="text/javascript">

        $(function ( ) {

            $("[id*=GridView1]").DataTable(
                {
                    bLengthChange: true,
                    lengthMenu: [[5, 10, -1], [5, 10, "All"]],
                    bFilter: true,
                    bSort: true,
                    bPaginate: true
                });
        });



        //function aj(DealerID) {
        //    var ans = confirm("");
        //    if (ans) {
        //        $.ajax({
        //            url: "new.aspx/kk",
        //            type: "POST",
        //            data: JSON.stringify({ DealerID: DealerID }),
        //            contentType: "application/json;charset=UTF-8",
        //            dataType: "json",
        //            success: function (data) {
        //                alert("Delete successful");
        //                location.reload();
        //            },
        //            error: function (err) {
        //                alert("Error: " + err.responseText);
        //            }
        //        });
        //    }
        //    return false;
        //}
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="d-flex justify-content-between align-items-center">
            <asp:Label ID="Label11" runat="server" Text="USER LIST" CssClass="label34"></asp:Label>
            <button type="button" class="btn btn-success btn-sm">
                <a href="UserAdd.aspx" style="color:snow">+Add User</a>
            </button>

        </div>

        <div class="auto-style2">
            <div class="card-body hight-90">
                
                <asp:GridView ID="GridView1"   runat="server" Width="90%" Height="500px"  ClientIDMode="Static" CssClass="display compact;table table-Responsive table-border" AutoGenerateColumns="False" HorizontalAlign="Center" >
                    <Columns>
                        <asp:TemplateField HeaderText="SrNo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1"  runat="server" Text='<%# Eval("SrNo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1"   runat="server" Text='<%# Eval("SrNo") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server">
                                    <a href="UserUpdate.aspx">
                                    <i class="fa-solid fa-pen-to-square" style="color:black" ></i></a>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DealerID">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtdeal"   runat="server" Text='<%# Eval("DealerID") %>'></asp:TextBox>
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
                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">
                                     <a href="#myModal2" data-toggle="modal">
                                    <i class="fas fa-key" style="font-size:15px;color:green"></i></a>
                                </asp:LinkButton>
                               <%-- <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">
                                 <a href="#myModal" data-toggle="modal">
                                        <i class="fas fa-trash-alt" style="font-size:15px;color:red"></i></a>
                                </asp:LinkButton>--%>
                                <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%# Eval("DealerID") %>' OnClick="LinkButton4_Click">
                                      <%--<a href="#myModal" data-toggle="modal">--%>
                                        <i class="fas fa-trash-alt" style="font-size:15px;color:red"></i> 
                                </asp:LinkButton>
<asp:Label ID="Label12" runat="server"></asp:Label>

                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    
                <div id="myModal" class="modal fade">
                    <div class="modal-dialog modal-confirm">
                        <div class="modal-content">
                            <div class="modal-header flex-column">
                                <div class="icon-box">
                                    <i class="material-icons" style="font-size: 46px; color: red">&#xe872;</i>
                                </div>
                                <h4 class="modal-title w-100">Are you sure?</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <p>Do you really want to delete these records? This process cannot be undone.</p>
                            </div>
                            <div class="modal-footer justify-content-center">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-danger" onclick="aj()"  >Delete</button>
                              
                                <%--<asp:LinkButton ID="LinkButton3" runat="server" class="btn btn-danger" PostBackUrl='<%# String.Format("DeleteDealer.aspx?id={0}", Eval("DealerID")) %>' OnClick="LinkButton2_Click2">Delete</asp:LinkButton>
                         --%>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   

        <div id="myModal2" class="modal fade">
            <div class="modal-dialog modal-confirm">
                <div class="modal-content">
                    <div class="modal-header flex-column">
                        <div class="icon-box">
                            <i class="fas fa-exclamation-triangle" style="font-size: 48px; color: #fbd60a;"></i>
                        </div>
                        <h4 class="modal-title w-100">Are you sure?</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure want to Reset password?</p>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-sucess">Yes</button>
                     <%--   <asp:LinkButton ID="LinkButton5" runat="server"  class="btn btn-danger" PostBackUrl='<%# String.Format("resetDealer.aspx?id={0}", Eval("DealerID")) %>' 
                         
                         k="LinkButton5_Click">Delete</asp:LinkButton>>LinkButton</asp:LinkButton>
                       --%> <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>



        
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>

    <script type="text/javascript">
        function aj(DealerID) {

            var ans = confirm("Are you sure you want to delete this Record?");
            if (ans) {
                $.ajax({
                    url: "new.aspx/Kk",
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
</asp:Content>
