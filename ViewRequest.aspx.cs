using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewRequest : System.Web.UI.Page
{
    string RequestId;
    string ReqEmail, ReqTwitter, ReqMedium, ReqStory, ReqReason;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        ViewFooter.Attributes["class"] = "clsDspNone";
       
        RequestId = Request.QueryString["Rid"];
        string mode = Request.QueryString["mode"];


          

            if (mode == "view")
            {
                ViewFooter.Attributes["class"] = ViewFooter.Attributes["class"].Replace("clsDspNone", "clsDspBlock");
                txtRequestEmail.ReadOnly = true;              
                txtTwitterHandle.ReadOnly = true;
                txtMediumUsername.ReadOnly = true;
                txtStoryLink.ReadOnly = true;
                txtReason.Disabled = true;
              

                using (SqlConnection conn = new SqlConnection(GetConnectionString()))
                {
                    using (SqlCommand cmd = new SqlCommand("sp_ViewRegistrationDetailsbyUserId", conn))
                    {
                        cmd.Connection = conn;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(RequestId));
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);

                            foreach (DataRow row in dt.Rows)
                            {
                                ReqEmail= row["Email"].ToString();
                                ReqTwitter= row["TwitterUsername"].ToString();
                                ReqMedium= row["MediumUsername"].ToString();
                                ReqStory = row["StoryLink"].ToString();
                                ReqReason= row["ReasonToJoin"].ToString();

                                txtRequestEmail.Text = row["Email"].ToString();                                
                                txtTwitterHandle.Text = row["TwitterUsername"].ToString();
                                txtMediumUsername.Text = row["MediumUsername"].ToString();
                                txtStoryLink.Text= row["StoryLink"].ToString();
                                txtReason.InnerHtml = row["ReasonToJoin"].ToString();

                            }


                        }
                    }
                }


            }

            
        
    }
    public string GetConnectionString()
    {
        return System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;
        //the "ConnStringName" is the name of your Connection String that was set up from the Web.Config


    }
    protected void btnAccept_Click(object sender, EventArgs e)
    {
        SqlConnection conn1 = new SqlConnection(GetConnectionString());
        SqlCommand cmd1 = new SqlCommand("sp_AcceptRegistration", conn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@Id", Convert.ToInt32(RequestId));
        conn1.Open();
        int k = cmd1.ExecuteNonQuery();
        if (k != 0)
        {
            //txtRequestEmail.Text = ReqEmail;
            //txtTwitterHandle.Text = ReqTwitter;
            //txtMediumUsername.Text = ReqMedium;
            //txtStoryLink.Text = ReqStory;
            //txtReason.InnerHtml = ReqReason;



            SqlConnection conn = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("sp_InsertWriterDetails", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@WriterEmail", ReqEmail.ToString());           
            cmd.Parameters.AddWithValue("@WriterTwitterUName", ReqTwitter.ToString());
            cmd.Parameters.AddWithValue("@WriterMediumUName", ReqMedium.ToString());
            cmd.Parameters.AddWithValue("@JoiningDate", Convert.ToDateTime( DateTime.Now));
            
            conn.Open();
            int r = cmd.ExecuteNonQuery();
            if (r != 0)
            {
                
            }
            conn.Close();

        }
        conn1.Close();
        Response.Redirect("Home.aspx");
    }

    protected void btnReject_Click(object sender, EventArgs e)
    {
        SqlConnection conn1 = new SqlConnection(GetConnectionString());
        SqlCommand cmd1 = new SqlCommand("sp_RejectRegistration", conn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@Id", Convert.ToInt32(RequestId));
        conn1.Open();
        int k = cmd1.ExecuteNonQuery();
        if (k != 0)
        {
        }
        conn1.Close();
        Response.Redirect("Home.aspx");
        
    }


   

    protected void btnUpdateCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditorList.aspx");
    }
   
   
    protected void OpenWindow(object sender, EventArgs e)
    {
        string url = "Registration.aspx";
        string s = "window.open('" + url + "', 'popup_window', 'width=300,height=100,left=100,top=100,resizable=yes');";
        ClientScript.RegisterStartupScript(this.GetType(), "Registration Successfull", s, true);
    }
}