using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    DataSet ds = null;
    StringBuilder sb = new StringBuilder();

    DataSet ds1 = null;
    StringBuilder sb1 = new StringBuilder();

    DataSet ds2 = null;
    StringBuilder sb2 = new StringBuilder();

    DataSet ds3 = null;
    StringBuilder sb3 = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            BindTable();
            BindReviewerTable();
            BindRequestTable();
            BindWriterTable();

        }
        catch (Exception err)
        {
            Response.Write(err.Message);
        }
    }

    public string GetConnectionString()
    {
        return System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;
        //the "ConnStringName" is the name of your Connection String that was set up from the Web.Config


    }
    protected void btnSetting_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserProfile.aspx?username=1");
    }

    public void BindTable()
    {
        try
        {
            ds = GetData();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                sb.Append("<table class='table table-hover dt-responsive nowrap myTable' width='100%' id='EditorTable'>");
                sb.Append("<thead>");
                sb.Append("<tr><th></th>");
                sb.Append("<th scope='col'>Name</th>");
                sb.Append("<th scope='col'>Email</th>");
                sb.Append("<th scope='col'>Medium</th>");
                sb.Append("<th scope='col'>View</th>");
                sb.Append("<th scope='col'>Edit</th>");
                sb.Append("<th scope='col'>Delete</th>");
                sb.Append("</tr>");
                sb.Append("</thead><tbody>");


                //sb.Append("</table>");
                //      sb.Append("<table id='myTable' border='1' cellpadding='0' cellspacing='0' width='100%'>");
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    sb.Append("<tr>");
                    sb.Append("<td>" + Convert.ToString(i + 1) + "</td>");
                    sb.Append("<td>" + Convert.ToString(ds.Tables[0].Rows[i]["EditorName"]) + "</td>");
                    sb.Append("<td>" + Convert.ToString(ds.Tables[0].Rows[i]["EEmailAddress"]) + "</td>");
                    sb.Append("<td>" + Convert.ToString(ds.Tables[0].Rows[i]["EMediumUsername"]) + "</td>");
                    sb.Append("<td><button type='button' class='btnEditorView' EditorId='" + Convert.ToString(ds.Tables[0].Rows[i]["Id"]) + "'>View</button></td>");
                    sb.Append("<td><button type='button' class='btnEditorUpdate' EditorId='" + Convert.ToString(ds.Tables[0].Rows[i]["Id"]) + "'>Update</button></td>");
                    sb.Append("<td><button type='button' class='btnEditorDelete' EditorId='" + Convert.ToString(ds.Tables[0].Rows[i]["Id"]) + "'>Delete</button></td>");

                    sb.Append("</tr>");
                }
                sb.Append("</tbody></table>");
                divEditorGrid.InnerHtml = Convert.ToString(sb);
            }
            else
            {
                Response.Write("NO DATA FOUND");
            }
        }
        catch (Exception err)
        {
            Response.Write(err.Message);
        }
        finally
        {
            if (ds != null)
            {
                ds.Dispose();
            }
        }
    }

    public void BindReviewerTable()
    {
        try
        {
            ds1 = GetReviewerData();
            if (ds1 != null && ds1.Tables.Count > 0 && ds1.Tables[0].Rows.Count > 0)
            {
                sb1.Append("<table class='table table-hover dt-responsive nowrap myTable' width='100%' id='ReviewerTable'>");
                sb1.Append("<thead>");
                sb1.Append("<tr><th></th>");
                sb1.Append("<th>Name</th>");
                sb1.Append("<th>Email</th>");
                sb1.Append("<th>Medium</th>");
                sb1.Append("<th scope='col'>View</th>");
                sb1.Append("<th scope='col'>Edit</th>");
                sb1.Append("<th scope='col'>Delete</th>");

                sb1.Append("</tr>");
                sb1.Append("</thead><tbody>");

                //sb.Append("</table>");
                //      sb.Append("<table id='myTable' border='1' cellpadding='0' cellspacing='0' width='100%'>");
                for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
                {
                    sb1.Append("<tr>");
                    sb1.Append("<td>" + Convert.ToString(i + 1) + "</td>");
                    sb1.Append("<td class='RName'>" + Convert.ToString(ds1.Tables[0].Rows[i]["ReviewerName"]) + "</td>");
                    sb1.Append("<td class='REmail'>" + Convert.ToString(ds1.Tables[0].Rows[i]["REmailAddress"]) + "</td>");
                    sb1.Append("<td class='RMediumUser'>" + Convert.ToString(ds1.Tables[0].Rows[i]["RMediumUsername"]) + "</td>");
                    sb1.Append("<td><button type='button' class='btnView' ReviewerId='" + Convert.ToString(ds1.Tables[0].Rows[i]["Id"]) + "'>View</button></td>");
                    sb1.Append("<td><button type='button' class='btnUpdate' ReviewerId='" + Convert.ToString(ds1.Tables[0].Rows[i]["Id"]) + "'>Update</button></td>");
                    sb1.Append("<td><button type='button' class='btnDelete' ReviewerId='" + Convert.ToString(ds1.Tables[0].Rows[i]["Id"]) + "'>Delete</button></td>");

                    sb1.Append("</tr>");
                }
                sb1.Append("</tbody></table>");
                divReviewGrid.InnerHtml = Convert.ToString(sb1);
            }
            else
            {
                Response.Write("NO DATA FOUND");
            }
        }
        catch (Exception err)
        {
            Response.Write(err.Message);
        }
        finally
        {
            if (ds1 != null)
            {
                ds1.Dispose();
            }
        }
    }

    public void BindRequestTable()
    {
        try
        {
            ds2 = GetRequestData();
            if (ds2 != null && ds2.Tables.Count > 0 && ds2.Tables[0].Rows.Count > 0)
            {
                sb2.Append("<table class='table table-hover dt-responsive nowrap myTable' width='100%' id='RequestTable'>");
                sb2.Append("<thead>");
                sb2.Append("<tr><th></th>");
                sb2.Append("<th>Email</th>");
                sb2.Append("<th>TwitterUsername</th>");
                sb2.Append("<th>MediumUsername</th>");
                sb2.Append("<th scope='col'>View</th>");
                //sb2.Append("<th scope='col'>Edit</th>");
                //sb2.Append("<th scope='col'>Delete</th>");

                sb2.Append("</tr>");
                sb2.Append("</thead><tbody>");

                //sb.Append("</table>");
                //      sb.Append("<table id='myTable' border='1' cellpadding='0' cellspacing='0' width='100%'>");
                for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                {
                    sb2.Append("<tr>");
                    sb2.Append("<td>" + Convert.ToString(i + 1) + "</td>");
                    sb2.Append("<td class='ReqEmail'>" + Convert.ToString(ds2.Tables[0].Rows[i]["Email"]) + "</td>");
                    sb2.Append("<td class='ReqTUserName'>" + Convert.ToString(ds2.Tables[0].Rows[i]["TwitterUsername"]) + "</td>");
                    sb2.Append("<td class='ReqMediumUser'>" + Convert.ToString(ds2.Tables[0].Rows[i]["MediumUsername"]) + "</td>");
                    sb2.Append("<td><button type='button' class='btnRequestView' RequestId='" + Convert.ToString(ds2.Tables[0].Rows[i]["Id"]) + "'>View</button></td>");
                    //sb1.Append("<td><button type='button' class='btnUpdate' ReviewerId='" + Convert.ToString(ds1.Tables[0].Rows[i]["Id"]) + "'>Update</button></td>");
                    //sb1.Append("<td><button type='button' class='btnDelete' ReviewerId='" + Convert.ToString(ds1.Tables[0].Rows[i]["Id"]) + "'>Delete</button></td>");

                    sb2.Append("</tr>");
                }
                sb2.Append("</tbody></table>");
                divRequestGrid.InnerHtml = Convert.ToString(sb2);
            }
            else
            {
                Response.Write("NO DATA FOUND");
            }
        }
        catch (Exception err)
        {
            Response.Write(err.Message);
        }
        finally
        {
            if (ds2 != null)
            {
                ds2.Dispose();
            }
        }
    }

    public void BindWriterTable()
    {
        try
        {
            ds3 = GetWriterData();
            if (ds3 != null && ds3.Tables.Count > 0 && ds3.Tables[0].Rows.Count > 0)
            {
                sb3.Append("<table class='table table-hover dt-responsive nowrap myTable' width='100%' id='WriterTable'>");
                sb3.Append("<thead>");
                sb3.Append("<tr><th></th>");
                sb3.Append("<th>Email</th>");
                sb3.Append("<th>Twitter Username</th>");
                sb3.Append("<th>Medium Username</th>");
                sb3.Append("<th>Joining Date</th>");
                sb3.Append("<th scope='col'>View</th>");
               

                sb3.Append("</tr>");
                sb3.Append("</thead><tbody>");

              
                for (int i = 0; i < ds3.Tables[0].Rows.Count; i++)
                {
                    sb3.Append("<tr>");
                    sb3.Append("<td>" + Convert.ToString(i + 1) + "</td>");
                    sb3.Append("<td class='WriterEmail'>" + Convert.ToString(ds3.Tables[0].Rows[i]["WriterEmail"]) + "</td>");
                    sb3.Append("<td class='WriterTUserName'>" + Convert.ToString(ds3.Tables[0].Rows[i]["WriterTwitterUName"]) + "</td>");
                    sb3.Append("<td class='WriterMediumUser'>" + Convert.ToString(ds3.Tables[0].Rows[i]["WriterMediumUName"]) + "</td>");
                    sb3.Append("<td class='WriterJoiningDate'>" + Convert.ToString(ds3.Tables[0].Rows[i]["JoiningDate"]) + "</td>");
                    sb3.Append("<td><button type='button' class='btnWriterView' WriterId='" + Convert.ToString(ds3.Tables[0].Rows[i]["WriterId"]) + "'>View</button></td>");
                    //sb1.Append("<td><button type='button' class='btnUpdate' ReviewerId='" + Convert.ToString(ds1.Tables[0].Rows[i]["Id"]) + "'>Update</button></td>");
                    //sb1.Append("<td><button type='button' class='btnDelete' ReviewerId='" + Convert.ToString(ds1.Tables[0].Rows[i]["Id"]) + "'>Delete</button></td>");

                    sb3.Append("</tr>");
                }
                sb3.Append("</tbody></table>");
                divWriterGrid.InnerHtml = Convert.ToString(sb3);
            }
            else
            {
                Response.Write("NO DATA FOUND");
            }
        }
        catch (Exception err)
        {
            Response.Write(err.Message);
        }
        finally
        {
            if (ds3 != null)
            {
                ds3.Dispose();
            }
        }
    }
    public DataSet GetData()
    {
        DataSet ds = new DataSet();
        try
        {

            SqlConnection conn = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("sp_ViewEditorDetails", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            conn.Open();
            da.Fill(ds);
            conn.Close();
        }
        catch (Exception err)
        {
            throw err;
        }
        return ds;
    }

    public DataSet GetReviewerData()
    {
        DataSet ds1 = new DataSet();
        try
        {

            SqlConnection conn = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("sp_ViewReviewerDetails", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da1 = new SqlDataAdapter(cmd);

            conn.Open();
            da1.Fill(ds1);
            conn.Close();
        }
        catch (Exception err)
        {
            throw err;
        }
        return ds1;
    }

    public DataSet GetRequestData()
    {
        DataSet ds2 = new DataSet();
        try
        {

            SqlConnection conn = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("sp_ViewRegistrationDetails", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da2 = new SqlDataAdapter(cmd);

            conn.Open();
            da2.Fill(ds2);
            conn.Close();
        }
        catch (Exception err)
        {
            throw err;
        }
        return ds2;
    }

    public DataSet GetWriterData()
    {
        DataSet ds3 = new DataSet();
        try
        {

            SqlConnection conn = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("sp_ViewWriterDetails", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da3 = new SqlDataAdapter(cmd);

            conn.Open();
            da3.Fill(ds3);
            conn.Close();
        }
        catch (Exception err)
        {
            throw err;
        }
        return ds3;
    }

}