using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditorList : System.Web.UI.Page
{
    DataSet ds = null;
    StringBuilder sb = new StringBuilder();

    
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            BindTable();
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
   protected void addEditor_Click(Object sender,EventArgs e)
   
    {
        Response.Redirect("ArticleEditor.aspx?mode=add");    
    }

    public void BindTable()
    {
        try
        {
            ds = GetData();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                sb.Append("<table class='table dt-responsive nowrap' width='100 % ' id='myTable'>");
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
                    sb.Append("<td>" + Convert.ToString(i+1)+ "</td>");
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
}  
