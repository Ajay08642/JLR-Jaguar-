﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="UserUpdate.aspx.cs" Inherits="Jaguar.UserUpdate" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .img {
            width: 70px;
            height: 70px;
            border-radius: 70%;
            border: 2px solid #808080;
        }

        .card-background {
            position: relative;
            width: 120%;
            background-color: #ffffff;
            box-shadow: 0 0 15px -2px #000000;
            margin: 20px auto;
            padding: 20px;
        }

        .container {
            padding-bottom: 4px;
        }

        .custom-select {
            min-width: 100%;
            position: relative;
        }

        select {
            appearance: none;
            /*  safari  */
            -webkit-appearance: none;
            /*  other styles for aesthetics */
            width: 100%;
            font-size: 1.15rem;
            padding: 0.675em 6em 0.675em 1em;
            background-color: #fff;
            border: 1px solid #caced1;
            border-radius: 0.25rem;
            color: #000;
            cursor: pointer;
        }

        .custom-select::before,
        .custom-select::after {
            --size: 0.3rem;
            content: "";
            position: absolute;
            right: 1rem;
            pointer-events: none;
        }

        .custom-select::before {
            border-left: var(--size) solid transparent;
            border-right: var(--size) solid transparent;
            border-bottom: var(--size) solid black;
            top: 40%;
        }

        .custom-select::after {
            border-left: var(--size) solid transparent;
            border-right: var(--size) solid transparent;
            border-top: var(--size) solid black;
            top: 55%;
        }


        /*=============
Aesthetics 
=========================*/

        * {
            box-sizing: border-box;
        }

        body {
            min-height: 100px;
            display: grid;
            place-items: center;
        }
    </style>
    <script type="text/javascript">
        function updateFileName(input) {
            var fileName = input.files.length > 0 ? input.files[0].name : "No File Chosen";
            document.getElementById('fileNameDisplay').textContent = fileName;
        }
       
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h4 style="padding-left: 10px; margin-top: 10px">Edit User</h4>
        <div class="card-background">
            <div class="form-row align-items-center">
                <div class="input-group mb-3; col-md-10">
                    <img src="img/profile.png" class="img" alt="Profile Icon" />
                   <label for="FileUpload1" class="input-group-text bg-secondary text-white" style="height:40px;text-align:center;margin:auto">Upload Profile Image</label>
        <input type="file" id="FileUpload1" class="form-control-sm visually-hidden" aria-describedby="inputGroupFileAddon01" onchange="updateFileName(this)" />
        <span class=" text-secondary" id="fileNameDisplay" style="height:40px;margin:auto;padding-right:20rem;align-content:center" >No File Chosen</span>
  </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputuser"><b>Username*</b></label>
                    <asp:TextBox ID="txtuser" runat="server" CssClass="form-control" disabled=""></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="inputemail"><b>EmailID*</b></label>
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="" disabled=""></asp:TextBox>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputAddress"><b>First Name*</b></label>
                    <asp:TextBox ID="txtfirst" runat="server" placeholder="" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="form-group col-md-6">
                    <label for="inputuUser Role"><b>User Role</b></label>
                     <asp:DropDownList ID="DropDownList1" runat="server" CssClass="custom-select">
                       <asp:ListItem Selected="True" disabled="">select Role  </asp:ListItem>
                        <asp:ListItem>LAB-ADMIN</asp:ListItem>
                         <asp:ListItem>ADMIN</asp:ListItem>
                         <asp:ListItem>MGR</asp:ListItem>
                         <asp:ListItem>OPTR</asp:ListItem>
                         <asp:ListItem>LAB-MGR</asp:ListItem>
                         <asp:ListItem>CLIENT</asp:ListItem>
        </asp:DropDownList>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputAddress"><b>Last Name*</b></label>
                    <asp:TextBox ID="txtlast" runat="server" placeholder="" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="form-group col-md-6">
                    <label for="inputuUser Role"><b>Status</b></label>
                    <%--<select class="custom-select">
                        <option value="" selected="selected" disabled="disabled">Select Status</option>

                        <option value="">Active</option>
                        <option value="">Diasabled</option>

                    </select>--%>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="custom-select">

                        <asp:ListItem Selected="True" disabled="">Select Status</asp:ListItem>
                         <asp:ListItem>Active</asp:ListItem>
                         <asp:ListItem>Disabled</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputAddress"><b>Phone No.*</b></label>
                    <asp:TextBox ID="txtphone" runat="server" placeholder="1234" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="form-group col-md-6">
                    <label for="inputuUser Role"><b>App Access</b></label>
                    
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="custom-select">
                        <asp:ListItem Selected="True" disabled="">Select App Access</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </div>

            </div>
            <div style="text-align: center">


                <asp:LinkButton runat="server" OnClick="Unnamed_Click" class="btn btn-outline-success btn-rounded" Text="<i class='fa fa-check'></i>Update"></asp:LinkButton>

            </div>
        </div>
        </div>
</asp:Content>
