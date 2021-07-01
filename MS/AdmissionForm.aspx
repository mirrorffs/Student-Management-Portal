<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdmissionForm.aspx.cs" Inherits="AdmissionForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>Control Panel</title>
  <style>
  .btn {
    margin-bottom: 10px;
   
}
.img-fluid {
    height: 84px;
    width: 313px;
}
  </style>
</head>
<body>
    <!--<img src="images/m33.jpg" class="img-fluid mx-auto d-block" alt="Responsive image" 
        height="200px" width="200px" align="middle" >--><h2 style="text-align:center">Admission Form </h2>
         <!--<h6 style="text-align:center">Branch : Second Floor</h6>-->
         <hr>
    <form id="form1" runat="server" >
    <div class="container" .col-4>
    <div class="form-row">
     <div class="form-group col-md-6 col-sm-6 ">

                    <label for="inputEmail6">Student Name</label>
                    <asp:TextBox ID="studentname" runat="server" class="form-control"></asp:TextBox>

                </div>
  <div class="form-group col-md-6">
                    <label for="inputPassword4">Date of Joining</label>
                    <asp:TextBox ID="dateofjoining" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                </div>
                 </div>
   <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputEmail4">Course Name</label>
                    <asp:TextBox ID="coursename" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="inputPassword4">Contact No</label>
                    <asp:TextBox ID="contactno" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputEmail4">Qualification</label>
                    <asp:TextBox ID="qualification" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="inputPassword4">School/College Name </label>
                    <asp:TextBox ID="scname" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-row">
                <!--<div class="form-group col-md-6">
                    <label for="inputEmail4">Adharcard No </label>
                    <asp:TextBox ID="adharno" runat="server" class="form-control"></asp:TextBox>
                </div>-->
                <div class="form-group col-md-6">
                    <label for="inputPassword4"> Date of Birth</label>
                    <asp:TextBox ID="dob" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                </div>


          
            <div class="form-group col-md-6">
                <label for="inputAddress">Address</label>
                <asp:TextBox ID="address" runat="server" class="form-control"></asp:TextBox>
            </div>
            </div>
<div class="form-row">
                <div class="form-group col-md-4">
                    <label for="inputCity">Trainer Name </label>
                    <asp:TextBox ID="trainername" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group col-md-4">
                    <label for="inputCity">Batch Time </label>
                  <asp:DropDownList ID="batchtime" class="form-control  " runat="server" 
                        DataTextField="Batch_time" 
                        DataValueField="Batch_time"  >
                      <asp:ListItem>7.00 am</asp:ListItem>
                      <asp:ListItem>8.00 am</asp:ListItem>
                      <asp:ListItem>9.00 am</asp:ListItem>
                      <asp:ListItem>10.00 am</asp:ListItem>
                      <asp:ListItem>11.00 am</asp:ListItem>
                      <asp:ListItem>12.00 pm</asp:ListItem>
                      <asp:ListItem>1.00 pm</asp:ListItem>
                      <asp:ListItem>2.00 pm</asp:ListItem>
                      <asp:ListItem>3.00 pm</asp:ListItem>
                      <asp:ListItem>4.00 pm</asp:ListItem>
                      <asp:ListItem>5.00 pm</asp:ListItem>
                      <asp:ListItem>6.00 pm</asp:ListItem>
                      <asp:ListItem>7.00 pm</asp:ListItem>
                      <asp:ListItem>8.00 pm</asp:ListItem>
                      <asp:ListItem>9.00 pm</asp:ListItem>
                      <asp:ListItem>10.00 pm</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-md-4">
                    <label for="inputCity">Admission Done By</label>
                  <asp:DropDownList ID="counsellorname" class="form-control  " runat="server" 
                        DataTextField="Counsellor_Name" 
                        DataValueField="Counsellor_Name"  >
                      <asp:ListItem>Vaibhav Badge</asp:ListItem>
                      <asp:ListItem>Moiz Chittalwala</asp:ListItem>
                      <asp:ListItem>Jay Dave</asp:ListItem>
                      <asp:ListItem>Saurabh Dhoot</asp:ListItem>
                      <asp:ListItem>Avi Gupta</asp:ListItem>
                    </asp:DropDownList>
                </div>
               
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="inputCity">Total Fees </label>
                    <asp:TextBox ID="totalfees" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group col-md-4">
                    <label for="inputCity">Paid </label>
                    <asp:TextBox ID="paid" runat="server" class="form-control" 
                        ontextchanged="paid_TextChanged" >
                    </asp:TextBox>
                </div>
                <div class="form-group col-md-4 .col-12">
                    <label for="inputCity">Next Installment Date </label>
                    <asp:TextBox ID="nextinstallmentdate" runat="server" class="form-control" TextMode="Date">
                    </asp:TextBox>
                </div>


            </div>

       <asp:Button ID="Button1" runat="server" class="btn btn-primary" 
                Text="Click Here For Admission" onclick="Button1_Click" Width="100%" />
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:matrixConnectionString2 %>" 
            SelectCommand="SELECT * FROM [addmissionformsecondfloormatrix]"></asp:SqlDataSource>
</form>


 </div>


</body>
</html>