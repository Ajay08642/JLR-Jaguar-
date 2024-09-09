<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Jaguar.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
   
    <style>
        .card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;

}
.card-registration .select-arrow {
top: 13px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="h-50 bg-light">
  <div class="container py-5 h-50">
    <div class="row d-flex justify-content-center align-items-center h-50">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <%--<div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>--%>
            <div class="col-xl-12">
              <div class="card-body p-md-5 text-black">
              <%--  <h3 class="mb-5 text-uppercase">Student registration form</h3>--%>

                  <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <asp:TextBox ID="txtsr" runat="server"></asp:TextBox>
                     <%-- <input type="text" id="form3Example1m" class="form-control form-control-lg" />--%>
                      <label class="form-label" for="form3Example1m">SrNo</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div  class="form-outline">
                        <asp:TextBox ID="txtdeal" runat="server"></asp:TextBox>
                      <%--<input type="text" id="form3Example1n" class="form-control form-control-lg" />--%>
                      <label class="form-label" for="form3Example1n">DealerId</label>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div  class="form-outline">
                        <asp:TextBox ID="txtfirst" runat="server"></asp:TextBox>
<%--                      <input type="text" id="form3Example1m" class="form-control form-control-lg" />--%>
                      <label class="form-label" for="form3Example1m">First name</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div  class="form-outline">
                        <asp:TextBox ID="txtlast" runat="server" ></asp:TextBox>
                   <%--   <input type="text" id="form3Example1n" class="form-control form-control-lg" />--%>
                      <label class="form-label" for="form3Example1n">Last name</label>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div  class="form-outline">
                        <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                      <%--<input type="text" id="form3Example1m1" class="form-control form-control-lg" />--%>
                      <label class="form-label" for="form3Example1m1">Username</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <asp:TextBox ID="txtrole" runat="server"></asp:TextBox>
                     <%-- <input type="text" id="form3Example1n1" class="form-control form-control-lg" />
                  --%>    <label class="form-label" for="form3Example1n1">Role</label>
                    </div>
                  </div>
                </div>
                </div>
                   <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                     <%-- <input type="text" id="form3Example1m1" class="form-control form-control-lg" />
                     --%> <label class="form-label" for="form3Example1m1">Email</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div  class="form-outline">
                        <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                     <%-- <input type="text" id="form3Example1n1" class="form-control form-control-lg" />
                      --%><label class="form-label" for="form3Example1n1">Contact</label>
                    </div>
                  </div>
                </div> <div class="row">
                  <div class="col-md-6 mb-4">
                    <div  class="form-outline">
                        <asp:TextBox ID="txtstatus" runat="server"></asp:TextBox>
                     <%-- <input type="text" id="form3Example1m1" class="form-control form-control-lg" />
                      --%><label class="form-label" for="form3Example1m1">status</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div  class="form-outline">
                        <asp:TextBox ID="txtcreate" runat="server"></asp:TextBox>
                      <%--<input type="text" id="form3Example1n1" class="form-control form-control-lg" />
               --%>       <label class="form-label" for="form3Example1n1">CreatedOn</label>
                    </div>
                  </div>
                </div>
                  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                <div  class="form-outline mb-4">
              

                <div class="d-flex justify-content-end pt-3">
<%--                  <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-light btn-lg">Reset all</button>--%>
<%--                  <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-warning btn-lg ms-2" >Submit form</button>--%>
                    <asp:Button ID="Button1" runat="server"  class="btn btn-warning btn-lg ms-2" Text="Button" OnClick="Button1_Click1" />
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
        </div>
    </form>
</body>
</html>
