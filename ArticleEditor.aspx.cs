using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ArticleEditor : System.Web.UI.Page
{
    string Editorid;
    protected void Page_Load(object sender, EventArgs e)
    {
        AddFooter.Attributes["class"] = "clsDspNone";
        ViewFooter.Attributes["class"] = "clsDspNone";
        UpdateFooter.Attributes["class"] = "clsDspNone";
        Editorid = Request.QueryString["Eid"];
        string mode = Request.QueryString["mode"];

        if (!IsPostBack)
        {

            if (mode == "add")
            {
                AddFooter.Attributes["class"] = AddFooter.Attributes["class"].Replace("clsDspNone", "clsDspBlock");

            }

            if (mode == "view")
            {
                ViewFooter.Attributes["class"] = ViewFooter.Attributes["class"].Replace("clsDspNone", "clsDspBlock");
                txtEditorName.ReadOnly = true;
                txtEditorEmail.ReadOnly = true;
                txtTwitterHandle.ReadOnly = true;
                txtMediumUsername.ReadOnly = true;
                //chkBrazilian.Enabled = false;
                chkPortuguese.Enabled = false;
                chkEnglish.Enabled = false;
                chkFrench.Enabled = false;
                chkSpanish.Enabled = false;

                using (SqlConnection conn = new SqlConnection(GetConnectionString()))
                {
                    using (SqlCommand cmd = new SqlCommand("sp_ViewEditorDetailsbyEditorId", conn))
                    {
                        cmd.Connection = conn;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(Editorid));
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);

                            foreach (DataRow row in dt.Rows)
                            {
                                txtEditorName.Text = row["EditorName"].ToString();
                                txtEditorEmail.Text = row["EEmailAddress"].ToString();
                                txtTwitterHandle.Text = row["ETwitterHandle"].ToString();
                                txtMediumUsername.Text = row["EMediumUsername"].ToString();
                                if (row["EEnglish"].ToString() == "True")
                                    chkEnglish.Checked = true;
                                else
                                    chkEnglish.Checked = false;
                                if (row["EFrench"].ToString() == "True")
                                    chkFrench.Checked = true;
                                else
                                    chkFrench.Checked = false;
                                if (row["ESpanish"].ToString() == "True")
                                    chkFrench.Checked = true;
                                else
                                    chkFrench.Checked = false;
                                if (row["EPortuguese"].ToString() == "True")
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
                    using (SqlCommand cmd = new SqlCommand("sp_ViewEditorDetailsbyEditorId", conn))
                    {
                        cmd.Connection = conn;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(Editorid));
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            txtEditorName.ReadOnly = true;
                            txtEditorEmail.ReadOnly = true;
                            DataTable dt = new DataTable();
                            sda.Fill(dt);

                            foreach (DataRow row in dt.Rows)
                            {
                                txtEditorName.Text = row["EditorName"].ToString();
                                txtEditorEmail.Text = row["EEmailAddress"].ToString();
                                txtTwitterHandle.Text = row["ETwitterHandle"].ToString();
                                txtMediumUsername.Text = row["EMediumUsername"].ToString();
                                if (row["EEnglish"].ToString() == "True")
                                    chkEnglish.Checked = true;
                                else
                                    chkEnglish.Checked = false;
                                if (row["EFrench"].ToString() == "True")
                                    chkFrench.Checked = true;
                                else
                                    chkFrench.Checked = false;
                                if (row["ESpanish"].ToString() == "True")
                                    chkFrench.Checked = true;
                                else
                                    chkFrench.Checked = false;
                                if (row["EPortuguese"].ToString() == "True")
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
        Response.Redirect("EditorList.aspx");
    }


    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection conn1 = new SqlConnection(GetConnectionString());
        SqlCommand cmd1 = new SqlCommand("sp_UpdateEditorDetails", conn1);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@Id", Convert.ToInt32(Editorid));
        //cmd1.Parameters.AddWithValue("@ReviewerName", txtReviewerName.Text.ToString());
        cmd1.Parameters.AddWithValue("@ETwitterHandle", txtTwitterHandle.Text.ToString());
        cmd1.Parameters.AddWithValue("@EMediumUsername", txtMediumUsername.Text.ToString());
        //  cmd1.Parameters.AddWithValue("@REmailAddress", txtReviewerEmail.Text.ToString());
        if (chkEnglish.Checked == true)
            cmd1.Parameters.AddWithValue("@EEnglish", true);
        else
            cmd1.Parameters.AddWithValue("@EEnglish", false);
        if (chkFrench.Checked == true)
            cmd1.Parameters.AddWithValue("@EFrench", true);
        else
            cmd1.Parameters.AddWithValue("@EFrench", false);
        if (chkSpanish.Checked == true)
            cmd1.Parameters.AddWithValue("@ESpanish", true);
        else
            cmd1.Parameters.AddWithValue("@ESpanish", false);
        if (chkPortuguese.Checked == true)
            cmd1.Parameters.AddWithValue("@EPortuguese", true);
        else
            cmd1.Parameters.AddWithValue("@EPortuguese", false);
        //if (chkBrazilian.Checked == true)
        //    cmd1.Parameters.AddWithValue("@RBrazilian", true);
        //else
        //    cmd1.Parameters.AddWithValue("@RBrazilian", false);

        conn1.Open();
        int k = cmd1.ExecuteNonQuery();
        if (k != 0)
        {
            txtEditorName.Text = "";
            txtEditorEmail.Text = "";
            txtTwitterHandle.Text = "";
            txtMediumUsername.Text = "";
            //chkBrazilian.Checked = false;
            chkPortuguese.Checked = false;
            chkEnglish.Checked = false;
            chkFrench.Checked = false;
            chkSpanish.Checked = false;

            divMsg.InnerText = "Editor updated successfully";

            //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "none",
            //"<script>$('#myModal').modal('show');</script>", false);
            // OpenWindow(sender, e);
        }
        conn1.Close();

        Response.Redirect("EditorList.aspx");
    }

    protected void btnUpdateCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditorList.aspx");
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtEditorName.Text = "";
        txtEditorEmail.Text = "";
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

        string EditorName = txtEditorName.Text;
        string TwitterUsername = txtTwitterHandle.Text;
        string MediumUsername = txtMediumUsername.Text;
        string EditorEmail = txtEditorEmail.Text;
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
        SqlCommand cmd = new SqlCommand("sp_InsertEditorDetails", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@EditorName", EditorName.ToString());
        cmd.Parameters.AddWithValue("@EEmailAddress", EditorEmail.ToString());
        cmd.Parameters.AddWithValue("@ETwitterHandle", TwitterUsername.ToString());
        cmd.Parameters.AddWithValue("@EMediumUsername", MediumUsername.ToString());
        cmd.Parameters.AddWithValue("@EEnglish", CheckEnglish);
        cmd.Parameters.AddWithValue("@EFrench", CheckFrench);
        cmd.Parameters.AddWithValue("@ESpanish", CheckSpanish);
        cmd.Parameters.AddWithValue("@EPortuguese", CheckPortuguese);
  //      cmd.Parameters.AddWithValue("@EBrazilian", false);
        conn.Open();
        int k = cmd.ExecuteNonQuery();
        if (k != 0)
        {
            txtEditorName.Text = "";
            txtEditorEmail.Text = "";
            txtTwitterHandle.Text = "";
            txtMediumUsername.Text = "";
            //chkBrazilian.Checked = false;
            chkPortuguese.Checked = false;
            chkEnglish.Checked = false;
            chkFrench.Checked = false;
            chkSpanish.Checked = false;

            divMsg.InnerText = "Editor added successfully";

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