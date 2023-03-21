using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace crud_operation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetStudentList();
            }
        }

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-UV0QTH5\SQLEXPRESS;Initial Catalog=crudoperation;Integrated Security=True");

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int StudentID = int.Parse(TextBox1.Text);
            string StudentName = TextBox2.Text;
            string Gender = RadioButtonList1.SelectedValue;
            string Hobby = CheckBoxList1.SelectedValue;
            DateTime DateOfBirth = DateTime.Parse(TextBox3.Text);
            con.Open();
            SqlCommand co = new SqlCommand("exec crudoperation_sp '" + StudentID + "','" + StudentName + "','" + Gender + "','" + Hobby + "','" + DateOfBirth + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Inserted.');", true);
            GetStudentList();
        }

        void GetStudentList()
        {
            SqlCommand co = new SqlCommand("exec crudoperationlist_sp", con);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int StudentID = int.Parse(TextBox1.Text);
            string StudentName = TextBox2.Text;
            string Gender = RadioButtonList1.SelectedValue;
            string Hobby = CheckBoxList1.SelectedValue;
            DateTime DateOfBirth = DateTime.Parse(TextBox3.Text);
            con.Open();
            SqlCommand co = new SqlCommand("exec crudoperationupdate_sp '" + StudentID + "','" + StudentName + "','" + Gender + "','" + Hobby + "','" + DateOfBirth + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Updated.');", true);
            GetStudentList();
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            int StudentID = int.Parse(TextBox1.Text);
            con.Open();
            SqlCommand co = new SqlCommand("exec crudoperationdelete_sp '" + StudentID + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Deleted.');", true);
            GetStudentList();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int StudentID = int.Parse(TextBox1.Text);
            con.Open();
            SqlCommand co = new SqlCommand("exec crudoperationsearch_sp '" + StudentID + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt =new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int StudentID = int.Parse(TextBox1.Text);
            con.Open();
            SqlCommand co = new SqlCommand("exec crudoperationget_sp '" + StudentID + "'", con);
            SqlDataReader r = co.ExecuteReader();
            while (r.Read())
            {
                TextBox2.Text = r.GetValue(1).ToString();
                RadioButtonList1.SelectedValue = r.GetValue(2).ToString();
                CheckBoxList1.SelectedValue=r.GetValue(3).ToString();
                TextBox3.Text = r.GetValue(4).ToString();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            
            con.Open();
            SqlCommand co = new SqlCommand("exec crudoperationascending_sp '" +  "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand co = new SqlCommand("exec crudoperationdescending_sp '" + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

    }
}