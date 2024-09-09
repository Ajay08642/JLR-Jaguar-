<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regadd.aspx.cs" Inherits="Jaguar.Regadd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title> +Add User</title>
 <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
   
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>

<style type="text/css">
        .img {
            width: 70px;
            height: 70px;
            border-radius: 70%;
            border: 2px solid #808080;
        }
        .card-background {
            position: relative;
            width: 70%;
            background-color: #ffffff;
            box-shadow: 0 0 15px -2px #000000;
            margin: 20px auto;
            padding: 20px;
        }
        .container {
            padding-bottom: 4px;
        }

        .custom-select {
  min-width: 350px;
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
  min-height: 100vh;
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
</head>
<body>
       <form id="Form1" runat="server" class="container">
           <h4 style="padding-left:170px;margin-top:10px">Add User</h4>
    <div class="card-background">
        <div class="form-row align-items-center">
        <div class="input-group mb-3; col-md-10">
         <img src="img/profile.png" class="img" alt="Profile Icon"  />
            <label for="FileUpload1" class="input-group-text bg-secondary text-white" style="height:40px;text-align:center;margin:auto">Upload Profile Image</label>
        <input type="file" id="FileUpload1" class="form-control-sm visually-hidden" aria-describedby="inputGroupFileAddon01" onchange="updateFileName(this)" />
        <span class=" text-secondary" id="fileNameDisplay" style="height:40px;margin:auto;padding-right:15rem;align-content:center" >No File Chosen</span>
    </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputuser"><b>Username*</b></label>
                <asp:TextBox ID="txtuser" runat="server" CssClass="form-control"  placeholder="Enter User Name"  ></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <label for="inputemail"><b>EmailID*</b></label>
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Enter Email ID" required="" ></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputAddress"><b>First Name*</b></label>
                <asp:TextBox ID="txtfirst" runat="server" placeholder="Enter First Name" CssClass="form-control"></asp:TextBox>
            </div>
           
                <div class="form-group col-md-6">
                    <label for="inputuUser Role"><b>User Role</b></label>
                    <%--<select class="custom-select">
   <option value="" selected="selected" disabled="disabled">select Role</option>
                            
    <option value="">LAB-ADMIN</option>
    <option value="">ADMIN</option>
    <option value="">MGR</option>
    <option value="">OPTR</option>
    <option value="">LAB-MGR</option>
    <option value="">CLIENT</option>
                    </select>--%>
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
                <asp:TextBox ID="txtlast" runat="server" placeholder="Enter Last Name" CssClass="form-control"></asp:TextBox>
            </div>
           
                <div class="form-group col-md-6">
                    <label for="inputuUser Role"><b>Status</b></label>
                    <%--<select class="custom-select">
   <option value="" selected="selected" disabled="disabled"> Select Status</option>
                            
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
         <div class="form-row" >
            <div class="form-group col-md-6" >
                <label for="inputAddress"><b>Phone No.*</b></label>
                <asp:TextBox ID="txtphone" runat="server"  placeholder="Enter Phone Number" CssClass="form-control" MaxLength="10"></asp:TextBox>
            </div>
             
                <div class="form-group col-md-6">
                    <label for="inputuUser Role"><b>App Access</b></label>
                    <select class="custom-select">
   <option value="" selected="selected" disabled="disabled"> Select App Access</option>
                            
    <option value="">Yes</option>
    <option value="">No</option>
   
                    </select>
                </div>
         
           </div> <div style="text-align:center"> 
             
           <asp:LinkButton runat="server" OnClick="Button1_Click1" class="btn btn-outline-success btn-rounded" Text="<i class='fa fa-user'></i>Register" ></asp:LinkButton>       
     
                   
       
            
              </div></div>

          
    
</form>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </body>
</html>

