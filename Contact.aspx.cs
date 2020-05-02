using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String today = DateTime.Now.ToLongDateString().ToString();
        String query = "insert into ContactDetails(FirstName,LastName,EmailId,MobileNo,Message,MessageDate) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + today + "')";
        String mycon = "Data Source=sql5005.site4now.net;Initial Catalog=DB_A5138B_yogesh88;User ID=DB_A5138B_yogesh88_admin;Password=Yogesh88";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label1.Text = "Thanks For Contact Us, We will reach You very Soon.";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}