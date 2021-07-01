using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Moiz\\Documents\\ManagementDb.mdf;Integrated Security=True;Connect Timeout=30";


        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select * from login";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String uname;
        String pass;
        uname = ds.Tables[0].Rows[0]["username"].ToString();
        pass = ds.Tables[0].Rows[0]["password"].ToString();


        scon.Close();

        if (uname == TextBox1.Text && pass == TextBox2.Text)
        {
            Session["username"] = uname;
            Response.Redirect("Dashboard1.aspx");




        }
        else
        {
           

            TextBox2.Text = string.Empty;
            TextBox1.Text = string.Empty;

        }


    }


}