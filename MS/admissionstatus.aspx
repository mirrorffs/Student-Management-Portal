<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admissionstatus.aspx.cs" Inherits="admissionstatus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <style>
    .form-control {
    
    padding: 1px 1px 3px 5px;
}
#Button2
{
       margin-left: 15px;
    margin-top: 39px;
}
.img-fluid {
    /* max-width: 100%; */
    height: 100px;
    width: 351px;
}.mb-4, .my-4 {
    margin-bottom: 0.5rem!important;
}

.mt-4, .my-4 {
    margin-top: -1.5rem!important;
}
    </style>
    <title>Matrix Control Panel</title>
  
</head>
<body>
    
 <form id="form1" runat="server">
    <div class="jumbotron">
    <!--<img src="images/m33.jpg" class="img-fluid mx-auto my-4 d-block" alt="Responsive image" 
        height="200px" width="200px" align="middle" >--><h2 style="text-align:center">Batchwise Record</h2><hr>

    <br />
    <br />
    <br />
    <br />

  <h5>Select Batch Time</h5>

    <asp:DropDownList ID="DropDownList1" class="form-control " runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="batchtime" 
        DataValueField="batchtime" Font-Size="18pt" Height="42px" Width="171px">
    </asp:DropDownList>
 <br />
   
  <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" 
          Text="Search"  onclick="Button1_Click" />
 </div>
 <asp:GridView ID="GridView1"  Class="table" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
        DataSourceID="SqlDataSource1" Visible="False">
        <Columns>
            <asp:BoundField DataField="srollno" HeaderText="Student ID" 
                SortExpression="srollno" />
            <asp:BoundField DataField="dateofjoining" HeaderText="Date_of_joining" 
                SortExpression="dateofjoining" />
            <asp:BoundField DataField="studentname" HeaderText="Student Name" 
                SortExpression="studentname" />
            <asp:BoundField DataField="coursename" HeaderText="Course" 
                SortExpression="coursename" />
            <asp:BoundField DataField="contactno" HeaderText="Contact No" 
                SortExpression="contactno" />
            <asp:BoundField DataField="trainername" HeaderText="Trainer Name" 
                SortExpression="trainername" />
            <asp:BoundField DataField="batchtime" HeaderText="Batch_time" 
                SortExpression="batchtime" />
            
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ManagementDb2 %>" 
        
        
        SelectCommand="SELECT [srollno], [dateofjoining], [studentname], [coursename], [contactno], [trainername], [batchtime]FROM [admissionform] WHERE ([batchtime] = @batchtime)" 
       >
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="batchtime" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ManagementDb3 %>" 
        
        SelectCommand="SELECT DISTINCT [batchtime] FROM [admissionform]">
    </asp:SqlDataSource>
    
    </form>
</body>
</html>
