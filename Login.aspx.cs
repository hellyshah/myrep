using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    string ArticleId;
    protected void Page_Load(object sender, EventArgs e)
    {
        ArticleId = Request.QueryString["Aid"];
        string mode = Request.QueryString["mode"];
        if (!IsPostBack)
        {
            editor.InnerText = "";

            if (mode == "view")
            {               
                

                using (SqlConnection conn = new SqlConnection(GetConnectionString()))
                {
                    using (SqlCommand cmd = new SqlCommand("sp_ViewArticlebyArticleId", conn))
                    {
                        cmd.Connection = conn;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ArticleId", Convert.ToInt32(ArticleId));
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);

                            foreach (DataRow row in dt.Rows)
                            {
                                editor.InnerText = row["ArticleContent"].ToString();
                                title.InnerText = row["ArticleTitle"].ToString();


                            }


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

    protected void btnDashboard_Click(Object sender, EventArgs e)

    {
        Response.Redirect("ArticleList.aspx");
    }

    protected void btnSave_Click(Object sender, EventArgs e)
    {
        string articleText,articleTitle;
        articleText = editor.InnerText;
        articleTitle = title.InnerText;

        SqlConnection conn = new SqlConnection(GetConnectionString());
        SqlCommand cmd = new SqlCommand("sp_InsertArticleDetails", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@ArticleTitle", articleTitle.ToString());
        cmd.Parameters.AddWithValue("@ArticleContent", articleText.ToString());
     //   cmd.Parameters.AddWithValue("@AdditionalFile", null);
        cmd.Parameters.AddWithValue("@WriterId",1);
        cmd.Parameters.AddWithValue("@CreatedDate", DateTime.Now);
        cmd.Parameters.AddWithValue("@LMDate", DateTime.Now);   
        cmd.Parameters.AddWithValue("@Status", "Draft");
        
        conn.Open();
        int k = cmd.ExecuteNonQuery();
        if (k != 0)
        {
            editor.InnerHtml= "";
            title.InnerHtml = "";
            

            divMsg.InnerText = "Article saved successfully";

            //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "none",
            //"<script>$('#myModal').modal('show');</script>", false);
            // OpenWindow(sender, e);
        }
        conn.Close();



    }
    protected void btnClear_Click(Object sender, EventArgs e)

    {
        editor.InnerHtml = "";

    }
}