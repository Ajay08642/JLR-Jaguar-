<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminmanagement.aspx.cs" Inherits="Jaguar.Adminmanagement" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin page JLR</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
   
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>

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

        .height-100 {
            height: 100vh;
        }

        .card-background {
            position: relative;
            width: 100%;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 0 15px -2px #000000;
            text-align: center;
            margin-bottom: 20px;
           
            
        }
       .datatable{
            position:absolute;
            width:90%;
            padding-left:25rem;
            top:3vh;
           
       }
     
        .switch {
         position: relative;
         display: inline-block;
         width: 60px;
         height: 34px;
        }

        .switch input {
         opacity: 0;
         width: 0;
         height: 0;
        }

       .slider {
         position: absolute;
         cursor: pointer;
         top: 0;
          left: 0;
         right: 0;
         bottom: 0;
         background-color:#a80e0e;
         transition: .4s;
         border-radius: 34px;
       }

        .slider:before {
          position: absolute;
          content: "";
          height: 26px;
          width: 26px;
          left: 4px;
          bottom: 4px;
          background-color:white;
          transition: .4s;
          border-radius: 50%;

        }

        input:checked + .slider {
        background-color: #086815;
        }

         input:checked + .slider:before {
         transform: translateX(26px);
         }

        .label{
         text-align:right;
         margin:20px;
        
        
        }

</style>
<script type="text/javascript">
       

        $(document).ready(function () {
            $('li').click(function () {
                $('li.list-group-item.active').removeClass("active");
                $(this).addClass("active");
            });
        }); 

    
     
</script>
</head>
<body>
<form id="form1" runat="server">
     <%--<div style="padding-left:60rem; text-align:center">
       <asp:Label ID="Label1" runat="server" Text="Role Management" CssClass="label"></asp:Label>
       <button type="button" class="btn btn-sm btn-success m-2" data-bs-toggle="modal" data-bs-target="#exampleModal">+Add Role</button>
      </div>--%>
   <div class="d-flex justify-content-between align-items-center">
  <asp:Label ID="Label2" runat="server" Text="Role Management" CssClass="label" Font-Size="Medium" ></asp:Label>
 <button type="button" class="btn btn-sm btn-success m-2" data-bs-toggle="modal" data-bs-target="#exampleModal">+Add Role</button>
</div>

  <!-- Modal Add Role-->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" >Add Role</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
     <div class="input-group">
   <span class="input-group-text">Title:</span>
  <asp:TextBox ID="TextBox1" runat="server" aria-label="Title:" CssClass="form-control"></asp:TextBox>
  </div>

  <div class="input-group mb-3">
  <label class="input-group-text" for="inputGroupSelect01">Use settings from:</label>
  <select class="form-select" id="inputGroupSelect01">
    <option selected="">....Choose Permissions....</option>
    <option value="1">Set "Users List" Permissions</option>
    <option value="2">Set " List" Permissions</option>
    <option value="3">Set " List" Permissions </option>
  </select>
</div>
</div>  
 <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save</button>
      </div>
    </div>
  </div>
</div>
<div class="card-background height-100">
<div class="container">
<div class="row">
<div class="col-4">
<ul class="list-group">
  <li class="list-group-item active" aria-current="true"> <i class="fas fa-user-cog"></i>Super Admin
  <i class="fas fa-edit float-right" data-bs-toggle="modal" data-bs-target="#exampleModal_"></i>
  </li>
  <li class="list-group-item"> <i class="fas fa-user-cog"></i> Admin
  <i class="fas fa-edit float-right" data-bs-toggle="modal" data-bs-target="#exampleModal__"></i>
</li>
  <li class="list-group-item"> <i class="fas fa-user-cog"></i> MGR
 <i class="fas fa-edit float-right" data-bs-toggle="modal" data-bs-target="#exampleModal___"></i>
</li>
</ul>
</div>
<div class="col-8">
<table class="table table-bordered">
    <thead>
      <tr style="background-color:navy;text-align:center; color:white">
        <th>Set "Users List" Permissions</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody style="text-align:center">
      <tr>
        <td>Can Add Users</td>
        <td>
          <label class="switch">
          <input id="CanAddUsers" type="checkbox"  runat="server" />
          <span class="slider round"></span>
         </label>

        </td>
      </tr>
      <tr>
        <td>Can Edit Users</td>
        <td>
          <label class="switch">
              <input id="CanEditUsers" type="checkbox"  runat="server" />

            <span class="slider round"></span>
          </label>
        </td>
      </tr>
      <tr>
        <td>Can Delete Users</td>
        <td>
          <label class="switch">
               <input id="CanDeleteUsers" type="checkbox"  runat="server" />
            <span class="slider round"></span>
          </label>
        </td>
      </tr>
      <tr>
        <td>Can Reset Users Password</td>
        <td>
          <label class="switch">
         <input id="CanResetUsersPassword" type="checkbox"  runat="server" />

            <span class="slider round"></span>
          </label>
        </td>
      </tr>
    </tbody>
  </table>
  <asp:Button ID="btnsave" runat="server" Text="save" OnClick="btnsave_Click" CssClass=" btn btn-sm btn-success m-2" Style="text-align:center"/>
<!-- Modal list group super admin -->
<div class="modal fade" id="exampleModal_" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel_">Change Name</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="input-group">
   <span class="input-group-text">Role Name:</span>
  <asp:TextBox ID="TextBox2" runat="server" aria-label="Role Name:" Text="Super Admin" CssClass="form-control"></asp:TextBox>
  </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>

      </div>
    </div>
  </div>
</div>
    <!---- modal list group admin--->
    <div class="modal fade" id="exampleModal__" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel__">Change Name</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="input-group">
   <span class="input-group-text">Role Name:</span>
  <asp:TextBox ID="TextBox3" runat="server" aria-label="Role Name:" Text=" Admin" CssClass="form-control"></asp:TextBox>
  </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
     <!---- modal list group MGR--->

    <div class="modal fade" id="exampleModal___" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel___">Change Name</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="input-group">
   <span class="input-group-text">Role Name:</span>
  <asp:TextBox ID="TextBox4" runat="server" aria-label="Role Name:" Text="MGR" CssClass="form-control"></asp:TextBox>
  </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

</div>
</div>
</div>
</div>
<footer class="main-footer" style="margin-left:0px !important; font-size:medium">
<strong>Copyright &copy;2024 <a href="#">JLR</a></strong>
All Rights Reserved.
</footer>
</form>
</body>
</html>





  
