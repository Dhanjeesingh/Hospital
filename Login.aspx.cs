using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Patient.mdf;Integrated Security=True");
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         //Chcck id and password
        try
        {
            conn.Close();
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from login";
            SqlDataReader dr = cmd.ExecuteReader();
            int f=0;
            while (dr.Read())
            {
                if(dr.GetValue(0).ToString().Equals(TextBox1.Text))
                {
                    if(dr.GetValue(1).ToString().Equals(TextBox2.Text))
                    {
                        f=1;
                        break;
                    }
                }
               
            }
            if (f == 0)
            {
                Response.Write("<script>alert('Either id or password is wrong')</script>");
            }
             else
            {
                Response.Write("<script>window.open('Menu.aspx','_self')</script>");
            }
         }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }

}
