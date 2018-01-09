using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ArticleReviewer : System.Web.UI.Page
{
    string Reviewerid;
    protected void Page_Load(object sender, EventArgs e)
    {
        AddFooter.Attributes["class"] = "clsDspNone";
        ViewFooter.Attributes["class"] = "clsDspNone";
        UpdateFooter.Attributes["class"] = "clsDspNone";
        Reviewerid = Request.QueryString["Rid"];
        string mode = Request.QueryString["mode"];
        if (!IsPostBack)
        {
           
            if(mode=="add")
            {
                AddFooter.Attributes["class"] = AddFooter.Attributes["class"].Replace("clsDspNone", "clsDspBlock");

            }

            if (mode == "view")
            {
                ViewFooter.Attributes["class"] = ViewFooter.Attributes["class"].Replace("clsDspNone", "clsDspBlock");
                txtReviewerName.ReadOnly = true;
                txtReviewerEmail.ReadOnly = true;
                txtTwitterHandle.ReadOnly = true;
                txtMediumUsername.ReadOnly = true;
                //chkBrazilian.Enabled = false;
                chkPortuguese.Enabled = false;
                chkEnglish.Enabled = false;
                chkFrench.Enabled = false;
                chkSpanish.Enabled = false;

                using (SqlConnection conn = new SqlConnection(GetConnectionString()))
                {
                    using (SqlCommand cmd = new SqlCommand("sp_ViewReviewerDetailsbyReviewerId", conn))
                    {
                        cmd.Connection = conn;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(Reviewerid));
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);

                            foreach (DataRow row in dt.Rows)
                            {
                                txtReviewerName.Text = row["ReviewerName"].ToString();
                                txtReviewerEmail.Text = row["REmailAddress"].ToString();
                                txtTwitterHandle.Text = row["RTwitterHandle"].ToString();
                                txtMediumUsername.Text = row["RMediumUsername"].ToString();
                                if (row["REnglish"].ToString() == "True")
                                    chkEnglish.Checked = true;
                                else
                                    chkEnglish.Checked = false;
                                if (row["RFrench"].ToString() == "True")
                                    chkFrench.Checked = true;
                                else
                                    chkFrench.Checked = false;
                                if (row["RSpanish"].ToString() == "True")
                                    chkFrench.Checked = true;
                                else
                                    chkFrench.Checked = false;
                                if (row["RPortuguese"].ToString() == "True")
                                    chkPortuguese.Checked = true;
                                else
                                    chkPortuguese.Checked = false;
                                //if (row["RBrazilian"].ToString() == "True")
                                //    chkBrazilian.Checked = true;
                                //else
                                //    chkBrazilian.Checked = false;

                            }


                        }
                    }
                }


            }

            if (mode == "update")
            {
                UpdateFooter.Attributes["class"] = ViewFooter.Attributes["class"].Replace("clsDspNone", "clsDspBlock");
                using (SqlConnection conn = new SqlConnection(GetConnectionString()))
                {
                    using (SqlCommand cmd = new SqlCommand("sp_ViewReviewerDetailsbyReviewerId", conn))
                    {
                        cmd.Connection = conn;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(Reviewerid));
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            txtReviewerName.ReadOnly = true;
                            txtReviewerEmail.ReadOnly = true;
                            DataTable dt = new DataTable();
                            sda.Fill(dt);

                            foreach (DataRow row in dt.Rows)
                            {
                                txtReviewerName.Text = row["ReviewerName"].ToString();
                                txtReviewerEmail.Text = row["REmailAddress"].ToString();
                                txtTwitterHandle.Text = row["RTwitterHandle"].ToString();
                                txtMediumUsername.Text = row["RMediumUsername"].ToString();
                                if (row["REnglish"].ToString() == "True")
                                    chkEnglish.Checked = true;
                                else
                                    chkEnglish.Checked = false;
                                if (row["RFrench"].ToString() == "True")
                                    chkFrench.Checked = true;
                                else
                                    chkFrench.Checked = false;
                                if (row["RSpanish"].ToString() == "True")
                                    chkFrench.Checked = true;
                                else
                                    chkFrench.Checked = false;
                                if (row["RPortuguese"].ToString() == "True")
                                    chkPortuguese.Checked = true;
                                else
                                    chkPortuguese.Checked = false;
                                //if (row["RBrazilian"].ToString() == "True")
                                //    chkBrazilian.Checked = true;
                                //else
                                //    chkBrazilian.Checked = false;

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

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReviewerList.aspx");
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection conn1 = new SqlConnection(GetConnectionString());
        SqlCommand cmd1 = new SqlCommand("sp_UpdateReviewerDetails", conn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@Id", Convert.ToInt32(Reviewerid));
        //cmd1.Parameters.AddWithValue("@ReviewerName", txtReviewerName.Text.ToString());
        cmd1.Parameters.AddWithValue("@RTwitterHandle", txtTwitterHandle.Text.ToString());
        cmd1.Parameters.AddWithValue("@RMediumUsername", txtMediumUsername.Text.ToString());
        //  cmd1.Parameters.AddWithValue("@REmailAddress", txtReviewerEmail.Text.ToString());
        if (chkEnglish.Checked == true)
            cmd1.Parameters.AddWithValue("@REnglish", true);
        else
            cmd1.Parameters.AddWithValue("@REnglish", false);
        if (chkFrench.Checked == true)
            cmd1.Parameters.AddWithValue("@RFrench", true);
        else
            cmd1.Parameters.AddWithValue("@RFrench", false);
        if (chkSpanish.Checked == true)
            cmd1.Parameters.AddWithValue("@RSpanish", true);
        else
            cmd1.Parameters.AddWithValue("@RSpanish", false);
        if (chkPortuguese.Checked == true)
            cmd1.Parameters.AddWithValue("@RPortuguese", true);
        else
            cmd1.Parameters.AddWithValue("@RPortuguese", false);
        //if (chkBrazilian.Checked == true)
        //    cmd1.Parameters.AddWithValue("@RBrazilian", true);
        //else
        //    cmd1.Parameters.AddWithValue("@RBrazilian", false);

        conn1.Open();
        int k = cmd1.ExecuteNonQuery();
        if (k != 0)
        {
            txtReviewerName.Text = "";
            txtReviewerEmail.Text = "";
            txtTwitterHandle.Text = "";
            txtMediumUsername.Text = "";
            //chkBrazilian.Checked = false;
            chkPortuguese.Checked = false;
            chkEnglish.Checked = false;
            chkFrench.Checked = false;
            chkSpanish.Checked = false;

            divMsg.InnerText = "Reviewer updated successfully";

            //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "none",
            //"<script>$('#myModal').modal('show');</script>", false);
            // OpenWindow(sender, e);
        }
        conn1.Close();
    
    Response.Redirect("ReviewerList.aspx");
    }
    protected void btnUpdateCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReviewerList.aspx");
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtReviewerName.Text = "";
        txtReviewerEmail.Text = "";
        txtTwitterHandle.Text = "";
        txtMediumUsername.Text = "";
        //chkBrazilian.Checked = false;
        chkPortuguese.Checked = false;
        chkEnglish.Checked = false;
        chkFrench.Checked = false;
        chkSpanish.Checked = false;
    }
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        string ReviewerName = txtReviewerName.Text;
        string ReviewerEmail = txtReviewerEmail.Text;
        string TwitterUsername = txtTwitterHandle.Text;
        string MediumUsername = txtMediumUsername.Text;
        bool CheckEnglish = false, CheckFrench = false, CheckSpanish = false, CheckPortuguese = false, CheckBrazilian = false;
        //if english checkbox is selected
        if (chkEnglish.Checked)
            CheckEnglish = true;
        else
            CheckEnglish = false;

        //if french checkbox is selected
        if (chkFrench.Checked)
            CheckFrench = true;
        else
            CheckFrench = false;

        //if spanish checkbox is selected
        if (chkSpanish.Checked)
            CheckSpanish = true;
        else
            CheckSpanish = false;

        //if portuguese checkbox is selected
        if (chkPortuguese.Checked)
            CheckPortuguese = true;
        else
            CheckPortuguese = false;

        //if brazilian checkbox is selected
        //if (chkBrazilian.Checked)
        //    CheckBrazilian = true;
        //else
        //    CheckBrazilian = false;



        SqlConnection conn = new SqlConnection(GetConnectionString());
        SqlCommand cmd = new SqlCommand("sp_InsertReviewerDetails", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@ReviewerName", ReviewerName);
        cmd.Parameters.AddWithValue("@RTwitterHandle", TwitterUsername);
        cmd.Parameters.AddWithValue("@RMediumUsername", MediumUsername);
        cmd.Parameters.AddWithValue("@REmailAddress", ReviewerEmail);
        cmd.Parameters.AddWithValue("@REnglish", CheckEnglish);
        cmd.Parameters.AddWithValue("@RFrench", CheckFrench);
        cmd.Parameters.AddWithValue("@RSpanish", CheckSpanish);
        cmd.Parameters.AddWithValue("@RPortuguese", CheckPortuguese);
        cmd.Parameters.AddWithValue("@RBrazilian", false);
        conn.Open();
        int k = cmd.ExecuteNonQuery();
       
            txtReviewerName.Text = "";
            txtReviewerEmail.Text = "";
            txtTwitterHandle.Text = "";
            txtMediumUsername.Text = "";
            //chkBrazilian.Checked = false;
            chkPortuguese.Checked = false;
            chkEnglish.Checked = false;
            chkFrench.Checked = false;
            chkSpanish.Checked = false;

            divMsg.InnerText = "Reviewer added successfully";

            //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "none",
            //"<script>$('#myModal').modal('show');</script>", false);
            // OpenWindow(sender, e);
        
        conn.Close();
    }
    protected void OpenWindow(object sender, EventArgs e)
    {
        string url = "Registration.aspx";
        string s = "window.open('" + url + "', 'popup_window', 'width=300,height=100,left=100,top=100,resizable=yes');";
        ClientScript.RegisterStartupScript(this.GetType(), "Registration Successfull", s, true);
    }


}