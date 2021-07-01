<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard1.aspx.cs" Inherits="Dashboard1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>Welcome to SMP!</title>
  
</head>
<body>
<form id="form2" runat="server">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Staff Portal</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
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
      <li class="nav-item">
      <asp:HyperLink ID="HyperLink1" class="nav-link" runat="server" NavigateUrl="Default.aspx">Login</asp:HyperLink></li>
                &nbsp;&nbsp;
       <li class="nav-item">
      <asp:LinkButton ID="LinkButton1" class="nav-link" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton>  </li>
      
    </ul>
    
  </div>
</nav>
</form>
<div class="jumbotron">
<asp:Label ID="Label2" class="active display-4" runat="server" Text="Student Management Portal"></asp:Label>
  
  <p class="lead"></p>
  <p class="lead"></p>
  <hr class="my-4">
  <!--<p>For The Quick Link Click on Given Buttons:</p>-->
 
  <!-- Button trigger modal -->
<!--<a href="#" class="btn btn-primary my-4"> <!-- data-toggle="modal" data-target="#exampleModal"> 
  Click Here For Admission Form
</a>
<a href="#" class="btn btn-primary my-4"> <!-- data-toggle="modal" data-target="#exampleModal"> 
  Click Here For Mark Attendance
</a>-->


<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
</div> 
</div>
<div class="container-fluid mt-2 ">
  <div class="row">
    <div class="card col-lg-3 col-6 mx-auto" background-color="green">
      <img src="images/Details.png" class="img-thumbnail mt-2" alt="Responsive image" height="150" width="350">
      <div class="card-body">
        <h5 class="card-title">Admission Form</h5>
        <p class="card-text">Fill The Admission Form For Student</p>
        <a href="AdmissionForm.aspx" class="btn btn-outline-success">Click Here</a>
      </div>
    </div>

     <div class="card col-lg-3 col-6  mx-auto">
      <img src="images/Details.png" class="img-thumbnail mt-2" alt="Responsive image" height="150" width="350">
      <div class="card-body">
        <h5 class="card-title">Admission Details</h5>
        <p class="card-text">See Admission Details</p>
        <a href="admissionstatus.aspx" class="btn btn-outline-success">Click Here</a>
      </div>
    </div>

     <div class="card col-lg-3 col-6  mx-auto">
      <img src="images/Details.png" class="img-thumbnail mt-2" alt="Responsive image" height="150" width="350">
      <div class="card-body">
        <h5 class="card-title">Fee Installment Details</h5>
        <p class="card-text">See Admission Details</p>
        <a href="installmentsecondfloor.aspx" class="btn btn-outline-success">Click Here</a>
      </div>
    </div>
    <div class="card col-lg-3 col-6  mx-auto">
      <img src="images/Details.png" class="img-thumbnail mt-2" alt="Responsive image" height="150" width="350">
      <div class="card-body">
        <h5 class="card-title">Add Details For Attendance</h5>
        <p class="card-text">See Admission Details</p>
        <a href="#" class="btn btn-outline-success">Click Here</a>
      </div>
    </div>
  </div>
  <div class="row my-2 ">
    <div class="card col-lg-3 col-6  mx-auto">
      <img src="images/Details.png" class="img-thumbnail mt-2" alt="Responsive image" height="150" width="350">
      <div class="card-body">
        <h5 class="card-title">Mark Attendance</h5>
        <p class="card-text">See Admission Details</p>
        <a href="MarkattendanceSecondfloor.aspx" class="btn btn-outline-success">Click Here</a>
      </div>
    </div>
    <div class="card col-lg-3 col-6  mx-auto">
      <img src="images/Details.png" class="img-thumbnail mt-2" alt="Responsive image" height="150" width="350">
      <div class="card-body">
        <h5 class="card-title">Check Todays Attendance</h5>
        <p class="card-text">See Admission Details</p>
        <a href="showattendancesecondfloor.aspx" class="btn btn-outline-success">Click Here</a>
      </div>
    </div>

   <div class="card col-lg-3 col-6  mx-auto">
      <img src="images/Details.png" class="img-thumbnail mt-2" alt="Responsive image" height="150" width="350">
      <div class="card-body">
        <h5 class="card-title">Manage Attendance Details</h5>
        <p class="card-text">See Admission Details</p>
        <a href="showrecordSecondfloor.aspx" class="btn btn-outline-success">Click Here</a>
      </div>
    </div>

    <div class="card col-lg-3 col-6  mx-auto">
      <img src="images/Details.png" class="img-thumbnail mt-2" alt="Responsive image" height="150" width="350">
      <div class="card-body">
        <h5 class="card-title">See Monthly Attendance Record</h5>
        <p class="card-text">See Admission Details</p>
        <a href="monthlysecondfloor.aspx" class="btn btn-outline-success">Click Here</a>
      </div>
    </div>

     
  </div>

<!--<footer class="pt-4 my-md-4 pt-md-5 border-top">
    <div class="row">
      <!-- <div class="col-12 col-md">
        <img class="mb-2" src="/docs/4.5/assets/brand/bootstrap-solid.svg" alt="" width="24" height="24">
        <small class="d-block mb-3 text-muted">&copy; 2017-2020</small>
      </div> 
      <div class="col-lg-3 ">
        <h5>Services</h5>
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

          <li><a class="text-muted" href="http://halftech.epizy.com/">Speakwell English Academy Dahisar</a></li>
          <li><a class="text-muted" href="http://vimiratech.epizy.com/">Vimiratech</a></li>
          <li><a class="text-muted" href="tel:8779546242">Contact Us</a></li>
          
          
        </ul>
      </div>
    </div>
  </footer>
</div>

<div class="col-12 col-md">
      
        <small href="http://vimiratech.epizy.com/" class="d-block mb-3 text-muted">&copy;2020 All Rights Reserved | Created By Vimiratech</small>
      </div>-->



   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    
</body>
</html>
