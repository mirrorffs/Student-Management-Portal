using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class AdmissionForm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Moiz\\Documents\\ManagementDb.mdf;Integrated Security=True;Connect Timeout=30"));
    SqlCommand com;
    string str = null;
    String remaining = null;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();


        str = "select count(*) from admissionform where studentname='" + studentname.Text + "'";
        com = new SqlCommand(str, con);
        int count = Convert.ToInt32(com.ExecuteScalar());
        con.Close();

        if (count > 0)
        {

            string message2 = "Form not Submitted ." + studentname.Text + " Already Exist Submit Another Name";
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


            String time = DateTime.Now.ToLocalTime().ToString();




            SqlCommand cmd = new SqlCommand(" insert into admissionform(studentname,dateofjoining,coursename,contactno,qualification,scname,dob,address,trainername,batchtime,counsellorname,totalfees,paid,nextinstallmentdate,remainingfee,time) values('" + studentname.Text + "','" + dateofjoining.Text + "','" + coursename.Text + "','" + contactno.Text + "','" + qualification.Text + "','" + scname.Text + "','" + dob.Text + "','" + address.Text + "','" + trainername.Text + "','" + batchtime.Text + "','" + counsellorname.Text + "','" + totalfees.Text + "','" + paid.Text + "','" + nextinstallmentdate.Text + "','" + remaining + "','" + time + "')", con);
            SqlCommand cmd2 = new SqlCommand(" insert into attendance(course,Studentname,batchtime) values('" + coursename.Text + "','" + studentname.Text + "','" + batchtime.Text + "')", con);
            /* SqlCommand cmd3 = new SqlCommand(" insert into InstallmentKrishna(studentname,dateofjoining,coursename,contactno,batchtime,totalfees,paid,nextinstallmentdate,remainingfee) values('" + studentname.Text + "','" + dateofjoining.Text + "','" + coursename.Text + "','" + contactno.Text + "','" + batchtime.Text + "','" + totalfees.Text + "','" + paid.Text + "','" + nextinstallmentdate.Text + "','" + remaining + "')", con);*/
            string message = "your details have been saved successfully";
            string script2 = "window.onload=function(){ alert('";
            script2 += message;
            script2 += "');";
            script2 += "window.location='";
            script2 += Request.Url.AbsoluteUri;
            script2 += "';}";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script2, true);
            con.Open();
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            //cmd3.ExecuteNonQuery();
            // SqlDataSource1.DataBind();
            con.Close();

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        studentname.Text = string.Empty;
        batchtime.Text = string.Empty;
        dateofjoining.Text = string.Empty;
        coursename.Text = string.Empty;
        contactno.Text = string.Empty;
        qualification.Text = string.Empty;
        scname.Text = string.Empty;
        dob.Text = string.Empty;
        address.Text = string.Empty;
        trainername.Text = string.Empty;


        totalfees.Text = string.Empty;
        paid.Text = string.Empty;
        nextinstallmentdate.Text = string.Empty;

    }
    protected void paid_TextChanged(object sender, EventArgs e)
    {


        try
        {
            remaining = (float.Parse(totalfees.Text) - float.Parse(paid.Text)).ToString();

        }
        catch
        {

        }
    }

}


