<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MarkAttendance.aspx.cs" Inherits="MarkAttendance" %>

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
    <img src="images/m33.jpg" class="img-fluid mx-auto my-4 d-block" alt="Responsive image" 
        height="200px" width="200px" align="middle" ><h2 style="text-align:center">Student Attendance </h2><h6 style="text-align:center">Branch Name : Krishna</h6> <hr>

  <h5>Select Batch Time</h5><asp:DropDownList ID="DropDownList1" class="form-control " runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="batchtime" 
                        DataValueField="batchtime" Font-Size="17pt" Height="39px" Width="150px">
                    </asp:DropDownList>
  <p class="lead">Select Proper Batch Timing and Before Marking Attendance Check All Student Name Data Display Or Not or Else Contact to Management </p>
  <hr >
 <asp:Button ID="Button1" class="btn btn-primary btn-lg" onclick="Button1_Click"   runat="server" Text="Mark Attendance"/>
  
</div>
<asp:Label ID="Label3" runat="server" Font-Size="20pt"></asp:Label><hr />
  <asp:GridView Class="table" ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1" Height="16px" 
            AllowPaging="True">
            <Columns>
             <asp:BoundField DataField="srollno" HeaderText="ID" 
                    SortExpression="srollno" />
               <asp:BoundField DataField="course" HeaderText="Course" 
                    SortExpression="course" />
                <asp:BoundField DataField="Studentname" HeaderText="Student Name" 
                    SortExpression="studentname"  />
                <asp:TemplateField HeaderText="Mark Attendance">
                    <ItemTemplate>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Present" 
                            GroupName="g1" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Absent" 
                            GroupName="g1" />
                    </ItemTemplate>
                    <ControlStyle Font-Size="8pt" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:Button ID="Button2"  class="btn btn-primary btn-lg" runat="server" onclick="Button2_Click" 
            Text="Save Attendance" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server"></asp:Label>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ManagementDb4 %>" 
            
            
            SelectCommand="SELECT  [srollno], [Course], [Studentname] FROM [attendance] WHERE ([batchtime] = @batchtime)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="batchtime" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ManagementDb5 %>" 
            
            
            SelectCommand="SELECT DISTINCT [batchtime] FROM [attendance]">
        </asp:SqlDataSource>
    </form>
</body>
</html>
