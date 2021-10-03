using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Student_Achievement_Management_Info_Sys
{
    public partial class AddStudent : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["StudentManagementSystem"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(connectionString);
            //SqlCommand cmd = new SqlCommand("SELECT * FROM Students", con);
            //con.Open();
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //GridView1.DataSource = ds;
            //GridView1.DataBind();
            //con.Close();
        }

        protected void AddStudentSubmitButton_Click(object sender, EventArgs e)
        {
            if (FirstName.Text == string.Empty || FirstName.Text == string.Empty)
            {
                return;
            }

            SqlConnection con = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand("INSERT INTO Students (Username, FirstName, LastName, Gender, Password, Status) VALUES(@username, @fname, @lname, @gender, @pass, @status)", con);
            cmd.Parameters.AddWithValue("@username", StudentUsername.Text);
            cmd.Parameters.AddWithValue("@fname", FirstName.Text);
            cmd.Parameters.AddWithValue("@lname", LastName.Text);
            cmd.Parameters.AddWithValue("@gender", Gender.Text);
            cmd.Parameters.AddWithValue("@pass", Password.Text);
            cmd.Parameters.AddWithValue("@status", StudentStatus.Text);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            StudentUsername.Text = "";
            FirstName.Text = "";
            LastName.Text = "";
            Gender.Text = "";
            Password.Text = "";
            StudentStatus.Text = "";

            SqlConnection con2 = new SqlConnection(connectionString);
            SqlCommand cmd2 = new SqlCommand("SELECT * FROM Students ORDER BY StudentId DESC", con2);
            con2.Open();
            SqlDataReader reader = cmd2.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con2.Close();

            Label1.Text = "Successful! New Student Added to the Database.";
        }
    }
}