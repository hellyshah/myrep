using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string GetConnectionString()
    {
        return System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;
        //the "ConnStringName" is the name of your Connection String that was set up from the Web.Config


    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
        protected void btnSubmit_Click(object sender, EventArgs e)
    {

        string Email = txtemail.Text;
        string TwitterUsername = T_Handle.Text;
        string MediumUsername = M_Username.Text;
        string StoryLink = txtStoryLink.Text;
        string ReasonToJoin = Reason.InnerText;

        SqlConnection conn = new SqlConnection(GetConnectionString());
        SqlCommand cmd = new SqlCommand("sp_InsertRegistrationDetails", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Email", Email);
        cmd.Parameters.AddWithValue("@TwitterUsername", TwitterUsername);
        cmd.Parameters.AddWithValue("@MediumUsername", MediumUsername);
        cmd.Parameters.AddWithValue("@StoryLink", StoryLink);
        cmd.Parameters.AddWithValue("@ReasonToJoin", ReasonToJoin);
        conn.Open();
        int k = cmd.ExecuteNonQuery();
        if (k != 0)
        {
            txtemail.Text = "";
            T_Handle.Text = "";
            M_Username.Text = "";
            txtStoryLink.Text = "";
            Reason.InnerText = "";

            divMsg.InnerText = "Registration Request Successfull";

    //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "none",
    //"<script>$('#myModal').modal('show');</script>", false);
    // OpenWindow(sender, e);
        }
        conn.Close();
    }
    protected void OpenWindow(object sender, EventArgs e)
    {
        string url = "Registration.aspx";
        string s = "window.open('" + url + "', 'popup_window', 'width=300,height=100,left=100,top=100,resizable=yes');";
        ClientScript.RegisterStartupScript(this.GetType(), "Registration Successfull", s, true);
    }

}