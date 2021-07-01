<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>SMP</title>
  </head>
  <body>
 <form id="form2" runat="server" >
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Student Managemet Portal</a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <!--<a class="nav-link" href="http://matrixcomputereducation.com">Home <span class="sr-only">(current)</span></a>
      </li>
      <!-- li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Services
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li> -->
       <li class="nav-item">
        <a class="nav-link " href="tel:7798106613" tabindex="-1" aria-disabled="true">Contact us</a>
      </li>
    </ul>
  
  </div>
</nav>
<div class="jumbotron">
  <h1 class="display-4">Student Management Portal</h1>
  
  <hr class="my-4">
  
<!-- <button href="http://mahresult.nic.in/" type="button" class="btn btn-primary my-4 " > data-toggle="modal" data-target="#exampleModal">
  Click Here For HSC Result
</button> -->
<!-- Modal -->
<!-- <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div> -->
</div> 


<div class="container-fluid mt-2 ">
  <div class="row">
    <div class="card col-lg-3 col-6  mx-auto" >
      <img src="images/staff3.jpg" class="img-thumbnail mt-2" alt="Responsive image">

<div class="card-body">
       
        <div>
   <a  class="btn btn-outline-success" data-toggle="modal"  data-target="#exampleModal">Staff Login</a>
       
  
        <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" align="middle" id="exampleModalLabel">Control Panel Login</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <!--<img src="images/m33.jpg" class="img-fluid mx-auto d-block" alt="Responsive image" 
        height="200px" width="200px" align="middle" >-->

    <div class="container" .col-4>
    <div class="form-group">
    <label for="exampleInputEmail1">Username</label>
    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
    <small id="emailHelp" class="form-text text-muted">We'll never share your Username and Password with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <asp:TextBox ID="TextBox2" class="form-control" runat="server" 
          TextMode="Password"></asp:TextBox>
  </div>
  <div class="form-group form-check">
    
   
  </div>
  
  <asp:Button ID="Button1" runat="server" Text="Log In" class="btn btn-primary"  onclick="Button1_Click" Width="100%" />
  
  </div>
    

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      
      </div>
    </div>
  </div>
</div>
        </div>
        
      </div>
    </div>

     

    </div>




 </div>
<footer class="pt-4 my-md-4 pt-md-5 border-top">
    <div class="row">
      <!-- <div class="col-12 col-md">
        <img class="mb-2" src="/docs/4.5/assets/brand/bootstrap-solid.svg" alt="" width="24" height="24">
        <small class="d-block mb-3 text-muted">&copy; 2017-2020</small>
      </div> -->
      <div class="col-lg-3 ">
       <!-- <h5>Services</h5>
        <ul class="list-unstyled text-small">
          
          <li><a class="text-muted" href="http://halftech.epizy.com/">Computer Courses</a></li>
          <li><a class="text-muted" href="http://halftech.epizy.com/">English Speaking</a></li>
          <li><a class="text-muted" href="http://vimiratech.epizy.com/">To Create Website</a></li>
          
          
        </ul>
      </div>
     
      <div class="col-lg-3 ">
        <h5>Quick Links</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="http://halftech.epizy.com/" >Matrix Computer Education </a></li>

          <li><a class="text-muted" href="http://halftech.epizy.com/">Speakwell English Academy</a></li>
          <li><a class="text-muted" href="http://vimiratech.epizy.com/">Vimiratech - Website Development Company</a></li>
          <li><a class="text-muted" href="tel:8779546242">Contact Us</a></li>
          
          
        </ul>
      </div>
    </div>
  </footer>
</div>

<div class="col-12 col-md">
      
        <small href="http://vimiratech.epizy.com/" class="d-block mb-3 text-muted">&copy;2020|Created By Vimiratech</small>
      </div>



   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>




 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
     ConnectionString="<%$ ConnectionStrings:ManagementDb %>" 
     SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>




</form>
  </body>
</html>