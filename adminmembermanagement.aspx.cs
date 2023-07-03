using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLIBRARY
{
    public partial class adminmembermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            getMemberById();
        }
        //delete member 
        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (checkIfMemberExists())
            {
                deleteMember();
            }
            else
            {
                Response.Write("<script>alert('Member IS NOT PRESENT WITH THIS ID');</script>");

            }
        }
        //user defined functions
        void deleteMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from member_master_tb1 WHERE member_id='" + TextBox1.Text.Trim() + "'", con);




                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member deleted succesfully');</script>");
               
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tb1 where member_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            return false;
        }   
        void getMemberById()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tb1 where member_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                TextBox2.Text = dt.Rows[0]["full_name"].ToString();
                TextBox7.Text = dt.Rows[0]["account_status"].ToString();
                TextBox3.Text = dt.Rows[0]["dob"].ToString();
                TextBox4.Text = dt.Rows[0]["contact_no"].ToString();
                TextBox8.Text = dt.Rows[0]["email"].ToString();
                TextBox5.Text = dt.Rows[0]["state"].ToString();
                TextBox6.Text = dt.Rows[0]["city"].ToString();
                TextBox9.Text = dt.Rows[0]["pincode"].ToString();
                TextBox10.Text = dt.Rows[0]["full_address"].ToString();

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }

        
    }
}