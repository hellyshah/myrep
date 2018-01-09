using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditorProfile : System.Web.UI.Page
{
    string userId;
    public string GetConnectionString()
    {
        return System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;
        //the "ConnStringName" is the name of your Connection String that was set up from the Web.Config


    }
    protected void Page_Load(object sender, EventArgs e)
    {
        userId = Request["userid"];

        string email = "", twitter_username = "", medium_username = "";

        if (!this.IsPostBack)
        {

            using (SqlConnection conn = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand("sp_ViewRegistrationDetailsbyUserId", conn))
                {
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(userId));
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                        foreach (DataRow row in dt.Rows)
                        {
                            email = row["Email"].ToString();
                            twitter_username = row["TwitterUsername"].ToString();
                            medium_username = row["MediumUsername"].ToString();

                        }

                        txtemail.Text = email;
                        T_Handle.Text = twitter_username;
                        M_Username.Text = medium_username;
                    }
                }
            }
        }



    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        divHead.InnerText = "Edit Your Profile";
        T_Handle.ReadOnly = false;
        M_Username.ReadOnly = false;
        divView.Style.Add("display", "none");
        divEdit.Style.Add("display", "block");

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string Email = txtemail.Text;
        string TwitterUsername = T_Handle.Text;
        string MediumUsername = M_Username.Text;
        int userid = 1;

        SqlConnection conn = new SqlConnection(GetConnectionString());
        SqlCommand cmd = new SqlCommand("sp_UpdateRegistrationDetails", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@TwitterUsername", TwitterUsername);
        cmd.Parameters.AddWithValue("@MediumUsername", MediumUsername);
        cmd.Parameters.AddWithValue("@Id", userid);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }
    protected void btnClose_Click(object sender, EventArgs e)
    {
        txtemail.Text = "";
        T_Handle.Text = "";
        M_Username.Text = "";
        Response.Redirect("Editor.aspx");
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(GetConnectionString());
        SqlCommand cmd = new SqlCommand("sp_DeleteRegistrationDetails", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", userId);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("Registration.aspx");
    }
}