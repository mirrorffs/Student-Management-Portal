using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class MarkAttendance : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Moiz\\Documents\\ManagementDb.mdf;Integrated Security=True"));

    SqlCommand com;
    string str = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "Mark Attendance for " + DateTime.Now.ToShortDateString();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            String rollno = row.Cells[0].Text;
            string course = row.Cells[1].Text;
            String studentname1 = row.Cells[2].Text;
            RadioButton rbtn1 = (row.Cells[3].FindControl("RadioButton1") as RadioButton);
            RadioButton rbtn2 = (row.Cells[3].FindControl("RadioButton2") as RadioButton);
            String status1;
            if (rbtn1.Checked)
            {
                status1 = "Present";

            }
            else
            {
                status1 = "Absent";
            }
            DateTime now = DateTime.Now;

            String time = DateTime.Now.ToString("dd/MM/yyyy");
            String dateofclass1 = DateTime.Now.ToShortDateString();
            String month = DateTime.Now.ToString("MM/yyyy");
            String sbatch = DropDownList1.SelectedItem.Text;
            saveattendance(rollno, time, course, studentname1, dateofclass1, status1, sbatch, month);
        }

    }
    private void saveattendance(String rollno, String time, String course, String studentname, String dateofclass1, String status, String sbatch, String month)
    {

        con.Open();
        str = "select count (*)  from record where Date_of_marked='" + time + "'";
        com = new SqlCommand(str, con);
        int count = Convert.ToInt32(com.ExecuteScalar());
        con.Close();

        if (count > 0)
        {

            string message2 = "This Batch Already Marked Attendance ";
            string script = "window.onload=function(){ alert('";
            script += message2;
            script += "');";
            script += "window.location='";
            script += Request.Url.AbsoluteUri;
            script += "';}";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }
        else
        {



            String query = "insert into record(srollno,Date_of_marked,Course,studentname,dateofclass,attendancestatus,Batch_time,month) values('" + rollno + "','" + time + "','" + course + "','" + studentname + "','" + dateofclass1 + "','" + status + "','" + sbatch + "','" + month + "')";
            String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Moiz\\Documents\\ManagementDb.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(mycon);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            string message = "Attendance Marked Successfully";
            string script = "window.onload=function(){ alert('";
            script += message;
            script += "');";
            script += "window.location='";
            script += Request.Url.AbsoluteUri;
            script += "';}";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            cmd.CommandText = query;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();

        }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {


    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
}